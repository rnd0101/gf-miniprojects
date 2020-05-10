incomplete concrete CrudI of Crud = open Numeral, Syntax, Verb, LexCrud in {
  lincat
    Kind = CN;
    DetKind = NP;
    Property = AP;
    Adjective = A;
    Complem = Str;
    Status = V;
    Action = V2;
    Clause = S;
    Document = Text;
    DoCommand = Imp;
    NumberOf = Str;
    SuperAction = {do, doing: V2; done: V} ;
  lin
    Doc clause = mkText (mkPhr (mkUtt clause)) ;
    Command imp = mkText (mkPhr (mkUtt imp)) ;
    Event what status = mkS anteriorAnt (mkCl (mkNP what) status) ;
    NegEvent what status = mkS pastTense negativePol (mkCl (mkNP what) status) ;
    AdjKind prop what = mkCN prop what;
    Say phrase = mkS (mkCl phrase);
    NItemsDig num kind = mkS (mkCl (mkNP (mkDet num) kind)) ;

    Add = add_V2 ;
    Arrive = arrive_V2 ;
    Create = create_V2 ;
    Connect = connect_V2 ;
    Connect2 = connect2_V2 ;
    Connect3 = connect3_V2 ;
    Connect3_V = connect3_V ;
    Delete = delete_V2 ;
    End = end_V2 ;
    End2 = end2_V2 ;
    Get = get_V2 ;
    Process = process_V2 ;
    Process2 = process2_V2 ;
    Show = show_V2 ;
    Show2 = show2_V2 ;
    Update = update_V2 ;
    Update2 = update2_V2 ;
    SuperUpdate = {do=Update; doing=Update2; done=Connect3_V} ;

    Task = mkCN task_N ;
    Time = mkCN time_N ;
    System = mkCN system_N ;
    AProcess = mkCN process_N ;
    Group = mkCN group_N ;
    Note = mkCN note_N ;
    Piece = mkCN piece_N;
    Position = mkCN position_N;

    Additional = mkAP additional_A ;
    Connected = mkAP connected_A ;
    External = mkAP external_A ;
    Internal = mkAP internal_A ;

    Do action on_what = mkImp action (mkNP on_what);
    -- Done action on_what = mkS pastTense (mkCl (mkNP on_what) (PassV2 action));
    Done action on_what = mkS (mkCl (mkNP on_what) (Connect3_V));
    WillDo action on_what = mkS futureTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 action));
    Doing action on_what = mkS presentTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 action));
    NotDone action on_what = mkS pastTense negativePol (mkCl (mkNP on_what) (PassV2 action));

    SuperDo super_action on_what = mkImp super_action.do (mkNP on_what) ;
    -- SuperDone super_action on_what = mkS( mkCl (mkCN super_action.done on_what) );
    SuperDone super_action on_what = mkS presentTense ( mkCl (mkNP on_what) super_action.done );
}
