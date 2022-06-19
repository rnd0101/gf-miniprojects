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
    NomMod ;
    NumberOf ;
    Obj ;
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
    NomKind : NomMod -> Obj -> Kind ;
    AdjKind : Property -> Kind -> Kind ;
    RelKind : Kind -> Rel -> Kind -> Kind ;
    Nof : Digits -> Kind -> Obj ;
    One : Kind -> Obj ;
    Many : Kind -> Obj ;
    Some : Kind -> Obj ;
    M : Kind -> Obj ;
    Few : Kind -> Obj ;
    This : Kind -> Obj ;
    That : Kind -> Obj ;
    Every : Kind -> Obj ;
    All : Kind -> Obj ;
    -- Most : Kind -> Obj ;
    -- Only : Kind -> Obj ;
    Not : Kind -> Obj ;
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

    Everything : Obj ;
    Everybody : Obj ;
    ActorEverybody : Actor ;
    Something : Obj ;
    Somebody : Obj ;
    ActorSomebody : Actor ;


{ENTRIES}

    ActorCan : Actor -> Action -> Obj -> Sentence ;
    ActorMust : Actor -> Action -> Obj -> Sentence ;
    ActorDone : Actor -> Action -> Obj -> Sentence ;
    ActorDoes : Actor -> Action -> Obj -> Sentence ;
    -- == DoOn : Actor -> Action -> Obj -> Sentence ;
    ActorDoes3 : Actor -> Action3 -> Obj -> Obj -> Sentence ;
    ActorWillDo : Actor -> Action -> Obj -> Sentence ;
    CanDone : Action -> Obj -> Sentence ;
    Do : Action -> Obj -> DoCommand ;
    Doing : Action -> Obj -> Sentence ;
    DoingAction : Action -> Sentence ;
    DoingByItself : Action -> Sentence ;
    Done : Action -> Obj -> Sentence ;
    NotDone : Action -> Obj -> Sentence ;
    WillDo : Action -> Obj -> Sentence ;

    SystemDone : Action -> Obj -> Sentence ;
    SystemCan : Action -> Obj -> Sentence ;
    WeCan : Action -> Obj -> Sentence ;
    WeDone : Action -> Obj -> Sentence ;
}
