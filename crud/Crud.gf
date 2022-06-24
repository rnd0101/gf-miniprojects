--# -coding=utf-8
-- THIS FILE HAS BEEN GENERATED AUTOMATICALLY. EDIT .tpl FILES --

abstract Crud = Numeral ** {
  flags startcat = Document ;
  cat
    Action ;
    Action3 ;
    Actor ;
    Clause ;
    DoCommand ;
    Document ;
    Kind ;
    NomMod ;
    NumberOf ;
    Obj ;
    Property ;
    Rel ;
    Sentence ;
  fun
    Doc : Sentence -> Document ;
    Command : DoCommand -> Document;
    Label : Kind -> Document;
    Say : Kind -> Sentence ;
    NomKind : NomMod -> Obj -> Kind ;
    AdjKind : Property -> Kind -> Kind ;
    RelKind : Kind -> Rel -> Obj -> Kind ;
    Nof : Digits -> Kind -> Obj ;
    One : Kind -> Obj ;
    Many : Kind -> Obj ;
    Some : Kind -> Obj ;
    M : Kind -> Obj ;
    Few : Kind -> Obj ;
    This : Kind -> Obj ;
    That : Kind -> Obj ;
    Every : Kind -> Obj ;
    All : Kind -> Obj ;
    -- Most : Kind -> Obj ;
    -- Only : Kind -> Obj ;
    Not : Kind -> Obj ;
    ActorWe : Actor ;

    And : Obj -> Obj -> Obj;
    Or : Obj -> Obj -> Obj;
    And3 : Obj -> Obj -> Obj -> Obj;
    Or3 : Obj -> Obj -> Obj -> Obj;

    Above : Rel ;
    After : Rel ;
    Before : Rel ;
    Between : Rel ;
    During : Rel ;
    For : Rel ;
    From : Rel ;
    In : Rel ;
    Of : Rel ;
    On : Rel ;
    Through : Rel ;
    To : Rel ;
    With : Rel ;
    WithHelpOf : Rel ;
    Without : Rel ;

    Everything : Obj ;
    Everybody : Obj ;
    ActorEverybody : Actor ;
    Something : Obj ;
    Somebody : Obj ;
    ActorSomebody : Actor ;


    Add2 : Action ;
    Add : Action ;
    Arrive : Action ;
    Become : Action ;
    Change2 : Action ;
    Change : Action ;
    Connect2 : Action ;
    Connect : Action ;
    Copy : Action ;
    Copy2 : Action ;
    Create2 : Action ;
    Create : Action ;
    Delete2 : Action ;
    Delete : Action ;
    End2 : Action ;
    End : Action ;
    Get2 : Action ;
    Get : Action ;
    Help2 : Action ;
    Help : Action ;
    Insert2 : Action ;
    Insert : Action ;
    Install2 : Action ;
    Install : Action ;
    Process2 : Action ;
    Process : Action ;
    Read2 : Action ;
    Read : Action ;
    Receive2 : Action ;
    Receive : Action ;
    Remove2 : Action ;
    Remove : Action ;
    Retrieve2 : Action ;
    Retrieve : Action ;
    Search2 : Action ;
    Send2 : Action ;
    Send : Action ;
    Save2 : Action ;
    Save : Action ;
    Select2 : Action ;
    Select : Action ;
    Start2 : Action ;
    Start : Action ;
    Show2 : Action ;
    Show : Action ;
    Use2 : Action ;
    Use : Action ;
    Update2 : Action ;
    Update : Action ;
    Verify2 : Action ;
    Verify : Action ;
    Write2 : Action ;
    Write : Action ;

    Send3 : Action3 ;
    Copy3 : Action3 ;

    Access : Kind ;
    Child : Kind ;
    Data : Kind ;
    File : Kind ;
    Filter : Kind ;
    Folder : Kind ;
    Function : Kind ;
    Group : Kind ;
    Measurement : Kind ;
    Message : Kind ;
    Note : Kind ;
    Piece : Kind ;
    Position : Kind ;
    AProcess : Kind ;
    Resource : Kind ;
    Ring : Kind ;
    Role : Kind ;
    Search : Kind ;
    Size : Kind ;
    Sender : Kind ;
    Setting : Kind ;
    System : Kind ;
    Task : Kind ;
    Time : Kind ;
    User : Kind ;

    ActorAccess : Actor ;
    ActorChild : Actor ;
    ActorData : Actor ;
    ActorFile : Actor ;
    ActorFilter : Actor ;
    ActorFolder : Actor ;
    ActorFunction : Actor ;
    ActorGroup : Actor ;
    ActorMeasurement : Actor ;
    ActorMessage : Actor ;
    ActorNote : Actor ;
    ActorPiece : Actor ;
    ActorPosition : Actor ;
    ActorProcess : Actor ;
    ActorResource : Actor ;
    ActorRing : Actor ;
    ActorRole : Actor ;
    ActorSearch : Actor ;
    ActorSize : Actor ;
    ActorSender : Actor ;
    ActorSetting : Actor ;
    ActorSystem : Actor ;
    ActorTask : Actor ;
    ActorTime : Actor ;
    ActorUser : Actor ;

    AccessOf : NomMod ;
    ChildOf : NomMod ;
    DataOf : NomMod ;
    FileOf : NomMod ;
    FilterOf : NomMod ;
    FolderOf : NomMod ;
    FunctionOf : NomMod ;
    GroupOf : NomMod ;
    MeasurementOf : NomMod ;
    MessageOf : NomMod ;
    NoteOf : NomMod ;
    PieceOf : NomMod ;
    PositionOf : NomMod ;
    ProcessOf : NomMod ;
    ResourceOf : NomMod ;
    RingOf : NomMod ;
    RoleOf : NomMod ;
    SearchOf : NomMod ;
    SizeOf : NomMod ;
    SenderOf : NomMod ;
    SettingOf : NomMod ;
    SystemOf : NomMod ;
    TaskOf : NomMod ;
    TimeOf : NomMod ;
    UserOf : NomMod ;

    Active : Property ;
    Additional : Property ;
    Automatic : Property ;
    Connected : Property ;
    Created : Property ;
    External : Property ;
    Internal : Property ;
    Main : Property ;
    New : Property ;
    Old : Property ;
    Passive : Property ;
    Correct : Property ;
    Wrong : Property ;

    ActorCan : Actor -> Action -> Obj -> Sentence ;
    ActorMust : Actor -> Action -> Obj -> Sentence ;
    ActorDone : Actor -> Action -> Obj -> Sentence ;
    ActorDoes : Actor -> Action -> Obj -> Sentence ;
    -- == DoOn : Actor -> Action -> Obj -> Sentence ;
    ActorDoes3 : Actor -> Action3 -> Obj -> Obj -> Sentence ;
    ActorWillDo : Actor -> Action -> Obj -> Sentence ;
    CanDone : Action -> Obj -> Sentence ;
    Do : Action -> Obj -> DoCommand ;
    Doing : Action -> Obj -> Sentence ;
    DoingAction : Action -> Sentence ;
    DoingByItself : Action -> Sentence ;
    Done : Action -> Obj -> Sentence ;
    NotDone : Action -> Obj -> Sentence ;
    WillDo : Action -> Obj -> Sentence ;

    SystemDone : Action -> Obj -> Sentence ;
    SystemCan : Action -> Obj -> Sentence ;
    WeCan : Action -> Obj -> Sentence ;
    WeDone : Action -> Obj -> Sentence ;
}
