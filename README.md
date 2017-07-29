VIM-COMMENTOUT
==============

Simple and small commenting plugin for vim (single line comments only).

Installation
------------

If you use [vim-pathogen](https://github.com/tpope/vim-pathogen) clone this
stuff into your bundle:

	cd ~/.vim/bundle
	git clone https://github.com/sirjofri/vim-commentout.git

Or if you prefer submodules:

	cd ~/.vim/bundle
	git submodule add https://github.com/sirjofri/vim-commentout.git

Usage
-----

Visual select some code lines and think: "Insert Leading (whatever)" or
"Remove Leading (whatever)". Or just use `il` and `rl`. A prompt will appear.

You can also set a fixed char sequence with `:call CommentOutSetChar("#")`.

License
-------

Beerware. If you want you can give me some gift. (I prefer dark german beer.)
