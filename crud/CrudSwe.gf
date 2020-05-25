--# -path=.:alltenses:prelude

concrete CrudSwe of Crud = NumeralSwe ** CrudI with
  (Syntax = SyntaxSwe),
  (Numeral = NumeralSwe),
  (Verb = VerbSwe),
  (WordNet = WordNetSwe),
  (LexCrud = LexCrudSwe) ;
