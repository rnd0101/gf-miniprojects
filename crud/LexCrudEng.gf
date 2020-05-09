--# -coding=utf-8

instance LexCrudEng of LexCrud = open Prelude, SyntaxEng, ParadigmsEng, IrregEng in {
  oper
    add_V2 = mkV2 "add" ;
    arrive_V2 = mkV2 "arrive" ;
    create_V2 = mkV2 "create" ;
    delete_V2 = mkV2 "delete" ;
    end2_V2 = mkV2 "end" ;
    end_V2 = mkV2 "end" ;
    get_V2 = mkV2 IrregEng.get_V ;
    process2_V2 = process_V2 ;
    process_V2 = mkV2 "process" ;
    show2_V2 = show_V2 ;
    show_V2 = mkV2 (irregV "show" "showed" (variants {"shown" ; "showed"}) );
    update_V2 = mkV2 (mkV "edit" "edits" "edited" "edited" "editing");

    group_N = mkN "group" ;
    note_N = mkN "note" ;
    piece_N = mkN "piece" ;
    position_N = mkN "position" ;
    process_N = mkN "process" ;
    system_N = mkN "system" ;
    task_N = mkN "task" ;
    time_N = mkN "time" ;

    additional_A = mkA "additional";
    connected_A = mkA "connected";
    external_A = mkA "external";
    internal_A = mkA "internal";
}
