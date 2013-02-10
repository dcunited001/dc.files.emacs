- http://ergoemacs.org/emacs/ergonomic_emacs_keybinding.html
- http://devblog.avdi.org/category/emacs-reboot/
- http://www.cyborganize.org/clarity/software/emacs-org-mode-installation-configuration-and-tutorial/installing-and-using-ergoemacs-for-intermediate-emacs-users/

Emacs Productivity:
===================
- http://ergoemacs.org/emacs/effective_emacs.html
- http://www.xkeys.com/xkeys/xkfoot.php

6. Find/Replace && Regex
3. Dired
4. iBuffer
5. Remap Freq Keys

Rails!
=================
Suggested Remappings: http://emacswiki.org/emacs/RubyOnRails

#### Rinari Navigation
C-c ; f (x), where x is:
- c controller
- e environment
- f any file
- h helper
- i migration
- j javascript
- l plugin
- m model
- n configuration
- o log
- p public
- s script
- t test
- v view
- w worker
- x fixture
- y stylesheet

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

Magit:
======
- http://philjackson.github.com/magit/magit.html

C-x g		magit-status
C-c C-c		magit-log-edit-commit

d	diff
s	stage
u	unstage
c	enter commit description
P p	push commits

Markdown Mode:
==============
- http://jblevins.org/projects/markdown-mode/

C-c C-c p	markdown preview
M-x		markdown-mode

Gists:
======
??		gist-region-or-buffer

Twit:
=====
http://emacswiki.org/emacs/TwitteringMode
- M-x twit
- u new tweet
