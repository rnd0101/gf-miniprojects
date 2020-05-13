--# -coding=utf-8

instance LexCrudRus of LexCrud = open Prelude, SyntaxRus, ParadigmsRus, ResRus in {
  oper
    -- -- V2 LEXICON -- --
    add2_V = regV imperfective second "добавля" "ю" "добавлял" "добавляй" "добавлять"  ;
    add2_V2 = dirV2 add2_V  ;
    add_V = regV perfective second "добав" "лю" "добавил" "добавь" "добавить"  ;
    add_V2 = dirV2 add_V  ;
    arrive_V = regV imperfective first "прибуд" "у" "прибыл" "прибудь" "прибыть" ;
    arrive_V2 = dirV2 arrive_V  ;
    connect2_V = regV imperfective first "связыва" "ю" "связывал" "связывай" "связывать"  ;
    connect2_V2 = dirV2 connect2_V  ;
    connect_V = regV perfective first "свяж" "у" "связал" "свяжи" "связать"  ;
    connect_V2 = dirV2 connect_V  ;
    create_V = regV perfective first "созда" "ю" "создал" "создай" "создать"  ;
    create_V2 = dirV2 create_V  ;
    delete_V = regV perfective first "удал" "ю" "удалил" "удали" "удалить"  ;
    delete_V2 = dirV2 delete_V  ;
    end2_V = regV imperfective first "заверша" "ю" "завершал" "завершай" "завершать" ;
    end2_V2 = dirV2 end2_V  ;
    end_V = regV perfective first "заверша" "ю" "завершил" "заверши" "завершить" ;
    end_V2 = dirV2 end_V  ;
    get_V = regV perfective first "получа" "ю" "получил" "получи" "получить" ;
    get_V2 = dirV2 get_V  ;
    get2_V = regV imperfective first "получа" "ю" "получал" "получай" "получать" ;
    get2_V2 = dirV2 get2_V  ;
    process2_V = regV imperfective first "обрабатыва" "ю" "обрабатывал" "обрабатывай" "обрабатывать"  ;
    process2_V2 = dirV2 process2_V ;
    process_V = regV perfective first "обработа" "ю" "обработал" "обработай" "обработать"  ;
    process_V2 = dirV2 process_V  ;
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

    -- -- N LEXICON -- --
    group_N = mkN "группа" ;
    measurement_N = mkN "измерение" ;
    note_N = mkN "заметка" ;
    piece_N = mkN "штука" ;
    position_N = mkN "позиция" ;
    process_N = mkN "процесс" ;
    system_N = mkN "система" ;
    task_N = mkN "задание" ;
    time_N = mkN "время" "времени" "времени" "время" "временем" "времени" "временами" "времена" "времен" "временам" "времена" "временами" "временах" neuter inanimate ;

    -- -- A LEXICON -- --
    additional_A = mkA "дополнительный";
    connected_A = mkPassPastParticiple connect_V ;
    external_A = mkA "внешний";
    internal_A = mkA "внутренний";
}
