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
    Interview: Kind ;
    Note: Kind ;
    Piece: Kind ;
    Position: Kind ;
    System: Kind ;
    Task: Kind ;
    Time: Kind ;

    Additional : Property ;
    Connected : Property ;
    External : Property ;
    Internal : Property ;

    Add : Action ;
    Create : Action ;
    Delete : Action ;
    Process : Action ;
    Process2 : Action ;
    Show : Action ;
    Show2 : Action ;
    Update : Action ;

    Do : Action -> Kind -> DoCommand ;
    Done : Action -> Kind -> Clause ;
    WillDo : Action -> Kind -> Clause ;
    Doing : Action -> Kind -> Clause ;
    NotDone : Action -> Kind -> Clause ;
}
