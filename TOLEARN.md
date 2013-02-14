- http://ergoemacs.org/emacs/ergonomic_emacs_keybinding.html
- http://devblog.avdi.org/category/emacs-reboot/
- http://www.cyborganize.org/clarity/software/emacs-org-mode-installation-configuration-and-tutorial/installing-and-using-ergoemacs-for-intermediate-emacs-users/

Emacs Productivity:
===================
- http://ergoemacs.org/emacs/effective_emacs.html
- http://www.xkeys.com/xkeys/xkfoot.php
- http://martinowen.net/blog/2010/02/tips-for-emacs-ibuffer.html

Find/Replace && Regex
---------------------
**ack**
**isearch**

1. Buffer Navigation
2. Dired
3. iBuffer
4. Remap Freq Keys
5. SmartTab/HippieExpand
6. Todo Navigation

Magit:
======
- MAGIT CHEATSHEET: http://daemianmack.com/magit-cheatsheet.html
- http://philjackson.github.com/magit/magit.html

C-x g		magit-status
C-c C-c		magit-log-edit-commit

#### TODO: fix diff!  doesn't seem to work right

d	diff (vs head)
D   diff (vs SHA)
s	stage
u	unstage
c	enter commit description
P p	push commits

Gists:
======
??		gist-region-or-buffer


iBuffer
=======
- TODO: define groups
-

Dired
=====
http://www.gnu.org/software/emacs/manual/html_node/emacs/Dired.html

####copy/rename/print/etc
- C => Copy
- D => Delete
- R => Rename
- S => Symlink
- M => Modespec (change permissions)

Rails!
=================
Suggested Remappings: http://emacswiki.org/emacs/RubyOnRails

### M-R w
#### MVC, etc
- m model
- v view
- c controller
- M mailer
- a application
- w worker
- i migration
- f file-in-project
- ; find-by-context
- h helper

#### Config
- n configuration
- e environment
- o log

#### Tests
- t test
- r rspec
- F features
- S steps
- x fixture
- z rspec-fixture

#### HTML/CSS/JS
- j javascript
- y stylesheet
- Y sass
- p public

#### Misc
- l lib
- s script
- C cells
- u plugin

### M-r c
- ' find-by-context
- ; find-by-context
- c **console**
- d cap
- e insert-erb-skeleton
- g rgrep
- p goto-partial
- q sql
- r **rake**
- s script
- t test
- w web-server
- x extract-partial

#### Rinari Tags
http://rinari.rubyforge.org/Navigation.html#Navigation

to create a tags file using ctags:

    ctags-exuberant -a -e -f TAGS --tag-relative -R app lib vendor

#### Rinary Testing
rinari-test
> Test the current ruby function. If current function is not a test,
> then try to jump to the related test and run it.
> Dump output to a compilation buffer allowing jumping
> between errors and source code.

#### Rinary Execution
- rinari-rake
- rinari-console
- rinari-sql
- rinari-web-server
- rinari-test

#### Rinary Misc
- rinari-rgrep
- rinari-insert-erb-skeleton

Google!
=================
C-c g		initiate google search!

iBuffer:
========
C-x C-b		list buffers
C-x b		quicklist buffers

m	Mark
u	Unmark
*u	Mark unsaved
S	Save marked buffer
D	Close marked buffers

Text-Nav:
=========
[Home/End]			begin/end line
M-[Home/End]		??
C-[Home/End]		begin/end doc

[pageup/pagedown]	pageup/pagedown

M-[jikl]			arrow keys
M-[JL]				begin/end doc
M-[IK]				pageup/pagedown
M-[hH]				begin/end line

M-[DF]				delete char
M-[ER]				delete word
M-[gG]				delete to home/end

M-[xX]				cut/cut-all
M-[cC]				copy/copy-all
M-[vV]				paste/paste-prev

M-[Space]			Set Mark
M-s-[Space]			Mark Paragraph

Misc:
=====
M-g M-g		goto-line
??		linum-mode

C-x C-e					eval current line
M-x eval-region			eval region
M-x eval-buffer			eval current buffer
M-x load-file [file]	eval line

Markdown Mode:
==============
- http://jblevins.org/projects/markdown-mode/

C-c C-c p	markdown preview
M-x		markdown-mode

Twit:
=====
http://emacswiki.org/emacs/TwitteringMode
- M-x twit
- u new tweet
- C-u C-m [Enter] Retweet (Native)
