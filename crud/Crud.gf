abstract Crud = Numeral ** {
  flags startcat = Document ;
  cat
    Kind ;
    DetKind ;
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
    NItemsDig : Digits -> Kind -> Clause ;

    AProcess: Kind ;
    Group: Kind ;
    Note: Kind ;
    Piece: Kind ;
    Measurement: Kind ;
    Position: Kind ;
    System: Kind ;
    Task: Kind ;
    Time: Kind ;

    Additional : Property ;
    Connected : Property ;
    External : Property ;
    Internal : Property ;

    Add : Action ;
    Add2 : Action ;
    Arrive : Action ;
    Connect : Action ;
    Connect2 : Action ;
    Create : Action ;
    Delete : Action ;
    End : Action ;
    End2 : Action ;
    Get : Action ;
    Get2 : Action ;
    Process : Action ;
    Process2 : Action ;
    Show : Action ;
    Show2 : Action ;
    Update : Action ;
    Update2 : Action ;

    Do : Action -> Kind -> DoCommand ;
    SystemDone : Action -> Kind -> Clause ;
    WeDone : Action -> Kind -> Clause ;
    Done : Action -> Kind -> Clause ;
    WillDo : Action -> Kind -> Clause ;
    Doing : Action -> Kind -> Clause ;
    DoingByItself : Action -> Clause ;
    DoingAction : Action -> Clause ;
    NotDone : Action -> Kind -> Clause ;
}
