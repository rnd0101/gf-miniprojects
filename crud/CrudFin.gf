--# -path=.:alltenses:prelude

concrete CrudFin of Crud = NumeralFin ** CrudI with
  (Syntax = SyntaxFin),
  (Numeral = NumeralFin),
  (WordNet = WordNetFin),
  (Verb = VerbFin),
  (LexCrud = LexCrudFin) ;
