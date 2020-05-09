--# -path=.:alltenses:prelude

concrete CrudRus of Crud = NumeralRus ** CrudI with
  (Syntax = SyntaxRus),
  (Numeral = NumeralRus),
  (Verb = VerbRus),
  (LexCrud = LexCrudRus) ;
