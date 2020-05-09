#!/usr/bin/python2
# -*- coding: utf-8 -*-
"""
Hints taken from: http://www.grammaticalframework.org/doc/python-api.html
"""

import os

import pgf

PORTABLE_GRAMMAR_FILE = __file__.replace(".py", ".pgf").capitalize()

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
    parse_iter = rus.parse(PARSE_EXAMPLE.encode("utf-8"))
    expr = [k for k in parse_iter][0][1]

    expr_str = str(expr)
    e = pgf.readExpr(expr_str)

    print(u"Linearized: {}".format(unicode(eng.linearize(e), "utf-8")))

    PARSE_EXAMPLE_2 = u"штука получилась"
    print(u"Parse: {}".format(PARSE_EXAMPLE_2))
    try:
        parse_iter = rus.parse(PARSE_EXAMPLE_2.encode("utf-8"))
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
