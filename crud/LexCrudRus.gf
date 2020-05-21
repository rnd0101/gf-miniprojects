--# -coding=utf-8

instance LexCrudRus of LexCrud = open Prelude, SyntaxRus, ParadigmsRus, MorphoRus, ResRus in {
  oper

    -- This is a workaround to get just an infinitive for impolite imperative
    verbNULL : Str -> Verbum = \a  -> {
         s = table {_ => a} ;
         asp = perfective ;
       } ;
    makeImpoliteImp : V2 -> NP -> Imp = \v2, np -> mkImp (mkVP (verbNULL "") (mkVP v2 np)) ;

    -- -- V2 LEXICON -- --
    add2_V = regV imperfective second "добавля" "ю" "добавлял" "добавляй" "добавлять"  ;
    add2_V2 = dirV2 add2_V  ;
    add_V = regV perfective secondA "добав" "лю" "добавил" "добавь" "добавить"  ;
    add_V2 = dirV2 add_V  ;
    arrive_V = regV imperfective first "прибуд" "у" "прибыл" "прибудь" "прибыть" ;
    arrive_V2 = dirV2 arrive_V  ;
    become_V = regV perfective secondA "станов" "лю" "стал" "стань" "стать" ;
    become_V2 = mkV2 become_V "" instructive ;
    change2_V = regV imperfective first "изменя" "ю" "изменял" "изменяй" "изменять"  ;
    change2_V2 = dirV2 change2_V  ;
    change_V = regV perfective first "измен" "ю" "изменил" "измени" "изменить"  ;
    change_V2 = dirV2 change_V  ;
    connect2_V = regV imperfective first "связыва" "ю" "связывал" "связывай" "связывать"  ;
    connect2_V2 = dirV2 connect2_V  ;
    connect_V = regV perfective first "свяж" "у" "связал" "свяжи" "связать"  ;
    connect_V2 = dirV2 connect_V  ;
    create2_V = regV imperfective first "созда" "ю" "создавал" "создавай" "создваать"  ;
    create2_V2 = dirV2 create2_V  ;
    create_V = regV perfective first "созда" "ю" "создал" "создай" "создать"  ;
    create_V2 = dirV2 create_V  ;
    delete2_V = regV imperfective first "удаля" "ю" "удалял" "удаляй" "удалять"  ;
    delete2_V2 = dirV2 delete2_V  ;
    delete_V = regV perfective secondA "удал" "ю" "удалил" "удали" "удалить"  ;
    delete_V2 = dirV2 delete_V  ;
    end2_V = regV imperfective first "заверша" "ю" "завершал" "завершай" "завершать" ;
    end2_V2 = dirV2 end2_V  ;
    end_V = regV perfective first "заверша" "ю" "завершил" "заверши" "завершить" ;
    end_V2 = dirV2 end_V  ;
    get2_V = regV imperfective first "получа" "ю" "получал" "получай" "получать" ;
    get2_V2 = dirV2 get2_V  ;
    get_V = regV perfective first "получа" "ю" "получил" "получи" "получить" ;
    get_V2 = dirV2 get_V  ;
    help2_V = regV imperfective first "помога" "ю" "помогал" "помогай" "помогать"  ;
    help2_V2 = mkV2 help2_V "" Dat ;
    help_V = verbDeclMoch perfective firstE "помог" "у" "помог" "помоги" "помогать" "помож" ;
    help_V2 = mkV2 help_V "" Dat ;
    install2_V = regV imperfective first "устанавлива" "ю" "устанавливал" "устанавливай" "устанавливать"  ;
    install2_V2 = dirV2 install2_V  ;
    install_V = regV perfective secondA "установ" "лю" "установил" "установи" "установить"  ;
    install_V2 = dirV2 install_V  ;
    process2_V = regV imperfective first "обрабатыва" "ю" "обрабатывал" "обрабатывай" "обрабатывать"  ;
    process2_V2 = dirV2 process2_V ;
    process_V = regV perfective first "обработа" "ю" "обработал" "обработай" "обработать"  ;
    process_V2 = dirV2 process_V  ;
    read2_V = regV imperfective first "чита" "ю" "читал" "читай" "читать"  ;
    read2_V2 = dirV2 read2_V  ;
    read_V = regV perfective first "прочитыва" "ю" "прочитал" "прочитай" "прочитать"  ;
    read_V2 = dirV2 read_V  ;
    receive2_V = regV imperfective first "получа" "ю" "получал" "получай" "получать"  ;
    receive2_V2 = dirV2 receive2_V ;
    receive_V = regV perfective first "получа" "ю" "получил" "получи" "получить"  ;
    receive_V2 = dirV2 receive_V ;
    retrieve2_V = regV imperfective first "извлека" "ю" "извлекал" "извлекай" "извлекать"  ;
    retrieve2_V2 = dirV2 retrieve2_V ;
    retrieve_V = verbDeclMoch perfective firstE "извлек" "у" "извлек" "извлеки" "извлечь" "извлек" ;
    retrieve_V2 = dirV2 retrieve_V ;
    save2_V = regV imperfective first "сохран" "ю" "сохранял" "сохраняй" "сохранять"  ;
    save2_V2 = dirV2 save2_V ;
    save_V = regV perfective secondA "сохран" "ю" "сохранил" "сохрани" "сохранить"  ;
    save_V2 = dirV2 save_V ;
    send2_V = regV imperfective first "отправля" "ю" "отправлял" "отправляй" "отправлять"  ;
    send2_V2 = dirV2 send2_V ;
    send_V = regV perfective secondA "отправ" "лю" "отправил" "отправь" "отправить"  ;
    send_V2 = dirV2 send_V ;
    show2_V = regV imperfective first "показыва" "ю" "показывал" "показывай" "показывать"  ;
    show2_V2 = dirV2 show2_V ;
    show_V = regV perfective first "покаж" "у" "показал" "покажи" "показать"  ;
    show_V2 = dirV2 show_V ;
    update2_V = regV imperfective first "исправля" "ю" "исправил" "исправляй" "исправлять"  ;
    update2_V2 = dirV2 update2_V  ;
    update_V = regV perfective first "исправля" "ю" "исправил" "исправь" "исправить"  ;
    update_V2 = dirV2 update_V  ;
    verify2_V = regV imperfective first "проверя" "ю" "проверял" "проверяй" "проверять"  ;
    verify2_V2 = dirV2 verify2_V  ;
    verify_V = regV perfective first "проверя" "ю" "проверил" "проверь" "проверить"  ;
    verify_V2 = dirV2 verify_V  ;
    write2_V = regV imperfective first "записыва" "ю" "записывал" "записывай" "записывать"  ;
    write2_V2 = dirV2 write2_V  ;
    write_V = regV perfective first "записыва" "ю" "записал" "запиши" "записать"  ;
    write_V2 = dirV2 write_V  ;

    -- -- V3 LEXICON -- --
    send3_V3 = mkV3 send_V "" "" accusative dative ;

    -- -- N LEXICON -- --
    data_N = mkN "данное" ;
    function_N = mkN "функция" ;
    group_N = mkN "группа" ;
    measurement_N = mkN "измерение" ;
    message_N = mkN "сообщение" ;
    note_N = mkN "заметка" ;
    piece_N = mkN "штука" ;
    position_N = mkN "позиция" ;
    process_N = mkN "процесс" ;
    role_N = mkN "роль" "роли" "роли" "роль" "ролью" "роли" "ролями" "роли" "ролей" "ролям" "роли" "ролями" "ролях" Fem Inanimate ;
    setting_N = mkN "настройка" ;
    system_N = mkN "система" ;
    task_N = mkN "задание" ;
    time_N = mkN "время" "времени" "времени" "время" "временем" "времени" "временами" "времена" "времен" "временам" "времена" "временами" "временах" neuter inanimate ;
    user_N = mkN "пользователь" "пользователя" "пользователю" "пользователя" "пользователем" "пользователе" "пользователями" "пользователи" "пользователей" "пользователям" "пользователей" "пользователями" "пользователях" Masc Animate ;

    -- -- A LEXICON -- --
    active_A = mkA "активный";
    additional_A = mkA "дополнительный";
    connected_A = mkPassPastParticiple connect_V ;
    created_A = mkPassPastParticiple create_V ;
    external_A = mkA "внешний";
    internal_A = mkA "внутренний";
    passive_A = mkA "пассивный";
}
