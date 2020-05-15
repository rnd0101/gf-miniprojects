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

{ENTRIES}

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
