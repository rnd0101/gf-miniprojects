#!usr/bin/python3
# -*- coding: utf-8 -*-

"""
- read lexicons
- write grammar files with templates
"""
import glob
import os
import re
import sys

SECTION_RE = re.compile("^\s+-- --\s+([A-Za-z0-9]+)\s([A-Za-z0-9]+)\s+-- --\s+$")
ASSIGN_RE = re.compile("^\s*([a-zA-Z0-9_]+)(\s*=\s*.+;)\s*$")
TYPE_RE = re.compile("^\s*([a-zA-Z0-9_]+)(\s*:\s*.+;)\s*$")


def parse_parts(file_path, re_pattern):
    """Parse file to internal data structure"""
    declarations = {}
    current_category = None
    current_type = None
    with open(file_path, encoding="utf-8") as grammar_file:
        for line in grammar_file:
            m = SECTION_RE.match(line)
            if m:
                category, section_type = [g.upper() for g in m.groups()]
                if category == "END":
                    break
                declarations.setdefault(section_type, {}).setdefault(category, {})
                current_category = category
                current_type = section_type
                continue
            if not current_category or not current_type:
                continue
            m = re_pattern.match(line)
            if m:
                lhs, rhs = m.groups()
                declarations[current_type][current_category][lhs] = rhs

    return declarations


def paths(abs_path):
    """Given main abstract grammar path, return all others."""
    filename, file_extension = os.path.splitext(abs_path)
    dirname = os.path.dirname(abs_path)
    basename = os.path.basename(filename)
    glob_pattern = 'Lex{}???{}'.format(basename, file_extension)
    lexicons = [os.path.join(dirname, fn) for fn in glob.glob(glob_pattern)]
    lexicon_i = os.path.join(dirname, 'Lex{}{}'.format(basename, file_extension))
    abstract_i = os.path.join(dirname, '{}I{}'.format(basename, file_extension))

    lexicon_i_template = os.path.join(dirname, 'Lex{}{}'.format(basename, ".tpl"))
    abstract_i_template = os.path.join(dirname, '{}I{}'.format(basename, ".tpl"))
    abstract_template = os.path.join(dirname, '{}{}'.format(basename, ".tpl"))
    return abstract_i, lexicon_i, lexicons, abstract_i_template, lexicon_i_template, abstract_template


def generate_lex_abs(lexicon_structs):
    common_lex = {}
    for lex in lexicon_structs:
        for gr_cat, gr_cat_entries in lex["LEXICON"].items():
            for key, entry in gr_cat_entries.items():
                if key.endswith("_" + gr_cat):
                    common_lex.setdefault(gr_cat, {})[key] = " : {} ;".format(gr_cat)

    return common_lex


mapping = {
    "V2": ("Action", " = {} ;", ""),
    "N": ("Kind", " = mkCN {} ;", "A"),  # TODO: Also An
    "A": ("Property", " = mkAP {} ;", "Prop"),
}


def lex_item_to_abs_item(lex_item, gr_cat, existing):
    abs_item = lex_item.split("_", 1)[0].capitalize()
    if abs_item in existing:
        abs_item = mapping[gr_cat][2] + abs_item
    return abs_item, mapping[gr_cat][1].format(lex_item)


def generate_abs(lex_abs):
    existing = set()
    abs_i = {}
    abs = {}
    for gr_cat, gr_cat_entries in lex_abs.items():
        for lex_item, _type in gr_cat_entries.items():
            abs_item, abs_rhs = lex_item_to_abs_item(lex_item, gr_cat, existing)
            existing.add(abs_item)
            abs_i.setdefault(mapping[gr_cat][0], {})[abs_item] = "{}".format(abs_rhs)
            abs.setdefault(mapping[gr_cat][0], {})[abs_item] = " : {} ;".format(mapping[gr_cat][0])
    return abs_i, abs


def entry_to_str(entries):
    return "\n".join("    {}{}".format(key, entry) for key, entry in entries.items())


def output_lex_abs(lex_abs):
    lines = "\n\n".join(entry_to_str(entries) for section, entries in lex_abs.items())
    return lines


def output_abs_i(lex_abs):
    lines = "\n\n".join(entry_to_str(entries) for section, entries in lex_abs.items())
    return lines


def output_abs(lex_abs):
    lines = "\n\n".join(entry_to_str(entries) for section, entries in lex_abs.items())
    return lines


def main(abs_grammar_path):
    abstract_i, lexicon_i, lexicons, abstract_i_template, lexicon_i_template, abstract_template = paths(
        abs_grammar_path)
    abstract_i_struct = parse_parts(abstract_i, re_pattern=ASSIGN_RE)
    lexicon_i_struct = parse_parts(lexicon_i, re_pattern=TYPE_RE)
    lexicon_structs = [parse_parts(lex, re_pattern=ASSIGN_RE) for lex in lexicons]

    lex_abs = generate_lex_abs(lexicon_structs)
    abs_i, abs = generate_abs(lex_abs)

    lex_abs_out = output_lex_abs(lex_abs)
    lex_i_contents = open(lexicon_i_template, "r").read().replace("{ENTRIES}", lex_abs_out)
    with open(lexicon_i, "w", encoding="utf-8") as fh:
        fh.write(lex_i_contents)

    abs_i_out = output_abs_i(abs_i)
    abs_i_contents = open(abstract_i_template, "r").read().replace("{ENTRIES}", abs_i_out)
    with open(abstract_i, "w", encoding="utf-8") as fh:
        fh.write(abs_i_contents)

    abs_out = output_abs(abs)
    abs_contents = open(abstract_template, "r").read().replace("{ENTRIES}", abs_out)
    with open(abs_grammar_path, "w", encoding="utf-8") as fh:
        fh.write(abs_contents)


if __name__ == "__main__":
    abs_grammar_path = sys.argv[1]
    main(abs_grammar_path)
