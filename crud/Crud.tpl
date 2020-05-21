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


{ENTRIES}

    ActorCan : Actor -> Action -> Kind -> Clause ;
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
