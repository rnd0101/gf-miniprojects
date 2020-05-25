--# -coding=utf-8
-- THIS FILE HAS BEEN GENERATED AUTOMATICALLY. EDIT .tpl FILES --

incomplete concrete CrudI of Crud = open Numeral, Syntax, Verb, LexCrud in {
  lincat
    Action = V2;
    Action3 = V3;
    Actor = NP;
    Clause = Cl;
    DoCommand = Imp;
    Document = Text;
    Kind = CN;
    NumberOf = Str;
    Property = AP;
    Rel = Prep;
    Sentence = S;
    Status = V;
    Term = NP;
  lin
    Doc clause = mkText (mkPhr (mkUtt clause)) ;
    Command imp = mkText (mkPhr (mkUtt imp)) ;
    Label what = mkText (mkPhr (mkUtt what)) ;
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

    Abandon = abandon_1_V2 ;

    Add2 = add_1_V2 ;
    Add = add_1_V2 ;
    Arrive = get_to_5_V2 ;
    Become = become_2_V2 ;
    Change2 = change_1_V2 ;
    Change = change_1_V2 ;
    Connect2 = connect_3_V2 ;
    Connect = connect_3_V2 ;
    Create2 = create_6_V2 ;
    Create = create_6_V2 ;
    Delete2 = delete_2_V2 ;
    Delete = delete_2_V2 ;
    End2 = end_2_V2 ;
    End = end_2_V2 ;
    Get2 = get_1_V2 ;
    Get = get_1_V2 ;
    Help2 = help_2_V2 ;  -- ???
    Help = help_2_V2 ;
    Insert2 = insert_1_V2 ;
    Insert = insert_1_V2 ;
    Install2 = install_1_V2 ;
    Install = install_1_V2 ;
    Process2 = process_2_V2 ;
    Process = process_2_V2 ;
    Read2 = read_4_V2 ;
    Read = read_4_V2 ;
    Receive2 = receive_1_V2 ;
    Receive = receive_1_V2 ;
    Retrieve2 = retrieve_2_V2 ;
    Retrieve = retrieve_2_V2 ;
    Search2 = search_4_V2 ;   -- ???
    Send2 = send_2_V2 ;
    Send = send_2_V2 ;
    Save2 = save_11_V2 ;
    Save = save_11_V2 ;
    Select2 = select_V2 ;
    Select = select_V2 ;
    Show2 = show_2_V2 ;
    Show = show_2_V2 ;
    Use2 = use_1_V2 ;
    Use = use_1_V2 ;
    Update2 = update_1_V2 ;
    Update = update_1_V2 ;
    Verify2 = verify_1_V2 ;
    Verify = verify_1_V2 ;
    Write2 = write_3_V2 ; -- ?
    Write = write_3_V2 ;

    Send3 = send_V3 ;

     Access = mkCN access_1_N ;
     Child = mkCN child_2_N ;
     Data = mkCN data_N;
     File = mkCN file_1_N ;
     Function = mkCN function_7_N ;
     Group = mkCN group_1_N;
     Measurement = mkCN measurement_N ;
     Message = mkCN message_2_N ;  -- fin ?
     Note = mkCN note_7_N ;
     Piece = mkCN piece_2_N ;
     Position = mkCN position_1_N ;
     AProcess = mkCN process_2_N ; --?
     Resource = mkCN resource_2_N ;
     Role = mkCN role_3_N ;
     Search = mkCN search_3_N ;
     Sender = mkCN sender_1_N ;
     Setting = mkCN setting_5_N ;
     System = mkCN system_1_N ;
     Task = mkCN task_1_N ;
     Time = mkCN time_5_N ;
     User = mkCN userMasc_1_N ;

    ActorAccess = mkNP access_1_N ;
    ActorChild = mkNP child_2_N ;
    ActorData = mkNP data_N ;
    ActorFile = mkNP file_1_N ;
    ActorFunction = mkNP function_7_N ;
    ActorGroup = mkNP group_1_N ;
    ActorMeasurement = mkNP measurement_N ;
    ActorMessage = mkNP message_2_N ;
    ActorNote = mkNP note_7_N ;
    ActorPiece = mkNP piece_2_N ;
    ActorPosition = mkNP position_1_N ;
    ActorProcess = mkNP process_2_N ;
    ActorResource = mkNP resource_2_N ;
    ActorRole = mkNP role_3_N ;
    ActorSearch = mkNP search_3_N ;
    ActorSender = mkNP sender_1_N ;
    ActorSetting = mkNP setting_5_N ;
    ActorSystem = mkNP system_1_N ;
    ActorTask = mkNP task_1_N ;
    ActorTime = mkNP time_5_N ;
    ActorUser = mkNP userMasc_1_N ;

    Active = mkAP active_4_A ; -- ?
    Additional = mkAP additional_A ;
    Automatic = mkAP automatic_2_A ;
    Connected = mkAP connected_5_A ;
    --Created = mkAP created_A ;
    External = mkAP external_1_A ;
    Internal = mkAP internal_1_A ;
    Main = mkAP main_2_A ;
    Passive = mkAP passive_1_A ;


--

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
