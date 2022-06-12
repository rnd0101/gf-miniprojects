#!/usr/bin/python3
# -*- coding: utf-8 -*-
"""
Hints taken from: http://www.grammaticalframework.org/doc/python-api.html
"""

import os
import sys

import pgf

PORTABLE_GRAMMAR_FILE = __file__.replace(".py", ".pgf").capitalize()
TYPICAL_PHRASES_FILE = __file__.replace("crud.py", "typical_phrases.txt")

crud_gr = pgf.readPGF(PORTABLE_GRAMMAR_FILE)


def read_gf(filepath):
    return pgf.readPGF(filepath)


if __name__ == "__main__":
    print("Showcase:")

    print("Making pgf")
    os.system("gf --make CrudRus.gf CrudFin.gf CrudEng.gf ")

    gr = read_gf(PORTABLE_GRAMMAR_FILE)

    print("Languages: {}".format(", ".join(gr.languages.keys())))

    eng = gr.languages["CrudEng"]
    fin = gr.languages["CrudFin"]
    rus = gr.languages["CrudRus"]

    PARSE_EXAMPLE = u"штука получилась ."
    print(u"Parse: {}".format(PARSE_EXAMPLE))
    parse_iter = rus.parse(PARSE_EXAMPLE)
    expr = [k for k in parse_iter][0][1]

    expr_str = str(expr)
    e = pgf.readExpr(expr_str)

    print(u"Linearized: {}".format(eng.linearize(e)))

    PARSE_EXAMPLE_2 = u"штука получилась"
    print(u"Parse: {}".format(PARSE_EXAMPLE_2))
    try:
        parse_iter = rus.parse(PARSE_EXAMPLE_2)
    except pgf.ParseError as x:
        print("expected ERROR: {}".format(x))

    print("Lexicons")
    for lang in eng, fin, rus:
        print("\n{}\n".format(lang.name))
        print(", ".join(entry[0] for entry in lang.fullFormLexicon()))

    print("")
    MORPHO_EXAMPLE = "связанен"  # * This is not right spelling
    print("Lookup morphology")
    print(rus.lookupMorpho(MORPHO_EXAMPLE))

    print("")
    print("Categories: {}".format(", ".join(f for f in gr.categories)))
    print("Functions: {}".format(", ".join(f for f in gr.functions)))

    print("")
    print("Func by cat Kind: {}".format(", ".join(f for f in gr.functionsByCat("Kind"))))

    print("")
    try:
        file_path = sys.argv[1]
    except:
        file_path = TYPICAL_PHRASES_FILE
    successful_cnt = total_cnt = 0
    for line in open(file_path).readlines():
        try:
            parse_msg = u"Parse: {}".format(line.strip())
        except UnicodeError:
            continue
        text = line.strip().lower()
        if not text:
            continue
        total_cnt += 1
        if text[-1] not in "!?.":
            text = text + "."
        try:
            parse_iter = eng.parse(text)
            print(parse_msg)
            print("\n  " + "\n  ".join(sorted(set(str(k[1]) for k in parse_iter))))
            print("")
            successful_cnt += 1
        except pgf.ParseError as e:
            if len(text) < 40:
                print(parse_msg)
            print(f"ERROR {e}\n")
            continue

    print("Success: {} of {}".format(successful_cnt, total_cnt))
