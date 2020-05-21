abstract Crud = Numeral ** {
  flags startcat = Document ;
  cat
    Kind ;
    Term ;
    Actor ;
    Property ;
    Action ;
    Action3 ;
    DoCommand ;
    Status ;
    Clause ;
    NumberOf ;
    Document ;
    Rel ;
  fun
    Doc : Clause -> Document ;
    Command : DoCommand -> Document;
    Event : Kind -> Status -> Clause ;
    NegEvent : Kind -> Status -> Clause ;
    Say : Kind -> Clause ;
    AdjKind : Property -> Kind -> Kind ;
    RelKind : Kind -> Rel -> Kind -> Kind ;
    NItemsDig : Digits -> Kind -> Clause ;
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
    Send2 : Action ;
    Send : Action ;
    Show2 : Action ;
    Show : Action ;
    Update2 : Action ;
    Update : Action ;
    Verify2 : Action ;
    Verify : Action ;
    Write2 : Action ;
    Write : Action ;

    Send3 : Action3 ;

    Data : Kind ;
    Function : Kind ;
    Group : Kind ;
    Measurement : Kind ;
    Message : Kind ;
    Note : Kind ;
    Piece : Kind ;
    Position : Kind ;
    AProcess : Kind ;
    Role : Kind ;
    Setting : Kind ;
    System : Kind ;
    Task : Kind ;
    Time : Kind ;
    User : Kind ;

    ActorData : Actor ;
    ActorFunction : Actor ;
    ActorGroup : Actor ;
    ActorMeasurement : Actor ;
    ActorMessage : Actor ;
    ActorNote : Actor ;
    ActorPiece : Actor ;
    ActorPosition : Actor ;
    ActorProcess : Actor ;
    ActorRole : Actor ;
    ActorSetting : Actor ;
    ActorSystem : Actor ;
    ActorTask : Actor ;
    ActorTime : Actor ;
    ActorUser : Actor ;

    Active : Property ;
    Additional : Property ;
    Connected : Property ;
    Created : Property ;
    External : Property ;
    Internal : Property ;
    Passive : Property ;

    ActorCan : Actor -> Action -> Kind -> Clause ;
    ActorMust : Actor -> Action -> Kind -> Clause ;
    DoDo : Action -> Kind -> DoCommand ;
    ActorDone : Actor -> Action -> Kind -> Clause ;
    ActorDoes : Actor -> Action -> Kind -> Clause ;
    -- == DoOn : Actor -> Action -> Kind -> Clause ;
    ActorDoes3 : Actor -> Action3 -> Kind -> Kind -> Clause ;
    ActorWillDo : Actor -> Action -> Kind -> Clause ;
    CanDone : Action -> Kind -> Clause ;
    Do : Action -> Kind -> DoCommand ;
    DoOnMany : Action -> Kind -> DoCommand ;
    Doing : Action -> Kind -> Clause ;
    DoingAction : Action -> Clause ;
    DoingByItself : Action -> Clause ;
    Done : Action -> Kind -> Clause ;
    NotDone : Action -> Kind -> Clause ;
    WillDo : Action -> Kind -> Clause ;

    SystemDone : Action -> Kind -> Clause ;
    SystemCan : Action -> Kind -> Clause ;
    WeCan : Action -> Kind -> Clause ;
    WeDone : Action -> Kind -> Clause ;
}
