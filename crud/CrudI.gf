--# -coding=utf-8
-- THIS FILE HAS BEEN GENERATED AUTOMATICALLY. EDIT .tpl FILES --

incomplete concrete CrudI of Crud = open Numeral, Syntax, Verb, Noun, LexCrud in {
  lincat
    Action = V2;
    Action3 = V3;
    Actor = NP;
    Obj = NP;
    Clause = Cl;
    DoCommand = Utt;
    Document = Text;
    NomMod = N2;
    Kind = CN;
    NumberOf = Str;
    Property = AP;
    Rel = Prep;
    Sentence = S;
    Status = V;
    Term = NP;
  lin
    Doc clause = mkText (mkPhr (mkUtt clause)) ;
    Command imp = mkText (mkPhr imp) ;
    Label what = mkText (mkPhr (mkUtt what)) ;
    Event what status = mkS anteriorAnt (mkCl (mkNP what) status) ;
    NegEvent what status = mkS pastTense negativePol (mkCl (mkNP what) status) ;
    NomKind nommod np = ComplN2 nommod np ;
    AdjKind prop what = mkCN prop what;
    RelKind what how what2 = mkCN what (mkAdv how (mkNP what2)) ;
    Say phrase = mkS (mkCl phrase);
    Nof num kind = mkNP (mkDet num) kind ;
    All what = PredetNP all_Predet (mkNP aPl_Det what) ;
    -- Most what = PredetNP most_Predet (mkNP aPl_Det what) ;
    -- Only what = PredetNP only_Predet (mkNP aSg_Det what) ;
    Not what = PredetNP not_Predet (mkNP aPl_Det what) ;
    Some what = mkNP someSg_Det what ;
    ActorWe = we_NP ;
    One what = mkNP what ;
    M what =  mkNP aPl_Det what ;
    Many what =  mkNP many_Det what ;
    Few what =  mkNP few_Det what ;
    This what =  mkNP this_Det what ;
    That what =  mkNP that_Det what ;
    Every what =  mkNP every_Det what ;

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
    Insert2 = insert2_V2 ;
    Insert = insert_V2 ;
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
    Search2 = search2_V2 ;
    Send2 = send2_V2 ;
    Send = send_V2 ;
    Save2 = save2_V2 ;
    Save = save_V2 ;
    Select2 = select2_V2 ;
    Select = select_V2 ;
    Start2 = start2_V2 ;
    Start = start_V2 ;
    Show2 = show2_V2 ;
    Show = show_V2 ;
    Use2 = use2_V2 ;
    Use = use_V2 ;
    Update2 = update2_V2 ;
    Update = update_V2 ;
    Verify2 = verify2_V2 ;
    Verify = verify_V2 ;
    Write2 = write2_V2 ;
    Write = write_V2 ;

    Send3 = send3_V3 ;

    Access = mkCN access_N ;
    Child = mkCN child_N ;
    Data = mkCN data_N ;
    File = mkCN file_N ;
    Filter = mkCN filter_N ;
    Function = mkCN function_N ;
    Group = mkCN group_N ;
    Measurement = mkCN measurement_N ;
    Message = mkCN message_N ;
    Note = mkCN note_N ;
    Piece = mkCN piece_N ;
    Position = mkCN position_N ;
    AProcess = mkCN process_N ;
    Resource = mkCN resource_N ;
    Ring = mkCN ring_N ;
    Role = mkCN role_N ;
    Search = mkCN search_N ;
    Size = mkCN size_N ;
    Sender = mkCN sender_N ;
    Setting = mkCN setting_N ;
    System = mkCN system_N ;
    Task = mkCN task_N ;
    Time = mkCN time_N ;
    User = mkCN user_N ;

    ActorAccess = mkNP access_N ;
    ActorChild = mkNP child_N ;
    ActorData = mkNP data_N ;
    ActorFile = mkNP file_N ;
    ActorFilter = mkNP filter_N ;
    ActorFunction = mkNP function_N ;
    ActorGroup = mkNP group_N ;
    ActorMeasurement = mkNP measurement_N ;
    ActorMessage = mkNP message_N ;
    ActorNote = mkNP note_N ;
    ActorPiece = mkNP piece_N ;
    ActorPosition = mkNP position_N ;
    ActorProcess = mkNP process_N ;
    ActorResource = mkNP resource_N ;
    ActorRing = mkNP ring_N ;
    ActorRole = mkNP role_N ;
    ActorSearch = mkNP search_N ;
    ActorSize = mkNP size_N ;
    ActorSender = mkNP sender_N ;
    ActorSetting = mkNP setting_N ;
    ActorSystem = mkNP system_N ;
    ActorTask = mkNP task_N ;
    ActorTime = mkNP time_N ;
    ActorUser = mkNP user_N ;

    AccessOf = access_N2 ;
    ChildOf = child_N2 ;
    DataOf = data_N2 ;
    FileOf = file_N2 ;
    FilterOf = filter_N2 ;
    FunctionOf = function_N2 ;
    GroupOf = group_N2 ;
    MeasurementOf = measurement_N2 ;
    MessageOf = message_N2 ;
    NoteOf = note_N2 ;
    PieceOf = piece_N2 ;
    PositionOf = position_N2 ;
    ProcessOf = process_N2 ;
    ResourceOf = resource_N2 ;
    RingOf = ring_N2 ;
    RoleOf = role_N2 ;
    SearchOf = search_N2 ;
    SizeOf = size_N2 ;
    SenderOf = sender_N2 ;
    SettingOf = setting_N2 ;
    SystemOf = system_N2 ;
    TaskOf = task_N2 ;
    TimeOf = time_N2 ;
    UserOf = user_N2 ;

    Active = mkAP active_A ;
    Additional = mkAP additional_A ;
    Automatic = mkAP automatic_A ;
    Connected = mkAP connected_A ;
    Created = mkAP created_A ;
    External = mkAP external_A ;
    Internal = mkAP internal_A ;
    Main = mkAP main_A ;
    New = mkAP new_A ;
    Old = mkAP old_A ;
    Passive = mkAP passive_A ;
    Correct = mkAP correct_A ;
    Wrong = mkAP wrong_A ;

    ActorCan actor action on_what = mkS presentTense (mkCl actor (mkVP can_VV (mkVP action on_what )) );
    ActorMust actor action on_what = mkS presentTense (mkCl actor (mkVP must_VV (mkVP action on_what )) );
    ActorDone actor action on_what = mkS pastTense (mkCl actor (mkVP action on_what ));
    -- == DoOn actor action on_what = mkS pastTense (mkCl actor action on_what);
    ActorDoes actor action on_what = mkS presentTense simultaneousAnt (mkCl actor (mkVP action on_what ));
    ActorDoes3 actor action on_what on_what2 = mkS presentTense simultaneousAnt (mkCl actor (mkVP action on_what on_what2));
    ActorWillDo actor action on_what = mkS futureTense simultaneousAnt (mkCl actor (mkVP action on_what ));
    CanDone action on_what = mkS presentTense (mkCl on_what (mkVP can_VV (passiveVP action)));
    Do action on_what = makeImpoliteImp action on_what;
    Doing action on_what = mkS presentTense simultaneousAnt (mkCl on_what (PassV2 action));
    DoingAction action = mkS presentTense simultaneousAnt (mkCl (passiveVP action));
    DoingByItself action = mkS presentTense simultaneousAnt (mkCl (reflexiveVP action));
    Done action on_what = mkS pastTense (mkCl on_what (PassV2 action));
    NotDone action on_what = mkS pastTense negativePol (mkCl on_what (PassV2 action));
    WillDo action on_what = mkS futureTense simultaneousAnt (mkCl on_what (PassV2 action));

    SystemCan action on_what = ActorCan ActorSystem action on_what;
    SystemDone action on_what = ActorDone ActorSystem action on_what ;
    WeCan action on_what = ActorCan ActorWe action on_what ;
    WeDone action on_what = ActorDone ActorWe action on_what ;
}
