incomplete concrete CrudI of Crud = open Numeral, Syntax, Verb, LexCrud in {
  lincat
    Kind = CN;
    Term = NP;
    Rel = Prep;
    Actor = NP;
    Property = AP;
    Status = V;
    Action = V2;
    Action3 = V3;
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
    RelKind what how what2 = mkCN what (mkAdv how (mkNP what2)) ;
    Say phrase = mkS (mkCl phrase);
    NItemsDig num kind = mkS (mkCl (mkNP (mkDet num) kind)) ;
    ActorWe = we_NP ;

    Above = above_Prep ;
    After = after_Prep ;
    Before = before_Prep ;
    Between = between_Prep ;
    During = during_Prep ;
    For = for_Prep ;
    From = from_Prep ;
    In = in_Prep ;
    Of = part_Prep ;
    On = on_Prep ;
    Through = through_Prep ;
    To = to_Prep ;
    With = with_Prep ;
    WithHelpOf = by8agent_Prep ;
    Without = without_Prep ;

    Add2 = add2_V2 ;
    Add = add_V2 ;
    Arrive = arrive_V2 ;
    Become = become_V2 ;
    Change2 = change2_V2 ;
    Change = change_V2 ;
    Connect2 = connect2_V2 ;
    Connect = connect_V2 ;
    Create2 = create2_V2 ;
    Create = create_V2 ;
    Delete2 = delete2_V2 ;
    Delete = delete_V2 ;
    End2 = end2_V2 ;
    End = end_V2 ;
    Get2 = get2_V2 ;
    Get = get_V2 ;
    Help2 = help2_V2 ;
    Help = help_V2 ;
    Install2 = install2_V2 ;
    Install = install_V2 ;
    Process2 = process2_V2 ;
    Process = process_V2 ;
    Read2 = read2_V2 ;
    Read = read_V2 ;
    Receive2 = receive2_V2 ;
    Receive = receive_V2 ;
    Retrieve2 = retrieve2_V2 ;
    Retrieve = retrieve_V2 ;
    Send2 = send2_V2 ;
    Send = send_V2 ;
    Save2 = save2_V2 ;
    Save = save_V2 ;
    Show2 = show2_V2 ;
    Show = show_V2 ;
    Update2 = update2_V2 ;
    Update = update_V2 ;
    Verify2 = verify2_V2 ;
    Verify = verify_V2 ;
    Write2 = write2_V2 ;
    Write = write_V2 ;

    Send3 = send3_V3 ;

    Data = mkCN data_N ;
    File = mkCN file_N ;
    Function = mkCN function_N ;
    Group = mkCN group_N ;
    Measurement = mkCN measurement_N ;
    Message = mkCN message_N ;
    Note = mkCN note_N ;
    Piece = mkCN piece_N ;
    Position = mkCN position_N ;
    AProcess = mkCN process_N ;
    Role = mkCN role_N ;
    Sender = mkCN sender_N ;
    Setting = mkCN setting_N ;
    System = mkCN system_N ;
    Task = mkCN task_N ;
    Time = mkCN time_N ;
    User = mkCN user_N ;

    ActorData = mkNP data_N ;
    ActorFile = mkNP file_N ;
    ActorFunction = mkNP function_N ;
    ActorGroup = mkNP group_N ;
    ActorMeasurement = mkNP measurement_N ;
    ActorMessage = mkNP message_N ;
    ActorNote = mkNP note_N ;
    ActorPiece = mkNP piece_N ;
    ActorPosition = mkNP position_N ;
    ActorProcess = mkNP process_N ;
    ActorRole = mkNP role_N ;
    ActorSender = mkNP sender_N ;
    ActorSetting = mkNP setting_N ;
    ActorSystem = mkNP system_N ;
    ActorTask = mkNP task_N ;
    ActorTime = mkNP time_N ;
    ActorUser = mkNP user_N ;

    Active = mkAP active_A ;
    Additional = mkAP additional_A ;
    Connected = mkAP connected_A ;
    Created = mkAP created_A ;
    External = mkAP external_A ;
    Internal = mkAP internal_A ;
    Passive = mkAP passive_A ;

    ActorCan actor action on_what = mkS presentTense (mkCl actor (mkVP can_VV (mkVP action (mkNP on_what) )) );
    ActorMust actor action on_what = mkS presentTense (mkCl actor (mkVP must_VV (mkVP action (mkNP on_what) )) );
    ActorDone actor action on_what = mkS pastTense (mkCl actor (mkVP action (mkNP on_what) ));
    -- == DoOn actor action on_what = mkS pastTense (mkCl actor action (mkNP on_what));
    ActorDoes actor action on_what = mkS presentTense simultaneousAnt (mkCl actor (mkVP action (mkNP on_what) ));
    ActorDoes3 actor action on_what on_what2 = mkS presentTense simultaneousAnt (mkCl actor (mkVP action (mkNP on_what) (mkNP on_what2)));
    ActorWillDo actor action on_what = mkS futureTense simultaneousAnt (mkCl actor (mkVP action (mkNP on_what) ));
    CanDone action on_what = mkS presentTense (mkCl (mkNP on_what) (mkVP can_VV (passiveVP action)));
    Do action on_what = makeImpoliteImp action (mkNP on_what);
    DoOnMany action on_what = makeImpoliteImp action (mkNP aPl_Det on_what);
    Doing action on_what = mkS presentTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 action));
    DoingAction action = mkS presentTense simultaneousAnt (mkCl (passiveVP action));
    DoingByItself action = mkS presentTense simultaneousAnt (mkCl (reflexiveVP action));
    Done action on_what = mkS pastTense (mkCl (mkNP on_what) (PassV2 action));
    NotDone action on_what = mkS pastTense negativePol (mkCl (mkNP on_what) (PassV2 action));
    WillDo action on_what = mkS futureTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 action));

    SystemCan action on_what = ActorCan ActorSystem action on_what;
    SystemDone action on_what = ActorDone ActorSystem action on_what ;
    WeCan action on_what = ActorCan ActorWe action on_what ;
    WeDone action on_what = ActorDone ActorWe action on_what ;
}
