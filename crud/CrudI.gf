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
  lin
    Doc clause = mkText (mkPhr (mkUtt clause)) ;
    Command imp = mkText (mkPhr (mkUtt imp)) ;
    Event what status = mkS anteriorAnt (mkCl (mkNP what) status) ;
    NegEvent what status = mkS pastTense negativePol (mkCl (mkNP what) status) ;
    AdjKind prop what = mkCN prop what;
    Say phrase = mkS (mkCl phrase);
    NItemsDig num kind = mkS (mkCl (mkNP (mkDet num) kind)) ;

    Add2 = add2_V2 ;
    Add = add_V2 ;
    Arrive = arrive_V2 ;
    Connect2 = connect2_V2 ;
    Connect = connect_V2 ;
    Create = create_V2 ;
    Delete = delete_V2 ;
    End2 = end2_V2 ;
    End = end_V2 ;
    Get2 = get2_V2 ;
    Get = get_V2 ;
    Process2 = process2_V2 ;
    Process = process_V2 ;
    Receive2 = receive2_V2 ;
    Receive = receive_V2 ;
    Show2 = show2_V2 ;
    Show = show_V2 ;
    Update2 = update2_V2 ;
    Update = update_V2 ;
    Verify2 = verify2_V2 ;
    Verify = verify_V2 ;

    Group = mkCN group_N ;
    Measurement = mkCN measurement_N ;
    Note = mkCN note_N ;
    Piece = mkCN piece_N ;
    Position = mkCN position_N ;
    AProcess = mkCN process_N ;
    System = mkCN system_N ;
    Task = mkCN task_N ;
    Time = mkCN time_N ;

    Additional = mkAP additional_A ;
    Connected = mkAP connected_A ;
    External = mkAP external_A ;
    Internal = mkAP internal_A ;

    Do action on_what = mkImp action (mkNP on_what);
    Doing action on_what = mkS presentTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 action));
    DoingAction action = mkS presentTense simultaneousAnt (mkCl (passiveVP action));
    DoingByItself action = mkS presentTense simultaneousAnt (mkCl (reflexiveVP action));
    Done action on_what = mkS pastTense (mkCl (mkNP on_what) (PassV2 action));
    CanDone action on_what = mkS presentTense (mkCl (mkNP on_what) (mkVP can_VV (passiveVP action)));
    NotDone action on_what = mkS pastTense negativePol (mkCl (mkNP on_what) (PassV2 action));
    SystemCan action on_what = mkS presentTense (mkCl (mkNP system_N) (mkVP can_VV (mkVP action (mkNP on_what) )) );
    SystemDone action on_what = mkS pastTense anteriorAnt (mkCl (mkNP system_N) (mkVP action (mkNP on_what) ));
    WeDone action on_what = mkS pastTense (mkCl we_NP (mkVP action (mkNP on_what) ));
    WillDo action on_what = mkS futureTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 action));
}
