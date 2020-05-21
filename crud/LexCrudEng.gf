--# -coding=utf-8

instance LexCrudEng of LexCrud = open Prelude, SyntaxEng, ParadigmsEng, IrregEng in {
  oper
    makeImpoliteImp : V2 -> NP -> Imp = mkImp ;
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
    install2_V2 = mkV2 "install" ;
    install_V2 = mkV2 "install" ;
    process2_V2 = process_V2 ;
    process_V2 = mkV2 "process" ;
    read2_V2 = mkV2 (irregV "read" "read" "read") ;
    read_V2 = mkV2 (irregV "read" "read" "read") ;
    receive2_V2 = mkV2 (mkV "receive") ;
    receive_V2 = mkV2 (mkV "receive") ;
    retrieve2_V2 = mkV2 (mkV "retrieve") ;
    retrieve_V2 = mkV2 (mkV "retrieve") ;
    send2_V2 = mkV2 (IrregEng.send_V);
    send_V2 = mkV2 (IrregEng.send_V);
    save2_V2 = mkV2 (mkV "save") ;
    save_V2 = mkV2 (mkV "save") ;
    show2_V2 = show_V2 ;
    show_V2 = mkV2 (irregV "show" "showed" (variants {"shown" ; "showed"}) );
    update2_V2 = update_V2;
    update_V2 = mkV2 (mkV "edit" "edits" "edited" "edited" "editing");
    verify2_V2 = mkV2 "verify" ;
    verify_V2 = mkV2 "verify" ;
    write2_V2 = mkV2 (irregV "write" "wrote" "written") ;
    write_V2 = mkV2 (irregV "write" "wrote" "written") ;

    -- -- V3 LEXICON -- --
    send3_V3 = mkV3 (IrregEng.send_V) to_Prep ;

    -- -- N LEXICON -- --
    data_N = mkN "data" "data";
    file_N = mkN "file" ;
    function_N = mkN "function" ;
    group_N = mkN "group" ;
    measurement_N = mkN "measurement" ;
    message_N = mkN "message" ;
    note_N = mkN "note" ;
    piece_N = mkN "piece" ;
    position_N = mkN "position" ;
    process_N = mkN "process" ;
    role_N = mkN "role" ;
    sender_N = mkN "sender" ;
    setting_N = mkN "setting" ;
    system_N = mkN "system" ;
    task_N = mkN "task" ;
    time_N = mkN "time" ;
    user_N = mkN "user" ;

    -- -- A LEXICON -- --
    active_A = mkA "active";
    additional_A = mkA "additional";
    connected_A = mkA "connected";
    created_A = mkA "created";
    external_A = mkA "external";
    internal_A = mkA "internal";
    passive_A = mkA "passive";
}
