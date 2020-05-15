abstract Crud = Numeral ** {
  flags startcat = Document ;
  cat
    Kind ;
    DetKind ;
    Actor ;
    Property ;
    Action ;
    DoCommand ;
    Status ;
    Clause ;
    NumberOf ;
    Document ;
  fun
    Doc : Clause -> Document ;
    Command : DoCommand -> Document;
    Event : Kind -> Status -> Clause ;
    NegEvent : Kind -> Status -> Clause ;
    Say : Kind -> Clause ;
    AdjKind : Property -> Kind -> Kind ;
    --TheActor : Kind -> Actor ;
    NItemsDig : Digits -> Kind -> Clause ;
    ActorWe : Actor ;

    Add2 : Action ;
    Add : Action ;
    Arrive : Action ;
    Become : Action ;
    Connect2 : Action ;
    Connect : Action ;
    Create : Action ;
    Delete : Action ;
    Delete2 : Action ;
    End2 : Action ;
    End : Action ;
    Get2 : Action ;
    Get : Action ;
    Process2 : Action ;
    Process : Action ;
    Receive2 : Action ;
    Receive : Action ;
    Retrieve2 : Action ;
    Retrieve : Action ;
    Show2 : Action ;
    Show : Action ;
    Update2 : Action ;
    Update : Action ;
    Verify2 : Action ;
    Verify : Action ;

    Data : Kind ;
    Group : Kind ;
    Measurement : Kind ;
    Note : Kind ;
    Piece : Kind ;
    Position : Kind ;
    AProcess : Kind ;
    System : Kind ;
    Task : Kind ;
    Time : Kind ;
    User : Kind ;

    ActorData : Actor ;
    ActorGroup : Actor ;
    ActorMeasurement : Actor ;
    ActorNote : Actor ;
    ActorPiece : Actor ;
    ActorPosition : Actor ;
    ActorProcess : Actor ;
    ActorSystem : Actor ;
    ActorTask : Actor ;
    ActorTime : Actor ;
    ActorUser : Actor ;

    Additional : Property ;
    Connected : Property ;
    External : Property ;
    Internal : Property ;

    ActorCan : Actor -> Action -> Kind -> Clause ;
    ActorDone : Actor -> Action -> Kind -> Clause ;
    ActorDoes : Actor -> Action -> Kind -> Clause ;
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
