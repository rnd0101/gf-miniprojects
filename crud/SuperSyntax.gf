--# -coding=utf-8

instance SuperSyntax of LexCrud = open Prelude, SyntaxRus, ParadigmsRus, ResRus in {
  oper
     -- mkVerbSet verb1, verb2, "сдела"
     mkVerbSet : V -> V -> Str -> V =
       \perf_verb, imperf_verb, short_part_stem ->
          table {
            do=perf_verb;
            doing=imperf_verb;
            done=table {
              Sg Masc => short_part_stem + "н" ;
              Sg Fem => short_part_stem + "на" ;
              Sg Neut => short_part_stem + "но" ;
              Pl _ => short_part_stem + "ны" ;
            };
          }
}