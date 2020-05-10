--# -coding=utf-8

instance LexCrudFin of LexCrud = open Prelude, SyntaxFin, ParadigmsFin in {
  oper
    add_V2 = mkV2 (mkV "lisätä")  ;
    arrive_V2 = mkV2 (mkV "saapua") ;
    connect_V2 = mkV2 "yhdistää" ;
    connect2_V2 = mkV2 "yhdistellä" ;
    connect3_V2 = mkV2 "yhdistellä" ;
    create_V2 = mkV2 (mkV "luoda")  ;
    delete_V2 = mkV2 (mkV "poistaa")  ;
    end2_V2 = mkV2 (mkV "päättää") ;
    end_V2 = mkV2 (mkV "päättyä") ;
    get_V2 = mkV2 (mkV "saada") ;

    process2_V2 = process_V2  ;
    process_V2 = mkV2 (mkV "käsitellä")  ;
    show2_V2 = mkV2 (mkV "näytellä")  ;
    show_V2 = mkV2 (mkV "näyttää")  ;
    update_V2 = mkV2 (mkV "muokata")  ;
    update2_V2 = mkV2 (mkV "muokata")  ; -- ?

    group_N = mkN "ryhmä" ;
    note_N = mkN "muistiinpano" ;
    piece_N = mkN "kappale" ;
    position_N = mkN "positio" ;
    process_N = mkN "prosessi" ;
    system_N = mkN "järjestelmä" ;
    task_N = mkN "tehtävä" ;
    time_N = mkN "aika" "ajan" "aikaa" "aikana" "aikaan" "aikojen" "aikoja" "aikoina" "aikoissa" "aikoihin";

    additional_A = mkA "ylimääräinen";
    connected_A = mkA "liittyvä" ;
    external_A = mkA "ulkoinen";
    internal_A = mkA "sisäinen";
}
