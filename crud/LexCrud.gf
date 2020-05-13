
interface LexCrud = open Syntax in {
  oper
    -- -- V2 DECLARATION -- --
    add_V2 : V2 ;
    add2_V2 : V2 ;
    arrive_V2 : V2 ;
    connect_V2 : V2 ;
    connect2_V2 : V2 ;
    create_V2 : V2 ;
    delete_V2 : V2 ;
    get_V2 : V2 ;
    get2_V2 : V2 ;
    end_V2 : V2 ;
    end2_V2 : V2 ;
    process2_V2 : V2 ;
    process_V2 : V2 ;
    show2_V2 : V2 ;
    show_V2 : V2 ;
    update_V2 : V2 ;
    update2_V2 : V2 ;

    -- -- N DECLARATION -- --
    group_N : N ;
    note_N : N ;
    piece_N : N ;
    measurement_N : N ;
    position_N : N ;
    process_N : N ;
    system_N : N ;
    task_N : N ;
    time_N : N;

    -- -- A DECLARATION -- --
    additional_A : A ;
    connected_A : A ;
    external_A : A ;
    internal_A : A ;
}