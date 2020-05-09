incomplete concrete CrudI of Crud = open Numeral, Syntax, Verb, LexCrud in {
  lincat
    Kind = CN;
    DetKind = NP;
    Property = AP;
    Adjective = A;
    Complem = Str;
    PropertyWith = A2;
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

    Add = add_V2 ;
    Create = create_V2 ;
    Delete = delete_V2 ;
    Process = process_V2 ;
    Process2 = process2_V2 ;
    Show = show_V2 ;
    Show2 = show2_V2 ;
    Update = update_V2 ;

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
    Done action on_what = mkS pastTense (mkCl (mkNP on_what) (PassV2 action));
    WillDo action on_what = mkS futureTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 action));
    Doing action on_what = mkS presentTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 action));
    NotDone action on_what = mkS pastTense negativePol (mkCl (mkNP on_what) (PassV2 action));
}
