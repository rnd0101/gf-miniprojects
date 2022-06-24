--# -path=.:alltenses:prelude

concrete CrudFin of Crud = NumeralFin ** CrudI with
  (Syntax = SyntaxFin),
  (Structural = StructuralFin),
  (Numeral = NumeralFin),
  (Verb = VerbFin),
  (Noun = NounFin),
  (Conjunction = ConjunctionFin),
  (LexCrud = LexCrudFin) ;
