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

(setq default-tab-width 2)

(set-frame-font "DejaVu Sans Mono for Powerline" t t)

;; TODO: config init files
;; (add-to-list 'load-path (expand-file-name "~/.files/emacs/support"))
;; (require 'config-Markdown)

;; ==========================================
;; Load libs
;; ==========================================

;;(require-package 'icicles)

;; synosaurus requires wn command line tool
;;(require-package 'synosaurus)

;; http://www.emacswiki.org/emacs/Synonyms#toc3
(setq synonyms-file "~/.files/mthesaur.txt")
(setq synonyms-cache-file "~/.files/mthesaur.cache")
(require-package 'synonyms)

;; ==========================================
;; markdown Mode
;; ==========================================

;; NOTE: can't figure out how to load synonyms-mode
;; - without overriding markdown mode (since it's a major mode)
;; - and without screwing up the undo data for the buffer
;; - and for some reason `synonyms` command is not available unless major mode is loaded

;; synosaurus mode requires sn cmd line tool
;; icicles mode needs to load before synonyms
;; (defun setup-markdown-mode
;;(icy-mode)
;; (synonyms-mode))

;; (add-hook 'markdown-mode-hook
;; 'setup-markdown-mode)

;; (autoload 'markdown-mode "markdown-mode"
;; "Major mode for editing Markdown files" t)
;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(provide 'init-local)


;; TODO: mac fullscreen
;; TODO: mac initialization file
