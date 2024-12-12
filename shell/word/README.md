# WORD

	Word checks whether or not a word exists in a large set of english words. Alternately, word can be called from one of three links by the names `wordsstartingwith`, `wordscontaining` and `wordsendingwith` which will look for a match for all words starting with, containing, or ending with the string in question (respectively).

## Installation

To install the word script into /usr/local/bin, it's links and it's corresponding data file into /usr/local/share/words, run the command:

	sudo make install 

Alternately, you can run:

	make install dir=<alternate directory>

which will install the script, links and data files into <alternate directory>. Simply run make:

	make

for more install guidance.

## Usage

Word is 
Verse can be called directly with a flag as such:"

	verse <-b|-m|-q> [options]"

where -b indicates searching the bible, -m for the book of mormon, and -q the quran. Calling verse directly without one of these flags will default to the bible. 

or via a hard or soft link to verse with the link names:

	bible | mormon | quran

Using one of these links will not require the -b|-m|-q flag. Any such flag will, in fact, be ignored.

More information can be found by running:

	verse -h

