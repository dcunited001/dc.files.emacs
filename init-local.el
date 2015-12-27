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
;; (require 'config-markdown)

;; Markdown ============

;; synosaurus requires wn command line tool
;;(require-package 'synosaurus)
;; http://www.emacswiki.org/emacs/Synonyms#toc3
(setq synonyms-file "~/.files/mthesaur.txt")
(setq synonyms-cache-file "~/.files/mthesaur.cache")
(require-package 'synonyms)

(defun setup-markdown-mode
    ;;(synosaurus-mode)
    (synonyms-mode))

(add-hook 'markdown-mode
          'setup-markdown-mode)

;; (autoload 'markdown-mode "markdown-mode"
;; "Major mode for editing Markdown files" t)
;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Markdown ============

(provide 'init-local)


;; TODO: mac fullscreen
;; TODO: mac initialization file
