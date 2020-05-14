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

    Add2 : Action ;
    Add : Action ;
    Arrive : Action ;
    Connect2 : Action ;
    Connect : Action ;
    Create : Action ;
    Delete : Action ;
    End2 : Action ;
    End : Action ;
    Get2 : Action ;
    Get : Action ;
    Process2 : Action ;
    Process : Action ;
    Receive2 : Action ;
    Receive : Action ;
    Show2 : Action ;
    Show : Action ;
    Update2 : Action ;
    Update : Action ;
    Verify2 : Action ;
    Verify : Action ;

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

    Do : Action -> Kind -> DoCommand ;
    SystemDone : Action -> Kind -> Clause ;
    SystemCan : Action -> Kind -> Clause ;
    ActorCan : Actor -> Action -> Kind -> Clause ;
    WeDone : Action -> Kind -> Clause ;
    CanDone : Action -> Kind -> Clause ;
    Done : Action -> Kind -> Clause ;
    WillDo : Action -> Kind -> Clause ;
    Doing : Action -> Kind -> Clause ;
    DoingByItself : Action -> Clause ;
    DoingAction : Action -> Clause ;
    NotDone : Action -> Kind -> Clause ;
}
