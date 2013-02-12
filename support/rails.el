;; rails.el --- Rails on Emacs
;;
;; Copyright (c) 2013 David Conner
;;
;; Author: David Conner <dconner.pro@gmail.com>
;; URL:
;; Version: 0.0.1
;; Keywords: me

;;; Commentary:

;; Codin' some Rails, boss.

;;; License:

;; Go on and code some rails, bubb.

;;; Code:

;; Railin' it on up now, boss.

;;==============================;;
;; Emacs on Rails
;;==============================;;

;; syntax highlight Gemfile, etc.
(add-to-list 'auto-mode-alist '("/Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("/Vagrantfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("/Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))

;; don't edit Rubinius bytecode
(add-to-list 'completion-ignored-extensions ".rbc")

;;==============================;;
;; RiNaRi
;;==============================;;
;; rinari-launch to start

;; always enable (for now)
;; TODO: pass in an option or something
(require 'rinari)

;; install problems?
;;   require 'cl ?? failed
;;   also a few functions could not be found (rinari-find??)

;;To have Rinari automatically update your tags-file-name variable
;;  to point to the tags of your current rails project,
;;  set rinari-tags-file-name to the path to your tags file
;;  relative to the root of your rails applications.
;;(setq rinari-tags-file-name "TAGS")

;;==============================;;
;; MuMaMo-Mode (for .rhtml)
;;==============================;;
;; MU-ltuple
;; MA-jor
;; MO-des
;; MuMaMo-Mode for rhtml files
;;==============================;;
;; http://www.emacswiki.org/cgi-bin/wiki/MuMaMo
;; http://rinari.rubyforge.org/MuMaMo_002dMode.html#MuMaMo_002dMode
;;==============================;;
;; (add-to-list 'load-path "~/path/to/your/elisp/nxml-directory/util")
;; (require 'mumamo-fun)
;; (setq mumamo-chunk-coloring 'submode-colored)
;; (add-to-list 'auto-mode-alist '("\\.rhtml\\'" . eruby-html-mumamo))
;; (add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-html-mumamo))

;;==============================;;
;; Haml-Mode
;;==============================;;
;; Note that as HAML uses spaces only for indentation
;;   make sure you turn off tabs, also you can enable auto-indent mode.
;;
;; hmmmm, should i cut? do i need?
;;
;;(add-hook 'haml-mode-hook
;;          (lambda ()
;;            (setq indent-tabs-mode nil)
;;            (define-key haml-mode-map "\C-m" 'newline-and-indent)))

;;==============================;;
;; RVM
;;==============================;;
;; Emacs needs to use the proper version of ruby
;;   otherwise, syntax highlighting is whack
;;   and Rinari does not work!
;;(require 'rvm)
(rvm-use-default)

;;==============================;;
;; other ruby/rails tools
;;==============================;;
;; snippets/rails-snippets
;;   http://code.google.com/p/yasnippet/
;;   http://github.com/eschulte/yasnippets-rails/tree/master
;;
;; ruby-debug
;;   http://github.com/eschulte/yasnippets-rails/tree/master
;;
;; rspec-mode?
;; ruby-test-mode?
;; ruby-tools?
