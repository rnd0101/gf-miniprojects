--# -path=.:alltenses:prelude

concrete CrudRus of Crud = NumeralRus ** CrudI with
  (Syntax = SyntaxRus),
  (Structural = StructuralRus),
  (Numeral = NumeralRus),
  (Verb = VerbRus),
  (Noun = NounRus),
  (Conjunction = ConjunctionRus),
  (LexCrud = LexCrudRus) ;
