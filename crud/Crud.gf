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
    NumberOf ;
    Property ;
    Rel ;
    Sentence ;
    Status ;
    Term ;
  fun
    Doc : Sentence -> Document ;
    Command : DoCommand -> Document;
    Label : Kind -> Document;
    Event : Kind -> Status -> Sentence ;
    NegEvent : Kind -> Status -> Sentence ;
    Say : Kind -> Sentence ;
    AdjKind : Property -> Kind -> Kind ;
    RelKind : Kind -> Rel -> Kind -> Kind ;
    NItemsDig : Digits -> Kind -> Sentence ;
    ActorWe : Actor ;

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

    Abandon : Action ;


    Add2 : Action ;
    Add : Action ;
    Arrive : Action ;
    Become : Action ;
    Change2 : Action ;
    Change : Action ;
    Connect2 : Action ;
    Connect : Action ;
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
    Retrieve2 : Action ;
    Retrieve : Action ;
    Search2 : Action ;
    Send2 : Action ;
    Send : Action ;
    Save2 : Action ;
    Save : Action ;
    Select2 : Action ;
    Select : Action ;
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

    Access : Kind ;
    Child : Kind ;
    Data : Kind ;
    File : Kind ;
    Function : Kind ;
    Group : Kind ;
    Measurement : Kind ;
    Message : Kind ;
    Note : Kind ;
    Piece : Kind ;
    Position : Kind ;
    AProcess : Kind ;
    Resource : Kind ;
    Role : Kind ;
    Search : Kind ;
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
    ActorFunction : Actor ;
    ActorGroup : Actor ;
    ActorMeasurement : Actor ;
    ActorMessage : Actor ;
    ActorNote : Actor ;
    ActorPiece : Actor ;
    ActorPosition : Actor ;
    ActorProcess : Actor ;
    ActorResource : Actor ;
    ActorRole : Actor ;
    ActorSearch : Actor ;
    ActorSender : Actor ;
    ActorSetting : Actor ;
    ActorSystem : Actor ;
    ActorTask : Actor ;
    ActorTime : Actor ;
    ActorUser : Actor ;

    Active : Property ;
    Additional : Property ;
    Automatic : Property ;
    Connected : Property ;
    --Created : Property ;
    External : Property ;
    Internal : Property ;
    Main : Property ;
    Passive : Property ;

    ActorCan : Actor -> Action -> Kind -> Sentence ;
    ActorMust : Actor -> Action -> Kind -> Sentence ;
    ActorDone : Actor -> Action -> Kind -> Sentence ;
    ActorDoes : Actor -> Action -> Kind -> Sentence ;
    -- == DoOn : Actor -> Action -> Kind -> Sentence ;
    ActorDoes3 : Actor -> Action3 -> Kind -> Kind -> Sentence ;
    ActorWillDo : Actor -> Action -> Kind -> Sentence ;
    CanDone : Action -> Kind -> Sentence ;
    Do : Action -> Kind -> DoCommand ;
    DoOnMany : Action -> Kind -> DoCommand ;
    Doing : Action -> Kind -> Sentence ;
    DoingAction : Action -> Sentence ;
    DoingByItself : Action -> Sentence ;
    Done : Action -> Kind -> Sentence ;
    NotDone : Action -> Kind -> Sentence ;
    WillDo : Action -> Kind -> Sentence ;

    SystemDone : Action -> Kind -> Sentence ;
    SystemCan : Action -> Kind -> Sentence ;
    WeCan : Action -> Kind -> Sentence ;
    WeDone : Action -> Kind -> Sentence ;
}
