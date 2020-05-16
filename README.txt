Some prototypes for Grammatical Framework
=========================================

CRUD - CRUD operations
----------------------

To try out:

$ cd crud
$ gf

> i CrudEng.gf CrudFin.gf CrudRus.gf

Crud> l Done Process Piece
piece was processed
kappale käsiteltiin
штука обработалась
Crud> gr -number=1000  | l -treebank | wf

Showcase:

python crud.py

Tests:

pytest -vv test_crud.py

Adding lexicon:

1. Add new lexicon items to all LexCrud???.gf-files
2. Run Python update_grammar.py
3. Now All gf-files are updated

Adding new functions:

1. Edit CrudI.tpl and Crud.tpl for defitions and types
2. Run Python update_grammar.py
3. Now All gf-files are updated

TODO:

* Rewrite instructions using crud grammar :-)
* Fix TODO-cases in the tests (maybe, in RGL)
* Try to make pytest output unencoded test names
