--# -path=.:alltenses:prelude

concrete CrudSpa of Crud = NumeralSpa ** CrudI with
  (Syntax = SyntaxSpa),
  (Numeral = NumeralSpa),
  (Verb = VerbSpa),
  (WordNet = WordNetSpa),
  (LexCrud = LexCrudSpa) ;
