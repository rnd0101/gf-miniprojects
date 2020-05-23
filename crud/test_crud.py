# -*- coding: utf-8 -*-
import os

import pytest
import pgf

PORTABLE_GRAMMAR_FILE = "Crud.pgf"


def read_gf(filepath):
    return pgf.readPGF(filepath)


@pytest.fixture
def grammar():
    print("Making pgf")
    os.system("gf --make CrudRus.gf CrudFin.gf CrudEng.gf ")

    grammar = read_gf(PORTABLE_GRAMMAR_FILE)
    print("Languages: {}".format(", ".join(grammar.languages.keys())))
    return grammar


@pytest.fixture
def rus(grammar):
    return grammar.languages["CrudRus"]


@pytest.fixture
def fin(grammar):
    return grammar.languages["CrudFin"]


@pytest.fixture
def eng(grammar):
    return grammar.languages["CrudEng"]


RUS_EXAMPLES = [
    (u"файл.", 'Label File', ''),
    (u"активный файл.", 'Label (AdjKind Active File)', ''),
    (u"основной файл.", 'Label (AdjKind Main File)', ''),
    (u"штука получилась .", 'Doc (Done Get Piece)', ''),
    (u"мы связали измерение .", 'Doc (WeDone Connect Measurement)', ''),
    (u"пользователь выбрал активный процесс .", 'Doc (ActorDone ActorUser Select (AdjKind Active AProcess))', ''),
    (u"система связала измерение .", 'Doc (SystemDone Connect Measurement)', ''),
    (u"получать данные .", 'Command (DoOnMany Get2 Data)', ''),
    (u"пользователь получает доступ.", 'Doc (ActorDoes ActorUser Get Access)', ''),
    (u"доступ к ресурсу получился.", 'Doc (Done Get (RelKind Access To Resource))', ''),  # TODO
    (u"отправить задание.", 'Command (Do Send Task)', ''),
    (u"сохранить файл.", 'Command (Do Save File)', ''),
    (u"сохранить файлы.", 'Command (DoOnMany Save File)', ''),
    (u"отправить внутреннее задание.", 'Command (Do Send (AdjKind Internal Task))', ''),
    (u"система добавится .", 'Doc (WillDo Add System)', ''),
    (u"группа станет процессом.", 'Doc (ActorDoes ActorGroup Become AProcess)', 'l'),  # TODO:
    (u"группа извлекает процесс .", 'Doc (ActorDoes ActorGroup Retrieve2 AProcess)', 'l'),
    (u"группа извлекла процесс .", 'Doc (ActorDone ActorGroup Retrieve AProcess)', 'l'),
    (u"извлечь системы .", 'Command (DoOnMany Retrieve System)', ''),
    (u"удалить данные .", 'Command (DoOnMany Delete Data)', ''),
    (u"вставить данные .", 'Command (DoOnMany Insert Data)', ''),
    (u"задание исправляется .", 'Doc (WillDo Update Task)', 'l'),
    (u"связаемая внутренняя система получилась .", 'Doc (Done Get (AdjKind Connected (AdjKind Internal System)))', ''),
    (u"мы можем добавить пользователя .", 'Doc (WeCan Add User)', ''),
    (u"система может добавить пользователя .", 'Doc (SystemCan Add User)', ''),
    (u"заметка используется.", 'Doc (Doing Use Note)', ''),
    (u"система может помогать пользователю.", 'Doc (SystemCan Help2 User)', ''),
    (u"система должна отправить задание.", 'Doc (ActorMust ActorSystem Send Task)', ''),
    (u"система установится.", 'Doc (WillDo Install System)', ''),
    (u"система будет устанавливаться.", 'Doc (WillDo Install2 System)', ''),
    (u"система установилась.", 'Doc (Done Install System)', ''),
    (u"изменить настройки.", 'Command (DoOnMany Change Setting)', ''),
    (u"система будет создаваться.", 'Doc (WillDo Create2 System)', ''),
    (u"задание не искалось.", 'Doc (NotDone Search2 Task)', ''),
    (u"создать функции.", 'Command (DoOnMany Create Function)', ''),
    (u"система будет помогать пользователю.", 'Doc (ActorWillDo ActorSystem Help2 User)', ''),
    (u"система будет помогать создаемому пользователю.", 'Doc (ActorWillDo ActorSystem Help2 (AdjKind Created User))', ''),  # TODO:
    (u"добавить роль для задания к позиции.", 'Command (Do Add (RelKind (RelKind Role For Task) To Position))', 'l'),
    (u"позиция отправит функцию к группе.", 'Doc (ActorWillDo ActorPosition Send (RelKind Function To Group))', 'l'),
    (u"позиция отправляла функцию к группе.", 'Doc (ActorDone ActorPosition Send2 (RelKind Function To Group))', ''),
    (u"система отправит пользователю сообщение.", 'Doc (ActorDoes3 ActorSystem Send3 Message User)', ''),
    (u"отправитель отправит системе автоматическое сообщение с заданием.", 'Doc (ActorDoes3 ActorSender Send3 (RelKind (AdjKind Automatic Message) With Task) System)', ''),
]

