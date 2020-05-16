# -*- coding: utf-8 -*-
import os

import pytest
import pgf

PORTABLE_GRAMMAR_FILE = "Crud.pgf"


def read_gf(filepath):
    return pgf.readPGF(filepath)


@pytest.fixture
def rus():
    print("Making pgf")
    os.system("gf --make CrudRus.gf CrudFin.gf CrudEng.gf ")

    gr = read_gf(PORTABLE_GRAMMAR_FILE)

    print("Languages: {}".format(", ".join(gr.languages.keys())))

    eng = gr.languages["CrudEng"]
    fin = gr.languages["CrudFin"]
    return gr.languages["CrudRus"]


EXAMPLES = [
    (u"штука получилась .", 'Doc (Done Get Piece)', ''),
    (u"мы связали измерение .", 'Doc (WeDone Connect Measurement)', ''),
    (u"получай данные .", 'Command (DoOnMany Get2 Data)', ''),
    (u"существует штука .", 'Doc (Say Piece)', ''),  # TODO:
    (u"группа становит процессом .", 'Doc (ActorDoes ActorGroup Become AProcess)', ''),  # TODO:
    (u"группа извлекает процесс .", 'Doc (ActorDoes ActorGroup Retrieve2 AProcess)', ''),
    (u"группа извлека процесс .", 'Doc (ActorDone ActorGroup Retrieve AProcess)', 'l'),  # TODO:
    (u"извлеки системы .", 'Command (DoOnMany Retrieve System)', ''),
    (u"удаляй данные .", 'Command (DoOnMany Delete2 Data)', ''),
    (u"задание исправляется .", 'Doc (WillDo Update Task)', ''),
    (u"связаемая внутренняя система получилась .", 'Doc (Done Get (AdjKind Connected (AdjKind Internal System)))', ''),
    (u"мы можем добавить пользователя .", 'Doc (WeCan Add User)', ''),
]


@pytest.mark.parametrize("linearized, parsed, only", EXAMPLES)
def test_parse(rus, linearized, parsed, only):
    if not only or "p" not in only:
        return
    parse_iter = rus.parse(linearized.encode("utf-8"))
    expr = [k for k in parse_iter][0][1]

    assert str(expr) == parsed


@pytest.mark.parametrize("linearized, parsed, only", EXAMPLES)
def test_linearize(rus, linearized, parsed, only):
    if not only or "l" not in only:
        return
    e = pgf.readExpr(parsed)
    assert unicode(rus.linearize(e), "utf-8") == linearized.replace(" .", ".")
