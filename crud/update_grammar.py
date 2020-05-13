#!usr/bin/python3
# -*- coding: utf-8 -*-

"""
- analize Lex files for additions
- add entries into other files
"""
import glob
import os
import sys


def paths(abs_path):
    filename, file_extension = os.path.splitext(abs_path)
    dirname = os.path.dirname(abs_path)
    basename = os.path.basename(filename)
    glob_pattern = 'Lex{}???{}'.format(basename, file_extension)
    lexicons = [os.path.join(dirname, fn) for fn in glob.glob(glob_pattern)]
    lexicon_i = os.path.join(dirname, 'Lex{}{}'.format(basename, file_extension))
    abstract_i = os.path.join(dirname, '{}i{}'.format(basename, file_extension))
    return abstract_i, lexicon_i, lexicons


def main(abs_grammar_path):
    abstract_i, lexicon_i, lexicons = paths(abs_grammar_path)
    # TODO: implement


if __name__ == "__main__":
    abs_grammar_path = sys.argv[1]
    main(abs_grammar_path)