ENG_EXAMPLES = [
    (u'file.', 'Label File', ''),
    (u'active file.', 'Label (AdjKind Active File)', ''),
    (u"main file.", 'Label (AdjKind Main File)', ''),
    (u'piece was gotten.', 'Doc (Done Get Piece)', ''),
    (u'we connected measurement.', 'Doc (WeDone Connect Measurement)', ''),
    (u"user selected active process .", 'Doc (ActorDone ActorUser Select (AdjKind Active AProcess))', ''),
    (u'system connected measurement.', 'Doc (SystemDone Connect Measurement)', ''),
    (u'get data.', 'Command (DoOnMany Get2 Data)', ''),
    (u"user gets access.", 'Doc (ActorDoes ActorUser Get Access)', ''),
    (u"access to resource was gotten .", 'Doc (Done Get (RelKind Access To Resource))', ''),  # TODO
    (u'send task.', 'Command (Do Send Task)', ''),
    (u'save file.', 'Command (Do Save File)', ''),
    (u'save files.', 'Command (DoOnMany Save File)', ''),
    (u'send internal task.', 'Command (Do Send (AdjKind Internal Task))', ''),
    (u'system will be added.', 'Doc (WillDo Add System)', ''),
    (u'group becomes process.', 'Doc (ActorDoes ActorGroup Become AProcess)', ''),
    (u'group retrieves process.', 'Doc (ActorDoes ActorGroup Retrieve2 AProcess)', ''),
    (u'group retrieved process.', 'Doc (ActorDone ActorGroup Retrieve AProcess)', ''),
    (u'retrieve systems.', 'Command (DoOnMany Retrieve System)', ''),
    (u'delete data.', 'Command (DoOnMany Delete Data)', ''),
    (u'insert data.', 'Command (DoOnMany Insert Data)', ''),
    (u'task will be edited.', 'Doc (WillDo Update Task)', ''),
    (u'connected internal system was gotten.', 'Doc (Done Get (AdjKind Connected (AdjKind Internal System)))', ''),
    (u'we can add user.', 'Doc (WeCan Add User)', ''),
    (u'system can add user.', 'Doc (SystemCan Add User)', ''),
    (u'note is used.', 'Doc (Doing Use Note)', ''),
    (u'system can help user.', 'Doc (SystemCan Help2 User)', ''),
    (u'system must send task.', 'Doc (ActorMust ActorSystem Send Task)', ''),
    (u'system will be installed.', 'Doc (WillDo Install System)', ''),
    (u'system will be installed.', 'Doc (WillDo Install2 System)', ''),
    (u'system was installed.', 'Doc (Done Install System)', ''),
    (u'change settings.', 'Command (DoOnMany Change Setting)', ''),
    (u'system will be created.', 'Doc (WillDo Create2 System)', ''),
    (u"task wasn't searched.", 'Doc (NotDone Search2 Task)', ''),
    (u'create functions.', 'Command (DoOnMany Create Function)', ''),
    (u'system will help user.', 'Doc (ActorWillDo ActorSystem Help2 User)', ''),
    (u'system will help created user.', 'Doc (ActorWillDo ActorSystem Help2 (AdjKind Created User))', ''),
    (u'add role for task to position.', 'Command (Do Add (RelKind (RelKind Role For Task) To Position))', ''),
    (u'position will send function to group.', 'Doc (ActorWillDo ActorPosition Send (RelKind Function To Group))', ''),
    (u'position sent function to group.', 'Doc (ActorDone ActorPosition Send2 (RelKind Function To Group))', ''),
    (u'system sends message to user.', 'Doc (ActorDoes3 ActorSystem Send3 Message User)', ''),
    (u'sender sends automatic message with task to system.', 'Doc (ActorDoes3 ActorSender Send3 (RelKind (AdjKind Automatic Message) With Task) System)', '')
]

