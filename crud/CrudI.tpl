incomplete concrete CrudI of Crud = open Numeral, Syntax, Verb, Noun, LexCrud in {
  lincat
    Action = V2;
    Action3 = V3;
    Actor = NP;
    Obj = NP;
    Clause = Cl;
    DoCommand = Utt;
    Document = Text;
    NomMod = N2;
    Kind = CN;
    NumberOf = Str;
    Property = AP;
    Rel = Prep;
    Sentence = S;
    Status = V;
    Term = NP;
  lin
    Doc clause = mkText (mkPhr (mkUtt clause)) ;
    Command imp = mkText (mkPhr imp) ;
    Label what = mkText (mkPhr (mkUtt what)) ;
    Event what status = mkS anteriorAnt (mkCl (mkNP what) status) ;
    NegEvent what status = mkS pastTense negativePol (mkCl (mkNP what) status) ;
    NomKind nommod np = ComplN2 nommod np ;
    AdjKind prop what = mkCN prop what;
    RelKind what how what2 = mkCN what (mkAdv how (mkNP what2)) ;
    Say phrase = mkS (mkCl phrase);
    Nof num kind = mkNP (mkDet num) kind ;
    All what = PredetNP all_Predet (mkNP aPl_Det what) ;
    -- Most what = PredetNP most_Predet (mkNP aPl_Det what) ;
    -- Only what = PredetNP only_Predet (mkNP aSg_Det what) ;
    Not what = PredetNP not_Predet (mkNP aPl_Det what) ;
    Some what = mkNP someSg_Det what ;
    ActorWe = we_NP ;
    One what = mkNP what ;
    M what =  mkNP aPl_Det what ;
    Many what =  mkNP many_Det what ;
    Few what =  mkNP few_Det what ;
    This what =  mkNP this_Det what ;
    That what =  mkNP that_Det what ;
    Every what =  mkNP every_Det what ;

    Everything = everything_NP ;
    Everybody = everybody_NP ;
    ActorEverybody = everybody_NP ;
    Something = something_NP ;
    Somebody = somebody_NP ;
    ActorSomebody = somebody_NP ;

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

    ActorCan actor action on_what = mkS presentTense (mkCl actor (mkVP can_VV (mkVP action on_what )) );
    ActorMust actor action on_what = mkS presentTense (mkCl actor (mkVP must_VV (mkVP action on_what )) );
    ActorDone actor action on_what = mkS pastTense (mkCl actor (mkVP action on_what ));
    -- == DoOn actor action on_what = mkS pastTense (mkCl actor action on_what);
    ActorDoes actor action on_what = mkS presentTense simultaneousAnt (mkCl actor (mkVP action on_what ));
    ActorDoes3 actor action on_what on_what2 = mkS presentTense simultaneousAnt (mkCl actor (mkVP action on_what on_what2));
    ActorWillDo actor action on_what = mkS futureTense simultaneousAnt (mkCl actor (mkVP action on_what ));
    CanDone action on_what = mkS presentTense (mkCl on_what (mkVP can_VV (passiveVP action)));
    Do action on_what = makeImpoliteImp action on_what;
    Doing action on_what = mkS presentTense simultaneousAnt (mkCl on_what (PassV2 action));
    DoingAction action = mkS presentTense simultaneousAnt (mkCl (passiveVP action));
    DoingByItself action = mkS presentTense simultaneousAnt (mkCl (reflexiveVP action));
    Done action on_what = mkS pastTense (mkCl on_what (PassV2 action));
    NotDone action on_what = mkS pastTense negativePol (mkCl on_what (PassV2 action));
    WillDo action on_what = mkS futureTense simultaneousAnt (mkCl on_what (PassV2 action));

    SystemCan action on_what = ActorCan ActorSystem action on_what;
    SystemDone action on_what = ActorDone ActorSystem action on_what ;
    WeCan action on_what = ActorCan ActorWe action on_what ;
    WeDone action on_what = ActorDone ActorWe action on_what ;
}
