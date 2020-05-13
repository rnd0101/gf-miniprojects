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

{ENTRIES}

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
