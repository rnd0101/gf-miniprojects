--# -coding=utf-8

instance LexCrudFin of LexCrud = open Prelude, SyntaxFin, ParadigmsFin in {
  oper
    makeImpoliteImp : V2 -> NP -> Imp = mkImp ;
    -- -- V2 LEXICON -- --
    add2_V2 = mkV2 (mkV "lisätä")  ;
    add_V2 = mkV2 (mkV "lisätä")  ;
    arrive_V2 = mkV2 (mkV "saapua") ;
    become_V2 = mkV2 (mkV "tulla") ;  -- not correct
    connect2_V2 = mkV2 "yhdistellä" ;
    connect_V2 = mkV2 "yhdistää" ;
    change2_V2 = mkV2 "vaihtaa" ;
    change_V2 = mkV2 "vaihtaa" ;
    create2_V2 = mkV2 (mkV "luoda")  ;
    create_V2 = mkV2 (mkV "luoda")  ;
    delete_V2 = mkV2 (mkV "poistaa")  ;
    delete2_V2 = mkV2 (mkV "poistaa")  ;
    end2_V2 = mkV2 (mkV "päättää") ;
    end_V2 = mkV2 (mkV "päättyä") ;
    get2_V2 = mkV2 (mkV "saada") ;
    get_V2 = mkV2 (mkV "saada") ;
    help2_V2 = mkV2 (mkV "auttaa") ;
    help_V2 = mkV2 (mkV "auttaa") ;
    insert2_V2 = mkV2 "lisätä" ;
    insert_V2 = mkV2 "lisätä" ;
    install2_V2 = mkV2 "asentaa" ;
    install_V2 = mkV2 "asentaa" ;
    process2_V2 = process_V2  ;
    process_V2 = mkV2 (mkV "käsitellä")  ;
    read2_V2 = mkV2 "lukea" ;
    read_V2 = mkV2 "lukea" ;
    receive2_V2 = mkV2 (mkV "vastaanottaa") ;
    receive_V2 = mkV2 (mkV "vastaanottaa") ;
    retrieve2_V2 = mkV2 (mkV "hakea") ;
    retrieve_V2 = mkV2 (mkV "hakea") ;
    save2_V2 = mkV2 "tallentaa" ;
    save_V2 = mkV2 "tallentaa" ;
    search2_V2 = mkV2 "hakea" ;
    send2_V2 = mkV2 "lähettää" ;
    send_V2 = mkV2 "lähettää" ;
    show2_V2 = mkV2 (mkV "näytellä")  ;
    show_V2 = mkV2 (mkV "näyttää")  ;
    update2_V2 = mkV2 (mkV "muokata")  ; -- ?
    update_V2 = mkV2 (mkV "muokata")  ;
    use2_V2 = mkV2 "käyttää" ;  -- TODO: ?
    use_V2 = mkV2 "käyttää" ;
    verify2_V2 = mkV2 "varmistella" ;
    verify_V2 = mkV2 "varmistaa" ;
    write2_V2 = mkV2 "kirjoittaa" ;
    write_V2 = mkV2 "kirjoittaa" ;

    -- -- V3 LEXICON -- --
    send3_V3 = mkV3 (mkV "lähettää") accusative for_Prep ;

    -- -- N LEXICON -- --
    access_N = mkN "pääsy" ;
    child_N = mkN "lapsi" "lapsen" "lasta" "lapsena" "lapseen" "lasten" "lapsia" "lapsina" "lapsissa" "lapsiin" ;
    data_N = mkN "tieto" ;
    file_N = mkN "tiedosto" ;
    function_N = mkN "tominto" ;
    group_N = mkN "ryhmä" ;
    measurement_N = mkN "mittaus" ;
    message_N = mkN "viesti" ;
    note_N = mkN "muistiinpano" ;
    piece_N = mkN "kappale" ;
    position_N = mkN "positio" ;
    process_N = mkN "prosessi" ;
    resource_N = mkN "resurssi" ;
    role_N = mkN "rooli" ;
    search_N = mkN "haku" ;
    sender_N = mkN "lähettäjä" ;
    setting_N = mkN "asetus" ;
    system_N = mkN "järjestelmä" ;
    task_N = mkN "tehtävä" ;
    time_N = mkN "aika" "ajan" "aikaa" "aikana" "aikaan" "aikojen" "aikoja" "aikoina" "aikoissa" "aikoihin";
    user_N = mkN "käyttäjä" ;

    -- -- A LEXICON -- --
    active_A = mkA "aktiivinen";
    additional_A = mkA "ylimääräinen";
    automatic_A = mkA "automaattinen";
    connected_A = mkA "liittyvä" ;
    created_A = mkA "luotu" ;
    external_A = mkA "ulkoinen";
    internal_A = mkA "sisäinen";
    main_A = mkA "pää-";   -- TODO: this should be in the compound. How?
    passive_A = mkA "passiivinen";
}
