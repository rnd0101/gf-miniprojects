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


{ENTRIES}

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