FIN_EXAMPLES = [
    (u'tiedosto.', 'Label File', ''),
    (u'aktiivinen tiedosto.', 'Label (AdjKind Active File)', ''),
    (u"pää- tiedosto.", 'Label (AdjKind Main File)', ''),  # TODO: päätiedosto.
    (u'kappale saatiin.', 'Doc (Done Get Piece)', ''),
    (u'me yhdistimme mittauksen.', 'Doc (WeDone Connect Measurement)', ''),
    (u"käyttäjä valitsi aktiivisen prosessin .", 'Doc (ActorDone ActorUser Select (AdjKind Active AProcess))', ''),
    (u'järjestelmä yhdisti mittauksen.', 'Doc (SystemDone Connect Measurement)', ''),
    (u'saa tiedot.', 'Command (DoOnMany Get2 Data)', ''),
    (u"käyttäjä saa pääsyn.", 'Doc (ActorDoes ActorUser Get Access)', ''),  # TODO: is this good?
    (u"pääsy resurssiin saatiin.", 'Doc (Done Get (RelKind Access To Resource))', ''),  # TODO: ?
    (u'lähetä tehtävä.', 'Command (Do Send Task)', ''),
    (u'tallenna tiedosto.', 'Command (Do Save File)', ''),
    (u'tallenna tiedostot.', 'Command (DoOnMany Save File)', ''),
    (u'lähetä sisäinen tehtävä.', 'Command (Do Send (AdjKind Internal Task))', ''),
    (u'järjestelmä lisätään.', 'Doc (WillDo Add System)', ''),
    (u'ryhmä tulee prosessin.', 'Doc (ActorDoes ActorGroup Become AProcess)', ''),  # TODO:
    (u'ryhmä hakee prosessin.', 'Doc (ActorDoes ActorGroup Retrieve2 AProcess)', ''),  # TODO:
    (u'ryhmä haki prosessin.', 'Doc (ActorDone ActorGroup Retrieve AProcess)', ''),  # TODO:
    (u'hae järjestelmät.', 'Command (DoOnMany Retrieve System)', ''),  # TODO:
    (u'poista tiedot.', 'Command (DoOnMany Delete Data)', ''),
    (u'lisää tiedot.', 'Command (DoOnMany Insert Data)', ''),
    (u'tehtävä muokataan.', 'Doc (WillDo Update Task)', ''),
    (u'liittyvä sisäinen järjestelmä saatiin.', 'Doc (Done Get (AdjKind Connected (AdjKind Internal System)))', ''),  # TODO:
    (u'me voimme lisätä käyttäjän.', 'Doc (WeCan Add User)', ''),
    (u'järjestelmä voi lisätä käyttäjän.', 'Doc (SystemCan Add User)', ''),
    (u"muistiinpano käytetään.", 'Doc (Doing Use Note)', ''),
    (u'järjestelmä voi auttaa käyttäjän.', 'Doc (SystemCan Help2 User)', ''),  # TODO:
    (u'järjestelmän täytyy lähettää tehtävä.', 'Doc (ActorMust ActorSystem Send Task)', ''),
    (u'järjestelmä asennetaan.', 'Doc (WillDo Install System)', ''),
    (u'järjestelmä asennetaan.', 'Doc (WillDo Install2 System)', ''),
    (u'järjestelmä asennettiin.', 'Doc (Done Install System)', ''),
    (u'vaihda asetukset.', 'Command (DoOnMany Change Setting)', ''),
    (u'järjestelmä luodaan.', 'Doc (WillDo Create2 System)', ''),  # TODO:
    (u'tehtävä ei haettu.', 'Doc (NotDone Search2 Task)', ''),  # TODO:
    (u'luo tominnot.', 'Command (DoOnMany Create Function)', ''),
    (u'järjestelmä auttaa käyttäjän.', 'Doc (ActorWillDo ActorSystem Help2 User)', ''),  # TODO:
    (u'järjestelmä auttaa luodun käyttäjän.', 'Doc (ActorWillDo ActorSystem Help2 (AdjKind Created User))', ''),  # TODO:
    (u'lisää rooli tehtävälle positioon.', 'Command (Do Add (RelKind (RelKind Role For Task) To Position))', ''),
    (u'positio lähettää tominnon ryhmään.', 'Doc (ActorWillDo ActorPosition Send (RelKind Function To Group))', ''),
    (u'positio lähetti tominnon ryhmään.', 'Doc (ActorDone ActorPosition Send2 (RelKind Function To Group))', ''),
    (u'järjestelmä lähettää viestin käyttäjälle.', 'Doc (ActorDoes3 ActorSystem Send3 Message User)', ''),
    (u'lähettäjä lähettää automaattisen viestin tehtävän kanssa järjestelmälle.', 'Doc (ActorDoes3 ActorSender Send3 (RelKind (AdjKind Automatic Message) With Task) System)', ''),
]


