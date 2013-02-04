http://ergoemacs.org/emacs/ergonomic_emacs_keybinding.html
http://devblog.avdi.org/category/emacs-reboot/
http://www.cyborganize.org/clarity/software/emacs-org-mode-installation-configuration-and-tutorial/installing-and-using-ergoemacs-for-intermediate-emacs-users/

Emacs Productivity:
===================
http://ergoemacs.org/emacs/effective_emacs.html

1. Help Functions
2. Window Splitting
3. Dired
4. iBuffer
5. Remap Freq Keys
6. Find/Replace && Regex

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
http://philjackson.github.com/magit/magit.html

C-x g		magit-status
C-c C-c		magit-log-edit-commit

d	diff
s	stage
u	unstage
c	enter commit description
P p	push commits

Markdown Mode:
==============
http://jblevins.org/projects/markdown-mode/

C-c C-c p	markdown preview
M-x		markdown-mode

Gists:
======
??		gist-region-or-buffer
