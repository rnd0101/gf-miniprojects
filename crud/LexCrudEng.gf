--# -coding=utf-8

instance LexCrudEng of LexCrud = open Prelude, SyntaxEng, ParadigmsEng, IrregEng in {
  oper
    -- -- V2 LEXICON -- --
    add2_V2 = mkV2 "add" ;
    add_V2 = mkV2 "add" ;
    arrive_V2 = mkV2 "arrive" ;
    become_V2 = mkV2 (irregV "become" "became" "become") ;
    connect2_V2 = mkV2 "connect" ;
    connect_V2 = mkV2 "connect" ;
    create_V2 = mkV2 "create" ;
    delete_V2 = mkV2 "delete" ;
    delete2_V2 = mkV2 "delete" ;
    end2_V2 = mkV2 "end" ;
    end_V2 = mkV2 "end" ;
    get2_V2 = mkV2 IrregEng.get_V ;
    get_V2 = mkV2 IrregEng.get_V ;
    process2_V2 = process_V2 ;
    process_V2 = mkV2 "process" ;
    receive2_V2 = mkV2 (mkV "receive") ;
    receive_V2 = mkV2 (mkV "receive") ;
    retrieve2_V2 = mkV2 (mkV "retrieve") ;
    retrieve_V2 = mkV2 (mkV "retrieve") ;
    show2_V2 = show_V2 ;
    show_V2 = mkV2 (irregV "show" "showed" (variants {"shown" ; "showed"}) );
    update2_V2 = update_V2;
    update_V2 = mkV2 (mkV "edit" "edits" "edited" "edited" "editing");
    verify2_V2 = mkV2 "verify" ;
    verify_V2 = mkV2 "verify" ;

    -- -- N LEXICON -- --
    data_N = mkN "data" ;
    group_N = mkN "group" ;
    measurement_N = mkN "measurement" ;
    note_N = mkN "note" ;
    piece_N = mkN "piece" ;
    position_N = mkN "position" ;
    process_N = mkN "process" ;
    system_N = mkN "system" ;
    task_N = mkN "task" ;
    time_N = mkN "time" ;
    user_N = mkN "user" ;

    -- -- A LEXICON -- --
    additional_A = mkA "additional";
    connected_A = mkA "connected";
    external_A = mkA "external";
    internal_A = mkA "internal";
}
