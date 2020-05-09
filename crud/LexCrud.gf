
interface LexCrud = open Syntax in {
  oper
    add_V2 : V2 ;
    arrive_V : V ;
    create_V2 : V2 ;
    delete_V2 : V2 ;
    end_V : V ;
    process2_V2 : V2 ;
    process_V2 : V2 ;
    show2_V2 : V2 ;
    show_V2 : V2 ;
    update_V2 : V2 ;

    group_N : N ;
    note_N : N ;
    piece_N : N ;
    position_N : N ;
    process_N : N ;
    system_N : N ;
    task_N : N ;
    time_N : N;

    additional_A : A ;
    connected_A : A ;
    external_A : A ;
    internal_A : A ;
}
