incomplete concrete CrudI of Crud = open Numeral, Syntax, Verb, LexCrud in {
  lincat
    Kind = CN;
    DetKind = NP;
    Property = AP;
    Adjective = A;
    Complem = Str;
    Status = V;
    Action = V2;
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
    Say phrase = mkS (mkCl phrase);
    NItemsDig num kind = mkS (mkCl (mkNP (mkDet num) kind)) ;

{ENTRIES}

    Do action on_what = mkImp action (mkNP on_what);
    Doing action on_what = mkS presentTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 action));
    DoingAction action = mkS presentTense simultaneousAnt (mkCl (passiveVP action));
    DoingByItself action = mkS presentTense simultaneousAnt (mkCl (reflexiveVP action));
    Done action on_what = mkS pastTense (mkCl (mkNP on_what) (PassV2 action));
    NotDone action on_what = mkS pastTense negativePol (mkCl (mkNP on_what) (PassV2 action));
    SystemDone action on_what = mkS pastTense anteriorAnt (mkCl (mkNP system_N) (mkVP action (mkNP on_what) ));
    -- SystemDone action on_what = mkS pastTense simultaneousAnt (mkCl (mkNP system_N) (mkVP action (mkNP on_what) ));
    WeDone action on_what = mkS pastTense (mkCl we_NP (mkVP action (mkNP on_what) ));
    WillDo action on_what = mkS futureTense simultaneousAnt (mkCl (mkNP on_what) (PassV2 action));
}
