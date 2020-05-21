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
    (u"система связала измерение .", 'Doc (SystemDone Connect Measurement)', ''),
    (u"получать данные .", 'Command (DoOnMany Get2 Data)', ''),
    (u"существует штука .", 'Doc (Say Piece)', ''),  # TODO: "штука"
    (u"отправить задание.", 'Command (Do Send Task)', ''),
    (u"сохранить файл.", 'Command (Do Save File)', ''),
    (u"сохранить файлы.", 'Command (DoOnMany Save File)', ''),
    (u"отправить внутреннее задание.", 'Command (Do Send (AdjKind Internal Task))', ''),
    (u"система добавится .", 'Doc (WillDo Add System)', ''),
    (u"группа становит процессом .", 'Doc (ActorDoes ActorGroup Become AProcess)', 'l'),  # TODO:
    (u"группа извлекает процесс .", 'Doc (ActorDoes ActorGroup Retrieve2 AProcess)', 'l'),
    (u"группа извлекла процесс .", 'Doc (ActorDone ActorGroup Retrieve AProcess)', 'l'),
    (u"извлечь системы .", 'Command (DoOnMany Retrieve System)', ''),
    (u"удалить данные .", 'Command (DoOnMany Delete Data)', ''),
    (u"вставить данные .", 'Command (DoOnMany Insert Data)', ''),
    (u"задание исправляется .", 'Doc (WillDo Update Task)', 'l'),
    (u"связаемая внутренняя система получилась .", 'Doc (Done Get (AdjKind Connected (AdjKind Internal System)))', ''),
    (u"мы можем добавить пользователя .", 'Doc (WeCan Add User)', ''),
    (u"система может добавить пользователя .", 'Doc (SystemCan Add User)', ''),
    (u"система может помогать пользователю.", 'Doc (SystemCan Help2 User)', ''),
    (u"система должен отправить задание.", 'Doc (ActorMust ActorSystem Send Task)', ''),  # TODO:
    (u"система установится.", 'Doc (WillDo Install System)', ''),
    (u"система будет устанавливаться.", 'Doc (WillDo Install2 System)', ''),
    (u"система установилась.", 'Doc (Done Install System)', ''),
    (u"изменить настройки.", 'Command (DoOnMany Change Setting)', ''),
    (u"система будет создвааться.", 'Doc (WillDo Create2 System)', ''),
    (u"создать функции.", 'Command (DoOnMany Create Function)', ''),
    (u"система будет помогать пользователю.", 'Doc (ActorWillDo ActorSystem Help2 User)', ''),
    (u"система будет помогать создаемому пользователю.", 'Doc (ActorWillDo ActorSystem Help2 (AdjKind Created User))', ''),  # TODO:
    (u"добавить роль для задания к позиции.", 'Command (Do Add (RelKind (RelKind Role For Task) To Position))', 'l'),
    (u"позиция отправит функцию к группе.", 'Doc (ActorWillDo ActorPosition Send (RelKind Function To Group))', 'l'),
    (u"позиция отправляла функцию к группе.", 'Doc (ActorDone ActorPosition Send2 (RelKind Function To Group))', ''),
    (u"система отправит пользователю сообщение.", 'Doc (ActorDoes3 ActorSystem Send3 Message User)', ''),
    (u"отправитель отправит системе автоматическое сообщение с заданием.", 'Doc (ActorDoes3 ActorSender Send3 (RelKind (AdjKind Automatic Message) With Task) System)', ''),
]


@pytest.mark.parametrize("linearized, parsed, only", EXAMPLES)
def test_parse(rus, linearized, parsed, only):
    if only and "p" not in only:
        return
    parse_iter = rus.parse(linearized.encode("utf-8"))
    expr = [k for k in parse_iter][0][1]

    assert str(expr) == parsed


@pytest.mark.parametrize("linearized, parsed, only", EXAMPLES)
def test_linearize(rus, linearized, parsed, only):
    if only and "l" not in only:
        return
    e = pgf.readExpr(parsed)
    assert unicode(rus.linearize(e), "utf-8") == linearized.replace(" .", ".")
