--# -coding=utf-8

instance LexCrudRus of LexCrud = open Prelude, SyntaxRus, ParadigmsRus, MorphoRus, ResRus in {
  oper
    -- Extensions to Morho
    presentConjShortPP: Str -> PresentVerb = \del ->
      table {
        PRF GPl _        => del + "ны" ;
        PRF (GSg Masc) _ => del + "н" ;
        PRF (GSg Fem)  _ => del + "на" ;
        PRF (GSg Neut) _ => del + "но"
      };

    pastConjShortPP: Str -> PastVerb = \del ->
      table {
        PSF  (GSg Masc) => "был"  ++ del + "н" ;
        PSF  (GSg Fem)  => "была" ++ del + "на" ;
        PSF  (GSg Neut) => "было" ++ del + "но" ;
        PSF  GPl        => "были" ++ del + "ны"
      };

    futureConjShortPP: Str -> PresentVerb = \del ->
      table {
        PRF  GPl _        => "будут" ++ del + "ны" ;
        PRF  (GSg Masc) _ => "будет" ++ del + "н" ;
        PRF  (GSg Fem)  _ => "будет" ++ del + "на" ;
        PRF  (GSg Neut) _ => "будет" ++ del + "но"
      };

    ShortPPDecl: Str -> Verbum =
      \delp ->  -- E.g. "сложе"
      let present = presentConjShortPP delp in
      let future = futureConjShortPP delp in
      let past = pastConjShortPP delp in
        { s = table { VFORM vox vf =>
        case vf of {
   	      VINF  =>  delp ;
  	      VIMP Sg P1 => "давайте" ++ add_sya vox (future ! (PRF (GSg Masc) P1));
	      VIMP Pl P1 => "давайте" ++ add_sya vox (future ! (PRF GPl P1));
	      VIMP Sg P2 => delp ;
	      VIMP Pl P2 => delp ;
	      VIMP Sg P3 => "пусть" ++ add_sya vox (future ! (PRF (GSg Masc) P3)) ;
	      VIMP Pl P3 => "пусть" ++ add_sya vox (future ! (PRF GPl P3)) ;
   	      VSUB gn => add_sya vox (past ! (PSF gn)) ++ "бы" ;
	      VIND (GSg g) (VPresent p)  => (present ! (PRF (GSg g) p));
   	      VIND GPl     (VPresent p)  => (present ! (PRF GPl p)) ;
	      VIND gn      (VFuture p)   => add_sya vox (future ! (PRF gn p)) ;
	      VIND gn      VPast         => add_sya vox (past ! (PSF gn))
        } } ;
        asp = Perfective ;
        lock_V = {}
        } ;

    -- End of extensions

    buildAct : V2 -> V2 -> V -> Act  = \impv, perfv, shortpp -> {
      imp=impv ;
      perf=perfv;
      shortPart=shortpp
    } ;

    -- -- V2 LEXICON -- --
    add2_V = regV imperfective second "добавля" "ю" "добавлял" "добавляй" "добавлять" ;
    add2_V2 = dirV2 add2_V ;
    add_V = regV perfective secondA "добав" "лю" "добавил" "добавь" "добавить" ;
    add_V2 = dirV2 add_V ;
    add_Act = buildAct add2_V2 add_V2 (ShortPPDecl "добавле");

    become_V = regV perfective secondA "станов" "лю" "стал" "стань" "стать" ;
    become_V2 = mkV2 become_V "" instructive ;
    arrive_V = regV imperfective first "прибуд" "у" "прибыл" "прибудь" "прибыть" ;
    arrive_V2 = dirV2 arrive_V ;
    connect2_V = regV imperfective first "связыва" "ю" "связывал" "связывай" "связывать" ;
    connect2_V2 = dirV2 connect2_V ;
    connect_V = regV perfective first "свяж" "у" "связал" "свяжи" "связать" ;
    connect_V2 = dirV2 connect_V ;
    create_V = regV perfective first "созда" "ю" "создал" "создай" "создать" ;
    create_V2 = dirV2 create_V ;
    delete_V = regV perfective secondA "удал" "ю" "удалил" "удали" "удалить" ;
    delete_V2 = dirV2 delete_V ;
    delete2_V = regV imperfective first "удаля" "ю" "удалял" "удаляй" "удалять" ;
    delete2_V2 = dirV2 delete2_V ;
    end2_V = regV imperfective first "заверша" "ю" "завершал" "завершай" "завершать" ;
    end2_V2 = dirV2 end2_V ;
    end_V = regV perfective first "заверша" "ю" "завершил" "заверши" "завершить" ;
    end_V2 = dirV2 end_V ;
    get_V = regV perfective first "получа" "ю" "получил" "получи" "получить" ;
    get_V2 = dirV2 get_V ;
    get2_V = regV imperfective first "получа" "ю" "получал" "получай" "получать" ;
    get2_V2 = dirV2 get2_V ;
    help2_V = regV imperfective first "помога" "ю" "помогал" "помогай" "помогать" ;
    help2_V2 = dirV2 help2_V ;
    help_V = verbDeclMoch perfective firstE "помог" "у" "помог" "помоги" "помогать" "помож" ;
    help_V2 = dirV2 help_V ;
    process2_V = regV imperfective first "обрабатыва" "ю" "обрабатывал" "обрабатывай" "обрабатывать" ;
    process2_V2 = dirV2 process2_V ;
    process_V = regV perfective first "обработа" "ю" "обработал" "обработай" "обработать" ;
    process_V2 = dirV2 process_V ;
    receive2_V = regV imperfective first "получа" "ю" "получал" "получай" "получать" ;
    receive2_V2 = dirV2 receive2_V ;
    receive_V = regV imperfective first "получа" "ю" "получил" "получи" "получить" ;
    receive_V2 = dirV2 receive_V ;
    retrieve2_V = regV imperfective first "извлека" "ю" "извлекал" "извлекай" "извлекать" ;
    retrieve2_V2 = dirV2 retrieve2_V ;
    retrieve_V = verbDeclMoch perfective firstE "извлек" "у" "извлек" "извлеки" "извлечь" "извлек" ;
    retrieve_V2 = dirV2 retrieve_V ;
    show2_V = regV imperfective first "показыва" "ю" "показывал" "показывай" "показывать" ;
    show2_V2 = dirV2 show2_V ;
    show_V = regV perfective first "покаж" "у" "показал" "покажи" "показать" ;
    show_V2 = dirV2 show_V ;
    update2_V = regV imperfective first "исправля" "ю" "исправил" "исправляй" "исправлять" ;
    update2_V2 = dirV2 update2_V ;
    update_V = regV perfective first "исправля" "ю" "исправил" "исправь" "исправить" ;
    update_V2 = dirV2 update_V ;
    verify2_V = regV imperfective first "проверя" "ю" "проверял" "проверяй" "проверять" ;
    verify2_V2 = dirV2 verify2_V ;
    verify_V = regV perfective first "проверя" "ю" "проверил" "проверь" "проверить" ;
    verify_V2 = dirV2 verify_V ;

    -- -- N LEXICON -- --
    group_N = mkN "группа" ;
    data_N = mkN "данное" ;
    measurement_N = mkN "измерение" ;
    note_N = mkN "заметка" ;
    piece_N = mkN "штука" ;
    position_N = mkN "позиция" ;
    process_N = mkN "процесс" ;
    system_N = mkN "система" ;
    task_N = mkN "задание" ;
    time_N = mkN "время" "времени" "времени" "время" "временем" "времени" "временами" "времена" "времен" "временам" "времена" "временами" "временах" neuter inanimate ;
    user_N = mkN "пользователь" "пользователя" "пользователю" "пользователя" "пользователем" "пользователе" "пользователями" "пользователи" "пользователей" "пользователям" "пользователей" "пользователями" "пользователях" Masc Animate ;

    -- -- A LEXICON -- --
    additional_A = mkA "дополнительный";
    connected_A = mkPassPastParticiple connect_V ;
    external_A = mkA "внешний";
    internal_A = mkA "внутренний";
}
