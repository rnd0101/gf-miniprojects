--# -coding=utf-8

instance LexCrudRus of LexCrud = open Prelude, SyntaxRus, ParadigmsRus in {
  oper
    add_V = regV perfective first "добав" "лю" "добавил" "добавь" "добавить"  ;
    add_V2 = dirV2 add_V  ;
    arrive_V = regV perfective first "прибуд" "у" "прибыл" "прибудь" "прибыть" ;
    create_V = regV perfective first "созда" "ю" "создал" "создай" "создать"  ;
    create_V2 = dirV2 create_V  ;
    delete_V = regV perfective first "удал" "ю" "удалил" "удали" "удалить"  ;
    delete_V2 = dirV2 delete_V  ;
    end_V = regV perfective first "заверша" "ю" "завершил" "завершай" "завершить" ;
    process2_V = regV imperfective first "обрабатыва" "ю" "обрабатывал" "обрабатывай" "обрабатывать"  ;
    process2_V2 = dirV2 process2_V ;
    process_V = regV perfective first "обработа" "ю" "обработал" "обработай" "обработать"  ;
    process_V2 = dirV2 process_V  ;
    show2_V = regV imperfective first "показыва" "ю" "показывал" "показывай" "показывать"  ;
    show2_V2 = dirV2 show2_V ;
    show_V = regV perfective first "покаж" "у" "показал" "покажи" "показать"  ;
    show_V2 = dirV2 show_V ;
    update_V = regV perfective first "исправл" "ю" "исправил" "исправь" "исправить"  ;
    update_V2 = dirV2 update_V  ;

    group_N = mkN "группа" ;
    note_N = mkN "заметка" ;
    piece_N = mkN "штука" ;
    position_N = mkN "позиция" ;
    process_N = mkN "процесс" ;
    system_N = mkN "система" ;
    task_N = mkN "задание" ;
    time_N = mkN "время" "времени" "времени" "время" "временем" "времени"
                 "временами" "времена" "времен" "временам" "времена" "временами" "временах" neuter inanimate ;

    additional_A = mkA "дополнительный";
    connected_A = mkA "связанный" ;
    external_A = mkA "внешний";
    internal_A = mkA "внутренний";
}
