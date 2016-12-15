;; emacs config extensions
;; - linked and loaded from ~/.emacs.d/lisp/init-local.el
;; - i mostly gave up on writing my own emacs configs
;; - they were far too messy, non-standard and incomplete
;; - just cloned purcell's as a starting point https://github.com/purcell/emacs.d

;; themes
;; - cyberpunk
;; - sanityink-tomorrow
;; - zenburn
;; - ample
;; - ample-zen
;; - noctilux

;;; CODE:

;; ==========================================
;; Env configs
;; ==========================================

(set 'dotfiles-home (file-name-as-directory "~/.files"))
(set 'dotfiles-emacs (concat (file-name-as-directory dotfiles-home) "emacs"))
(set 'dotfiles-elisp (concat (file-name-as-directory dotfiles-emacs) "support"))

(add-to-list 'load-path dotfiles-elisp)

;; ==========================================
;; Formatting
;; ==========================================

(setq-default tab-width 2)
(setq default-tab-width 2)

;; TODO: config init files
;; (add-to-list 'load-path (expand-file-name "~/.files/emacs/support"))
;; (require 'config-Markdown)

;; ==========================================
;; Load specific configs
;; ==========================================

(cond ((eq system-type 'darwin) (require 'config-darwin))
      ((eq system-type 'gnu/linux) (require 'config-linux)))

(require 'config-ruby)
(require 'config-swift)
(require 'bindkeys)

;;TODO: move markdown config
;;TODO: load keyboard config

;; ==========================================
;; Load libs
;; ==========================================

;;(require-package 'icicles)

;; ==========================================
;; Thesaurus/Dictionary
;; ==========================================

(ispell-change-dictionary "english")

;; synosaurus requires wn command line tool
;;(require-package 'synosaurus)

;; http://www.emacswiki.org/emacs/Synonyms#toc3


(setq synonyms-file "~/.files/emacs/mthesaur.txt")
(setq synonyms-cache-file "~/.files/emacs/mthesaur.cache")
(require-package 'synonyms)
(require 'synonyms)

(global-set-key (kbd "H-t") 'synonyms)
(global-set-key (kbd "H-s") 'ispell-word)
;;(global-set-key (kbd "H-w") 'delete-trailing-whitespace)

;; ==========================================
;; markdown Mode
;; ==========================================
(defun setup-markdown-mode ()
  "Configures markdown mode."
  ;;(synosaurus-mode)
  (flyspell-mode)
  (turn-on-auto-fill)
  (add-to-list 'write-file-functions 'delete-trailing-whitespace))

;; NOTE: can't figure out how to load synonyms-mode
;; - without overriding markdown mode (since it's a major mode)
;; - and without screwing up the undo data for the buffer
;; - and for some reason `synonyms` command is not available unless major mode is loaded

;; synosaurus mode requires sn cmd line tool
;; icicles mode needs to load before synonyms
;; (defun setup-markdown-mode
;; (icy-mode)
;; (synonyms-mode))

;; set kramdown as default

(setq markdown-command "kramdown")

(add-hook 'markdown-mode-hook
          'setup-markdown-mode)

;; TODO: remove trailing whitespace

;; (autoload 'markdown-mode "markdown-mode"
;; "Major mode for editing Markdown files" t)
;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(provide 'init-local)

;; TODO: mac fullscreen
;; TODO: mac initialization file
