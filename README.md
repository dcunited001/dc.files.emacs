Emacs Prelude: Keymap
---------------------

NOTE: i have all but abandoned this repo.  the only file that's being
used for now is `init-local.el`, which is loaded by [Steve Purcell's
Emacs](https://github.com/purcell/emacs.d).  

Perhaps one of my biggest
dotfiles mistakes was to attempt to start from 
scratch on my on emacs dotfiles without any experience with emacs
or any idea of what a good emacs config should feel like.  This pretty
much delayed me using emacs by like two years.  My keybindings configs
were all non-standard, so that was another barrier to entry for me.

Another major mistake was trying to use terminal emacs, instead of GUI
emacs.  Yet another was trying to get GUI emacs to behave exactly the
same as terminal emacs.  I should have just gone with GUI emacs, which
works out better for application switching, as I don't need to 
navigate to my terminal app *then also navigate to my emacs tab
within the terminal*.  Config settings that were hard to get to behave
exactly the same within GUI as the terminal include: metakey behavior
and the hyper/super keys.  Basically, i needed to mainain a separate
set of keybindings for emacs in terminal and emacs in GUI.  VERY VERY 
CONFUSING.

Eventually, i will incorporate some of the ideas of my own
`emacs.d` into `init-local.el` and better structure the files loaded
from it.  Some of my emacs ideas weren't too bad, but most were not
unique, they were non-standard and they cost me a lot of time.  

On the other hand, i often wonder how secure it is to load all this
untrusted code from some rando's dotfiles on the internet. But
what are you gonna do. Most of these dotfiles and configs available
online and many of the convenience apps available have a potential
to open glaring vulnerabilities if not configured properly.  Not that
these people are out to get you of course.  I just wonder how much
attackable surface area opens because of scripts like `powerline` and
other shiny tools.  No offense. 


**Note: the keybindings in this file are mostly standard emacs keys and not up to date**

To Learn
--------

* use winner-mode commands to undo/redo window configuration changes
* learn to modify config without restarting emacs

To Do
-------

new:

* haskell config
* config paredit mode for lisps and elisp
* restore C-p functionality

old:

* clean up readme & links
* move links under relavent keyboard sections?
* window management packages
* session restore packages
* check out top packages
* config layout for: r/ess, ruby, etc
* clean up shortcuts

Starter Kits
------------
* https://github.com/bbatsov/prelude-modules
* https://github.com/eschulte/emacs24-starter-kit

Learning Elisp
--------------
* http://ergoemacs.org/emacs/elisp_basics.html

Config Examples
---------------
* http://es.gnu.org/~aleksander/emacs/dotemacs.el
* http://homepages.inf.ed.ac.uk/s0243221/emacs/
* https://github.com/alexott/emacs-configs
* http://www.ee.ryerson.ca/~elf/emacs/dot-emacs-mac
* https://github.com/statico/dotfiles/blob/master/.emacs.d/init.el
* http://www.emacswiki.org/emacs/EmacsNiftyTricks
* http://tapoueh.org/blog/2011/04/15-emacs-kicker.html
* http://kanis.fr/emacs-expert-kit.html
* http://stackoverflow.com/questions/60367/the-single-most-useful-emacs-feature
* http://xahlee.org/emacs/emacs_make_modern.html
* http://xahlee.org/emacs/ergonomic_emacs_keybinding.html
* http://www.masteringemacs.org/
* http://www.masteringemacs.org/articles/2011/02/08/mastering-key-bindings-emacs/

Windows Layouts
---------------
* http://www.emacswiki.org/emacs/SessionManagement
* http://www.emacswiki.org/emacs/LayoutRestore
* http://stackoverflow.com/questions/2572950/preserve-window-layout-in-emacs
* http://www.gnu.org/savannah-checkouts/gnu/emacs/manual/html_node/emacs/Saving-Emacs-Sessions.html
* https://github.com/tlh/workgroups.el
* http://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Configurations.html

Using ESS
---------
* http://ess.r-project.org/Manual/ess.html
* http://www.r-bloggers.com/using-emacs-to-work-with-r/
* http://snap.nlc.dcccd.edu/learn/idaho/textedit.html

Global
------

Binding Hotkeys
===============

    (global-set-key (kbd "<f8>") 'run-current-file)
    (global-unset-key (kbd "C-_"))

To determine a char that involves an escape sequence:
> C-q [enter char]

Admin/Scripting
===============

* M-x     == run emacs command (C-m C-x)
* m!      == run shell command
* C-x m   == start eshell
* C-x M-m == start your default shell
* C-x C-e == eval-last-step (eval-region)
* (ielm)  == start interactive elisp command line

Running Code
=================

* (eval-region) - run several regions of code
* (eval-buffer) - run several buffers of code
* C-M-x   == run expression at cursor

Source Control
=================

* C-x g   == open Magit's status buffer

File Nav
=================

* C-x C-f == Open File (browse by dir)
* C-x C-s == Save Current File

Window Nav
=================

* C-x 0   == close current
* C-x 1   == close all except current
* C-x 2   == split vertically
* C-x 3   == split horizontally
* C-x o   == other-window
* C-x O   == return to previous window
* M-`     == next-multiframe-window
* S-Up    == windmove-up
* S-Down  == windmove-down
* S-Left  == windmove-left
* S-Right == windmove-right

Frame Nav
=================

* C-x 5 0 == Close current frame
* C-x 5 1 == Close all frames except the current one
* C-x 5 2 == Create a new frame

Buffer Nav
=================

* C-x b   == switch to buffer by name
* C-x C-b == show buffers (using ibuffer instead of buffer-list)
* C-x k   == kill current buffer
* C-x C-s == save current buffer
* C-x s   == save all open buffers

Text Nav
=================

* M-b   == backward-word
* M-f   == forward-word
* C-b   == backward-char
* C-f   == forward-char

* C-(f/b) == Forward/Back - Char
* M-(f/b) == Forward/Back - Word
* C-(n/p) == Down/Up - Line (next/prev)
* C-(a/e) == Home/End - Line (alpha/end)
* M-(a/e) == Home/End - Paragraph (alpha/end)
* (C/M)-v == PageDown/PageUp
* M-(</>) == Home/End - File
* C-l     == Recenter the screen on current line

* C-Up   == comint-previous-input ??
* C-Down == comint-previous-input ??

* C-M-h == backward-kill-word (as in Bash/Zsh)
* C-=   == expand-region (incremental text selection)

Text Manipulation
=================

* C-D   == deletes forward one letter.
* C-K   == deletes from the point to the end of the line.
* M-D   == deletes forward one word.
* M-Del == deletes backward one word.

* shift+return == insert an empty line and indent it
* C-Sh-up      == move the current line up
* C-Sh-down    == move the current line down

UNDO/REDO
=================

* C-/   == Undo
* C-x u == Undo
* C-_   == Undo

Copy/Paste
=================

* C-w     == Cut (kill)
* M-w     == Copy (kill-ring-save)
* C-y     == Paste After (yank)
* C-u C-y == Paste Before
* M-y     == Paste History (yank-pop)

Search & Replace
http://emacswiki.org/emacs/CategorySearchAndReplace

* M-g g  == goto-line
=================


Misc Interface
* (color-theme-select)
* C-+ == text-scale-increase
* C-- == text-scale-decrease
* F12 == toggle the Emacs menu bar

Other?
=================

* C-x \ - align-regexp
* M-\ - hippie-expand (replaces default dabbrev-expand)
* C-x p   == proced (manage processes, linux-only)

Help
=================

* F1 k  == describe-key; Show command documentation; prompts for keystrokes"
* C-h k == describe-key
* C-h a == apropos (search in all Emacs symbols)
* C-h b === Show all active key bindings
* C-H f? == Show command name on message line; prompts for keystrokes
* C-H f? == Describe function; prompts for command or function name, shows documentation in other window
* C-H i == Info browser; gives access to online documentation for emacs and more

Twittering Mode
=================

* (twit)  == Open Twittering Buffer
* C-c C-s == Compose

Prelude Mode
------------

* C-c o == open the currently visited file with external program
* C-c g == search in Google for the thing under point (or an interactive query)
* C-c n == fix indentation in buffer and strip whitespace
* C-c f == open recently visitted file
* C-M-\ == indent region (if selected) or the entire buffer
* C-c u == open URL in your default browser
* C-c e == eval a bit of Emacs Lisp code and replace it with its result
* C-c s == swap two active windows
* C-c d == duplicate the current line (or region)
* C-c r == rename the currently visited file and buffer
* C-c t == open a terminal emulator (ansi-term)
* C-c k == kill all open buffers except the one you're currently in
* C-c h == open Helm (a useful means of navigating your buffers and project files)

Projectile
----------
Interactive Emacs Lisp functions, provided by projectile:

* projectile-find-file C-c p f
* projectile-grep C-c p g
* projectile-switch-to-buffer C-c p b
* projectile-multi-occur C-c p o
* projectile-replace C-c p r
* projectile-invalidate-cache C-c p i
* projectile-regenerate-tags C-c p t
* projectile-kill-buffers C-c p k
* projectile-dired C-c p d
* projectile-recentf C-c p e
* projectile-ack C-c p a
* projectile-compile-project C-c p l
* projectile-test-project C-c p p


Emacs Links
-----------

Elisp Data Types
=================

* http://ergoemacs.org/emacs/elisp_list_vector.html

Emacs Starter Kits
=================

* https://github.com/walter/aquamacs-emacs-starter-kit

Keyboard Shortcuts
=================

* http://ergoemacs.org/emacs/keyboard_shortcuts.html
* http://ergoemacs.org/emacs/emacs_kb_shortcuts.html
* http://oracc.museum.upenn.edu/doc/builder/emacs/aquamacs/

Buffers/Windows
=================

* http://blasphemousbits.wordpress.com/2007/05/04/learning-emacs-part-4-buffers-windows-and-frames/

Misc Scripts
=================

* http://github.com/senny/rvm.el
* http://github.com/defunkt/gist.el

Misc Resources
=================

* http://www.masteringemacs.org/reading-guide/
* http://www.masteringemacs.org/articles/2011/10/19/executing-shell-commands-emacs/
* http://www.masteringemacs.org/articles/2010/10/04/beginners-guide-to-emacs/
* http://batsov.com/articles/2012/02/19/package-management-in-emacs-the-good-the-bad-and-the-ugly/
* http://blog.gaz-jones.com/2012/02/01/setting_up_emacs_for_clojure_development.html
* http://www.rgrjr.com/emacs/emacs_cheat.html
* http://blog.revolutionanalytics.com/2011/08/ess.html
* http://ess.r-project.org/index.php?Section=download
* http://ess.r-project.org/Manual/ess.html#Installation
* http://smartic.us/2010/08/01/getting-started-with-emacs-again/
* http://www.emacswiki.org/emacs/CarbonEmacsPackage (carbon emacs?)
