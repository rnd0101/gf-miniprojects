--# -coding=utf-8

instance LexCrudFin of LexCrud = open Prelude, SyntaxFin, ParadigmsFin in {
  oper
    -- -- V2 LEXICON -- --
    add2_V2 = mkV2 (mkV "lisätä")  ;
    add_V2 = mkV2 (mkV "lisätä")  ;
    arrive_V2 = mkV2 (mkV "saapua") ;
    connect2_V2 = mkV2 "yhdistellä" ;
    connect_V2 = mkV2 "yhdistää" ;
    create_V2 = mkV2 (mkV "luoda")  ;
    delete_V2 = mkV2 (mkV "poistaa")  ;
    end2_V2 = mkV2 (mkV "päättää") ;
    end_V2 = mkV2 (mkV "päättyä") ;
    get2_V2 = mkV2 (mkV "saada") ;
    get_V2 = mkV2 (mkV "saada") ;
    process2_V2 = process_V2  ;
    process_V2 = mkV2 (mkV "käsitellä")  ;
    receive2_V2 = mkV2 (mkV "vastaanottaa") ;
    receive_V2 = mkV2 (mkV "vastaanottaa") ;
    show2_V2 = mkV2 (mkV "näytellä")  ;
    show_V2 = mkV2 (mkV "näyttää")  ;
    update2_V2 = mkV2 (mkV "muokata")  ; -- ?
    update_V2 = mkV2 (mkV "muokata")  ;
    verify2_V2 = mkV2 "varmistella" ;
    verify_V2 = mkV2 "varmistaa" ;

    -- -- N LEXICON -- --
    group_N = mkN "ryhmä" ;
    measurement_N = mkN "mittaus" ;
    note_N = mkN "muistiinpano" ;
    piece_N = mkN "kappale" ;
    position_N = mkN "positio" ;
    process_N = mkN "prosessi" ;
    system_N = mkN "järjestelmä" ;
    task_N = mkN "tehtävä" ;
    time_N = mkN "aika" "ajan" "aikaa" "aikana" "aikaan" "aikojen" "aikoja" "aikoina" "aikoissa" "aikoihin";
    user_N = mkN "käyttäjä" ;

    -- -- A LEXICON -- --
    additional_A = mkA "ylimääräinen";
    connected_A = mkA "liittyvä" ;
    external_A = mkA "ulkoinen";
    internal_A = mkA "sisäinen";
}
