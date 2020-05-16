incomplete concrete CrudI of Crud = open Numeral, Syntax, Verb, LexCrud in {
  lincat
    Kind = CN;
    Term = NP;
    Actor = NP;
    Property = AP;
    Status = V;
    Action = V2;
    Clause = S;
    Document = Text;
    DoCommand = Imp;
    NumberOf = Str;
    Action2 = Act ;
  lin
    Doc clause = mkText (mkPhr (mkUtt clause)) ;
    Command imp = mkText (mkPhr (mkUtt imp)) ;
    Event what status = mkS anteriorAnt (mkCl (mkNP what) status) ;
    NegEvent what status = mkS pastTense negativePol (mkCl (mkNP what) status) ;
    AdjKind prop what = mkCN prop what;
    --TheActor who = mkNP who ;
    Say phrase = mkS (mkCl phrase);
    NItemsDig num kind = mkS (mkCl (mkNP (mkDet num) kind)) ;
    ActorWe = we_NP ;


    AddAct = add_Act ;
{ENTRIES}

    ActorCan actor action on_what = mkS presentTense (mkCl actor (mkVP can_VV (mkVP action (mkNP on_what) )) );
    ActorDone actor action on_what = mkS pastTense (mkCl actor (mkVP action (mkNP on_what) ));
    ActorDoes actor action on_what = mkS presentTense simultaneousAnt (mkCl actor (mkVP action (mkNP on_what) ));
    CanDone action on_what = mkS presentTense (mkCl (mkNP on_what) (mkVP can_VV (passiveVP action)));
    Do action on_what = mkImp action (mkNP on_what);
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

    EnAct act on_what = mkS presentTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 act.imp));
}
