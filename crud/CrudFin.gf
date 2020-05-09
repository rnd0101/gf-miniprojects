--# -path=.:alltenses:prelude

concrete CrudFin of Crud = NumeralFin ** CrudI with
  (Syntax = SyntaxFin),
  (Numeral = NumeralFin),
  (Verb = VerbFin),
  (LexCrud = LexCrudFin) ;
