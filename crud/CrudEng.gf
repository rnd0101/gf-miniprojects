--# -path=.:alltenses:prelude

concrete CrudEng of Crud = NumeralEng ** CrudI with
  (Syntax = SyntaxEng),
  (Structural = StructuralEng),
  (Numeral = NumeralEng),
  (Verb = VerbEng),
  (Noun = NounEng),
  (LexCrud = LexCrudEng) ;
