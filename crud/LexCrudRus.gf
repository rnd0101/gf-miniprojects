--# -coding=utf-8

instance LexCrudRus of LexCrud = open Prelude, SyntaxRus, ParadigmsRus, (X=ExtraRus), MorphoRus, ResRus in {
  oper

    -- This is a workaround to get just an infinitive for impolite imperative
    makeImpoliteImp : V2 -> NP -> Utt = \v2, np -> X.UttImpImm positivePol (mkImp (mkVP v2 np)) ;

    -- -- V2 LEXICON -- --
    add2_V = mkV imperfective "добавлять" "добавляю" "добавит"   ;
    add2_V2 = dirV2 add2_V  ;
    add_V = mkV perfective "добавить" "добавлю" "добавит"  ; -- wikt: гл ru 4a-бСВ
    add_V2 = dirV2 add_V  ;
    arrive_V = mkV perfective intransitive "прибыть" "прибуду" "прибудет" "4a" ;  -- wikt: гл ru ^a/c(1)СВ
    arrive_V2 = dirV2 arrive_V  ;
    become_V = mkV perfective "стать" "стану" "станет" ;  -- wikt: гл ru 15aСВ *
    become_V2 = mkV2 become_V "" Ins ;
    change2_V = mkV imperfective "изменять" "изменяю" ;  -- wikt: гл ru 1a
    change2_V2 = dirV2 change2_V  ;
    change_V = mkV perfective "изменить" "изменю" "изменит" ;  -- wikt: гл ru 4c(7)СВ
    change_V2 = dirV2 change_V  ;
    connect2_V = mkV imperfective "связывать" "связываю" ;  -- wikt: гл ru 1a
    connect2_V2 = dirV2 connect2_V  ;
    connect_V = mkV perfective "связать" "свяжу" "свяжет"  ;
    connect_V2 = dirV2 connect_V  ;
    create2_V = mkV imperfective "создаю" "создаёшь" "создаёт" "создаём" "создаёте" "создают" "создавал" "создавай" "создавать" ;  -- wikt: гл ru 13b
    create2_V2 = dirV2 create2_V  ;
    create_V = regV perfective first "созда" "ю" "создал" "создай" "создать" ;  -- *
    create_V2 = dirV2 create_V  ;
    delete2_V = regV imperfective first "удаля" "ю" "удалял" "удаляй" "удалять"  ;  -- wikt: гл ru 1a
    delete2_V2 = dirV2 delete2_V  ;
    delete_V = regV perfective secondA "удал" "ю" "удалил" "удали" "удалить" ;  -- wikt: гл ru 4bСВ
    delete_V2 = dirV2 delete_V  ;
    end2_V = regV imperfective first "заверша" "ю" "завершал" "завершай" "завершать" ;
    end2_V2 = dirV2 end2_V  ;
    end_V = mkV perfective "завершить" "завершу" "завершит"  ;
    end_V2 = dirV2 end_V  ;
    get2_V = regV imperfective first "получа" "ю" "получал" "получай" "получать" ;
    get2_V2 = dirV2 get2_V  ;
    get_V = regV perfective second "получ" "у" "получил" "получи" "получить" ;
    get_V2 = dirV2 get_V  ;
    help2_V = mkV imperfective intransitive "помогать" "помогаю" "помогает" ;
    help2_V2 = mkV2 help2_V "" Dat ;
    help_V = mkV perfective intransitive "помочь" "помогу" "поможет" ;
    help_V2 = mkV2 help_V "" Dat ;
    insert2_V = mkV imperfective "вставлять" "вставляю" ;
    insert2_V2 = dirV2 insert2_V  ;
    insert_V = mkV perfective "вставить" "вставлю" "вставит" ;
    insert_V2 = dirV2 insert_V  ;
    install2_V = mkV imperfective "устанавливать" "устанавливаю" ;
    install2_V2 = dirV2 install2_V  ;
    install_V = mkV perfective "установить" "установлю" "установит" ;
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
    receive_V = regV perfective second "получ" "у" "получил" "получи" "получить" ;
    receive_V2 = dirV2 receive_V ;
    retrieve2_V = regV imperfective first "извлека" "ю" "извлекал" "извлекай" "извлекать"  ;
    retrieve2_V2 = dirV2 retrieve2_V ;
    retrieve_V = mkV "извлечь" "извлеку" "извлечёт" ;
    retrieve_V2 = dirV2 retrieve_V ;
    save2_V = regV imperfective first "сохраня" "ю" "сохранял" "сохраняй" "сохранять"  ;
    save2_V2 = dirV2 save2_V ;
    save_V = regV perfective secondA "сохран" "ю" "сохранил" "сохрани" "сохранить"  ;
    save_V2 = dirV2 save_V ;
    search2_V = regV imperfective first "ищ" "у" "искал" "ищи" "искать"  ;
    search2_V2 = dirV2 search2_V ;
    select2_V = regV imperfective first "выбира" "ю" "выбирал" "выбирай" "выбирать" ;  -- wikt: гл ru 1a
    select2_V2 = dirV2 select2_V ;
    select_V = mkV perfective "выберу" "выберешь" "выберет" "выберем" "выберете" "выберут" "выбрал" "выбери" "выбрать" ;  -- wikt: гл ru 6°aСВ
    select_V2 = dirV2 select_V ;
    send2_V = regV imperfective first "отправля" "ю" "отправлял" "отправляй" "отправлять"  ;
    send2_V2 = dirV2 send2_V ;
    send_V = mkV perfective transitive "отправить" "отправлю" "отправит" "4a" ;
    send_V2 = dirV2 send_V ;
    show2_V = regV imperfective first "показыва" "ю" "показывал" "показывай" "показывать"  ;
    show2_V2 = dirV2 show2_V ;
    show_V = regV perfective first "покаж" "у" "показал" "покажи" "показать"  ;
    show_V2 = dirV2 show_V ;
    start_V = mkV imperfective "запустить" "запущу" "запустит"   ;
    start_V2 = dirV2 start_V  ;
    start2_V = mkV imperfective "запускать" "запускаю" "запускает"   ;
    start2_V2 = dirV2 start2_V  ;
    update2_V = mkV imperfective "исправлять" "исправляю" ;
    update2_V2 = dirV2 update2_V  ;
    update_V = mkV perfective "исправить" "исправлю" "исправит" ;
    update_V2 = dirV2 update_V  ;
    use2_V = mkV imperfective "использовать" "использую" "использует" ;
    use2_V2 = dirV2 use2_V  ;
    use_V = use2_V ;
    use_V2 = use2_V2 ;
    verify2_V = regV imperfective first "проверя" "ю" "проверял" "проверяй" "проверять"  ;
    verify2_V2 = dirV2 verify2_V  ;
    verify_V = regV perfective second "провер" "ю" "проверил" "проверь" "проверить"  ;
    verify_V2 = dirV2 verify_V  ;
    write2_V = regV imperfective first "записыва" "ю" "записывал" "записывай" "записывать"  ;
    write2_V2 = dirV2 write2_V  ;
    write_V = regV perfective first "записыва" "ю" "записал" "запиши" "записать"  ;
    write_V2 = dirV2 write_V  ;

    -- -- V3 LEXICON -- --
    send3_V3 = mkV3 send_V "" "" accusative dative ;

    -- -- N LEXICON -- --
    access_N = mkN "доступ" ;
    child_N = mkN "ребёнок" "ребёнка" "ребёнку" "ребёнка" "ребёнком" "ребёнке" "ребёнке" "дети" "детей" "детям" "детей" "детьми" "детях" masculine animate ;
    data_N = mkN (mkA "данный") masculine inanimate ;
    file_N = mkN "файл" ;
    filter_N = mkN "фильтр" ;
    function_N = mkN "функция" ;
    group_N = mkN "группа" ;
    measurement_N = mkN "измерение" ;
    message_N = mkN "сообщение" ;
    note_N = mkN "заметка" ;
    piece_N = mkN "штука" ;
    position_N = mkN "позиция" ;
    process_N = mkN "процесс" ;
    resource_N = mkN "ресурс" ;
    ring_N = (mkNplus (mkN "кольцо" Neut Inanimate "5*d")) ** {pgen="колец"} ;
    role_N = mkN "роль" "роли" "роли" "роль" "ролью" "роли" "ролями" "роли" "ролей" "ролям" "роли" "ролями" "ролях" Fem Inanimate ;
    search_N = mkN "поиск" ;
    size_N = mkN "размер" ;
    sender_N = mkN "отправитель" masculine animate "2c(1)";
    setting_N = mkN "настройка" ;
    system_N = mkN "система" ;
    task_N = mkN "задание" ;
    time_N = mkN "время" "времени" "времени" "время" "временем" "времени" "временами" "времена" "времен" "временам" "времена" "временами" "временах" neuter inanimate ;
    user_N = mkN "пользователь" "пользователя" "пользователю" "пользователя" "пользователем" "пользователе" "пользователями" "пользователи" "пользователей" "пользователям" "пользователей" "пользователями" "пользователях" Masc Animate ;

    -- -- N2 LEXICON -- --
    access_N2 = mkN2 access_N ;
    child_N2 = mkN2 child_N ;
    data_N2 = mkN2 data_N ;
    file_N2 = mkN2 file_N ;
    filter_N2 = mkN2 filter_N ;
    function_N2 = mkN2 function_N ;
    group_N2 = mkN2 group_N ;
    measurement_N2 = mkN2 measurement_N ;
    message_N2 = mkN2 message_N ;
    note_N2 = mkN2 note_N ;
    piece_N2 = mkN2 piece_N ;
    position_N2 = mkN2 position_N ;
    process_N2 = mkN2 process_N ;
    resource_N2 = mkN2 resource_N ;
    ring_N2 = mkN2 ring_N ;
    role_N2 = mkN2 role_N ;
    search_N2 = mkN2 search_N ;
    size_N2 = mkN2 size_N ;
    sender_N2 = mkN2 sender_N ;
    setting_N2 = mkN2 setting_N ;
    system_N2 = mkN2 system_N ;
    task_N2 = mkN2 task_N ;
    time_N2 = mkN2 time_N ;
    user_N2 = mkN2 user_N ;

    -- -- A LEXICON -- --
    active_A = mkA "активный";
    additional_A = mkA "дополнительный";
    automatic_A = mkA "автоматический";
    connected_A = mkA "связанный"  ; --mkPassPastParticiple connect_V ;
    created_A = mkA "созданный"   ;  --mkPassPastParticiple create_V ;
    external_A = mkA "внешний";
    internal_A = mkA "внутренний";
    main_A = mkA "основной";
    new_A = mkA "новый";
    old_A = mkA "старый";
    passive_A = mkA "пассивный";
    correct_A = mkA "правильный";
    wrong_A = mkA "неправильный";
}
