--# -coding=utf-8

instance LexCrudEng of LexCrud = open Prelude, SyntaxEng, ParadigmsEng, IrregEng in {
  oper
    makeImpoliteImp : V2 -> NP -> Utt = \v2,np -> mkUtt (mkImp v2 np);
    -- -- V2 LEXICON -- --
    add2_V2 = mkV2 "add" ;
    add_V2 = mkV2 "add" ;
    arrive_V2 = mkV2 "arrive" ;
    become_V2 = mkV2 (irregV "become" "became" "become") ;
    change2_V2 = mkV2 "change" ;
    change_V2 = mkV2 "change" ;
    connect2_V2 = mkV2 "connect" ;
    connect_V2 = mkV2 "connect" ;
    create2_V2 = mkV2 "create" ;
    create_V2 = mkV2 "create" ;
    delete2_V2 = mkV2 "delete" ;
    delete_V2 = mkV2 "delete" ;
    end2_V2 = mkV2 "end" ;
    end_V2 = mkV2 "end" ;
    get2_V2 = mkV2 IrregEng.get_V ;
    get_V2 = mkV2 IrregEng.get_V ;
    help2_V2 = mkV2 "help" ;
    help_V2 = mkV2 (partV (mkV "help") "out");
    insert2_V2 = mkV2 "insert" ;
    insert_V2 = mkV2 "insert" ;
    install2_V2 = mkV2 "install" ;
    install_V2 = mkV2 "install" ;
    process2_V2 = process_V2 ;
    process_V2 = mkV2 "process" ;
    read2_V2 = mkV2 (irregV "read" "read" "read") ;
    read_V2 = mkV2 (irregV "read" "read" "read") ;
    receive2_V2 = mkV2 (mkV "receive") ;
    receive_V2 = mkV2 (mkV "receive") ;
    remove2_V2 = mkV2 (mkV "remove") ;
    remove_V2 = mkV2 (mkV "remove") ;
    retrieve2_V2 = mkV2 (mkV "retrieve") ;
    retrieve_V2 = mkV2 (mkV "retrieve") ;
    search2_V2 = mkV2 (mkV "search") ;
    send2_V2 = mkV2 (IrregEng.send_V);
    send_V2 = mkV2 (IrregEng.send_V);
    save2_V2 = mkV2 (mkV "save") ;
    save_V2 = mkV2 (mkV "save") ;
    select2_V2 = mkV2 (mkV "select") ;
    select_V2 = mkV2 (mkV "select") ;
    start2_V2 = mkV2 (mkV "start") ;
    start_V2 = mkV2 (mkV "start") ;
    show2_V2 = show_V2 ;
    show_V2 = mkV2 (irregV "show" "showed" (variants {"shown" ; "showed"}) );
    use2_V2 = mkV2 (mkV "use") ;
    use_V2 = mkV2 (mkV "use") ;
    update2_V2 = update_V2;
    update_V2 = mkV2 (mkV "edit" "edits" "edited" "edited" "editing");
    verify2_V2 = mkV2 "verify" ;
    verify_V2 = mkV2 "verify" ;
    write2_V2 = mkV2 (irregV "write" "wrote" "written") ;
    write_V2 = mkV2 (irregV "write" "wrote" "written") ;

    -- -- V3 LEXICON -- --
    send3_V3 = mkV3 (IrregEng.send_V) to_Prep ;

    -- -- N LEXICON -- --
    access_N = mkN "access" ;
    child_N = mk2N "child" "children" ;
    data_N = mkN "data" "data";
    file_N = mkN "file" ;
    filter_N = mkN "filter" ;
    function_N = mkN "function" ;
    group_N = mkN "group" ;
    measurement_N = mkN "measurement" ;
    message_N = mkN "message" ;
    note_N = mkN "note" ;
    piece_N = mkN "piece" ;
    position_N = mkN "position" ;
    process_N = mkN "process" ;
    resource_N = mkN "resource" ;
    ring_N = mkN "ring" ;
    role_N = mkN "role" ;
    search_N = mkN "search" ;
    size_N = mkN "size" ;
    sender_N = mkN "sender" ;
    setting_N = mkN "setting" ;
    system_N = mkN "system" ;
    task_N = mkN "task" ;
    time_N = mkN "time" ;
    user_N = mkN "user" ;

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
    active_A = mkA "active";
    additional_A = mkA "additional";
    automatic_A = mkA "automatic";
    connected_A = mkA "connected";
    created_A = mkA "created";
    external_A = mkA "external";
    internal_A = mkA "internal";
    main_A = mkA "main";
    new_A = mkA "new";
    old_A = mkA "old";
    passive_A = mkA "passive";
    correct_A = mkA "correct";
    wrong_A = mkA "wrong";
}