@pytest.mark.parametrize("linearized, parsed, only", RUS_EXAMPLES)
def test_parse_rus(rus, linearized, parsed, only):
    parse_iter = rus.parse(linearized.encode("utf-8"))
    expr = set(str(k[1]) for k in parse_iter)
    assert parsed in expr


@pytest.mark.parametrize("linearized, parsed, only", RUS_EXAMPLES)
def test_linearize_rus(rus, linearized, parsed, only):
    if only and "l" not in only:
        return
    e = pgf.readExpr(parsed)
    assert unicode(rus.linearize(e), "utf-8") == linearized.replace(" .", ".")


@pytest.mark.parametrize("linearized, parsed, only", FIN_EXAMPLES)
def test_parse_fin(fin, linearized, parsed, only):
    parse_iter = fin.parse(linearized.encode("utf-8"))
    expr = set(str(k[1]) for k in parse_iter)
    assert parsed in expr


@pytest.mark.parametrize("linearized, parsed, only", FIN_EXAMPLES)
def test_linearize_fin(fin, linearized, parsed, only):
    if only and "l" not in only:
        return
    e = pgf.readExpr(parsed)
    assert unicode(fin.linearize(e), "utf-8") == linearized.replace(" .", ".")


@pytest.mark.parametrize("linearized, parsed, only", ENG_EXAMPLES)
def test_parse_eng(eng, linearized, parsed, only):
    parse_iter = eng.parse(linearized.encode("utf-8"))
    expr = set(str(k[1]) for k in parse_iter)
    assert parsed in expr


@pytest.mark.parametrize("linearized, parsed, only", ENG_EXAMPLES)
def test_linearize_eng(eng, linearized, parsed, only):
    if only and "l" not in only:
        return
    e = pgf.readExpr(parsed)
    assert unicode(eng.linearize(e), "utf-8") == linearized.replace(" .", ".")
