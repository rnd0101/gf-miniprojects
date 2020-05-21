incomplete concrete CrudI of Crud = open Numeral, Syntax, Verb, LexCrud in {
  lincat
    Kind = CN;
    Term = NP;
    Rel = Prep;
    Actor = NP;
    Property = AP;
    Status = V;
    Action = V2;
    Action3 = V3;
    Clause = S;
    Document = Text;
    DoCommand = Imp;
    NumberOf = Str;
  lin
    Doc clause = mkText (mkPhr (mkUtt clause)) ;
    Command imp = mkText (mkPhr (mkUtt imp)) ;
    Event what status = mkS anteriorAnt (mkCl (mkNP what) status) ;
    NegEvent what status = mkS pastTense negativePol (mkCl (mkNP what) status) ;
    AdjKind prop what = mkCN prop what;
    RelKind what how what2 = mkCN what (mkAdv how (mkNP what2)) ;
    Say phrase = mkS (mkCl phrase);
    NItemsDig num kind = mkS (mkCl (mkNP (mkDet num) kind)) ;
    ActorWe = we_NP ;

    Above = above_Prep ;
    After = after_Prep ;
    Before = before_Prep ;
    Between = between_Prep ;
    During = during_Prep ;
    For = for_Prep ;
    From = from_Prep ;
    In = in_Prep ;
    Of = part_Prep ;
    On = on_Prep ;
    Through = through_Prep ;
    To = to_Prep ;
    With = with_Prep ;
    WithHelpOf = by8agent_Prep ;
    Without = without_Prep ;

{ENTRIES}

    ActorCan actor action on_what = mkS presentTense (mkCl actor (mkVP can_VV (mkVP action (mkNP on_what) )) );
    ActorMust actor action on_what = mkS presentTense (mkCl actor (mkVP must_VV (mkVP action (mkNP on_what) )) );
    ActorDone actor action on_what = mkS pastTense (mkCl actor (mkVP action (mkNP on_what) ));
    -- == DoOn actor action on_what = mkS pastTense (mkCl actor action (mkNP on_what));
    ActorDoes actor action on_what = mkS presentTense simultaneousAnt (mkCl actor (mkVP action (mkNP on_what) ));
    ActorDoes3 actor action on_what on_what2 = mkS presentTense simultaneousAnt (mkCl actor (mkVP action (mkNP on_what) (mkNP on_what2)));
    ActorWillDo actor action on_what = mkS futureTense simultaneousAnt (mkCl actor (mkVP action (mkNP on_what) ));
    CanDone action on_what = mkS presentTense (mkCl (mkNP on_what) (mkVP can_VV (passiveVP action)));
    Do action on_what = mkImp action (mkNP on_what);
    DoDo action on_what = mkImp (mkVP verb_NULL (mkVP action (mkNP on_what)));
    DoOnMany action on_what = mkImp action (mkNP aPl_Det on_what);
    Doing action on_what = mkS presentTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 action));
    DoingAction action = mkS presentTense simultaneousAnt (mkCl (passiveVP action));
    DoingByItself action = mkS presentTense simultaneousAnt (mkCl (reflexiveVP action));
    Done action on_what = mkS pastTense (mkCl (mkNP on_what) (PassV2 action));
    NotDone action on_what = mkS pastTense negativePol (mkCl (mkNP on_what) (PassV2 action));
    WillDo action on_what = mkS futureTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 action));

    SystemCan action on_what = ActorCan ActorSystem action on_what;
    SystemDone action on_what = ActorDone ActorSystem action on_what ;
    WeCan action on_what = ActorCan ActorWe action on_what ;
    WeDone action on_what = ActorDone ActorWe action on_what ;
}
