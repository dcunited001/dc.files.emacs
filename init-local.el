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


;; ==========================================
;; Formatting
;; ==========================================

(setq default-tab-width 2)

(defun correct-linux-font (size)
  (set-face-attribute
   'default nil
   :font (font-spec
          :name "-unknown-DejaVu Sans Mono for Powerline-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1"
          :size size)))

(if (eq system-type 'darwin)
    (set-frame-font "DejaVu Sans Mono for Powerline" 14 t)
  (correct-linux-font 22))

;;(set-frame-font "DejaVu Sans Mono for Powerline" 14 t)
;;-unknown-DejaVu Sans Mono for Powerline-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1

;; TODO: config init files
;; (add-to-list 'load-path (expand-file-name "~/.files/emacs/support"))
;; (require 'config-Markdown)

;; ==========================================
;; Load specific configs
;; ==========================================
(add-to-list 'load-path dotfiles-elisp)
(require 'config-ruby)
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

(add-hook 'markdown-mode-hook
          'setup-markdown-mode)

;; TODO: remove trailing whitespace

;; (autoload 'markdown-mode "markdown-mode"
;; "Major mode for editing Markdown files" t)
;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(provide 'init-local)

;; TODO: mac fullscreen
;; TODO: mac initialization file
