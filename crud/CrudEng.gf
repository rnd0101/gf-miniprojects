--# -path=.:alltenses:prelude

concrete CrudEng of Crud = NumeralEng ** CrudI with
  (Syntax = SyntaxEng),
  (Numeral = NumeralEng),
  (Verb = VerbEng),
  (WordNet = WordNetEng),
  (LexCrud = LexCrudEng) ;
