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
;; - cyberpunk2019
;; - moe
;; - monokai
;; - arc-dark

;;; CODE:

(setq user-full-name "David Conner")
(setq user-mail-address "dconner.pro@gmail.com")

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

;;; TODO: figure out how to get slashes to not disappear
(setq custom-scratch-border "

;;;                                                                   ;;;
;;;   ,       __/`    \__   __/         ,_  Lo    /\\_Fo   o     o/   ;;;
;;;   \__\o  '  \o   \/_   o\/   o/__/`   \/      ,-       /\   √|    ;;;
;;;    ) |      ( \  o      /    /  (     (  `-.-'          (   ( \   ;;;
;;; ................................................................. ;;;
")

;;; run `emali'
;;;
;;; (cons 'msg-scratch-keys "" )
;;;

(setq
 custom-scratch-msg
 '(
;;;___MSG
   "#### Keyboard mappings to learn:"
   ""
   "  (kbd \"C-h o\") => (describe-symbol) Go to symbol definition"
   "  (kbd \"C-h m\") => Help for current mode"
   "  (kbd \"C-h m\") => Display all key bindings for current mode"

;;;___LEARN
   ""
   "#### Misc Techs to Learn"
   ""
   "- Learn to use (apropos) to select lists of commands w/ short description to collect"
   "- Filter/Sort apropos output to display the commands with mapped keys or by usage stats"
   ))

(setq initial-scratch-message (reduce (lambda (a i) (concat a "\n" i)) custom-scratch-msg :initial-value custom-scratch-border))

;; ==========================================
;; Env configs
;; ==========================================

(defvar dotfiles-home
  (file-name-as-directory "~/.files")
  "Stores dotfiles path (default: ~/.files)")
(defvar dotfiles-emacs
     (concat (file-name-as-directory dotfiles-home) "emacs")
     "Stores emacs path (default: ~/.files/emacs)")
(defvar dotfiles-elisp
  (concat (file-name-as-directory dotfiles-emacs) "support")
  "Stores emacs support path (default: ~/.files/emacs/support)")

(add-to-list 'auto-mode-alist '("/bindkeys.emacs.ubu\\'" . emacs-lisp-mode))
(add-to-list 'auto-mode-alist '("/bindkeys.emacs.mac\\'" . emacs-lisp-mode))

(add-to-list 'load-path dotfiles-elisp)

(defun reload-init ()
  "Reload $DFE/init-local.el"
  (interactive)
  (load-file (concat dotfiles-emacs "/init-local.el")))

(defun reload-init-all ()
  "Reload $DFE/init-local.el"
  (interactive)
  (load-file (concat dotfiles-emacs "/init.el")))

;; ==========================================
;; Load specific configs
;; ==========================================

(cond ((eq system-type 'darwin) (require 'config-darwin))
      ((eq system-type 'gnu/linux) (require 'config-linux)))

(require 'config-ruby)
(require 'config-swift)
(require 'config-markdown)
(ido-mode -1)
(ido-everywhere -1)
(require 'config-helm)
(require 'bindkeys)

;;TODO: move markdown config
;;TODO: load keyboard config

;; ==========================================
;; Load libs
;; ==========================================

;;(require-package 'icicles)

;; ==========================================
;; Makefile
;; ==========================================

(use-package makefile-executor
  :config
  (add-hook 'makefile-mode-hook 'makefile-executor-mode))

;; ==========================================
;; Formatting
;; ==========================================

(setq default-tab-width 2)
(setq tab-width 2)
(setq require-final-newline t)

;; ==========================================
;; Aesthetic/Misc
;; ==========================================
(require 'powerline)
(powerline-default-theme)
(dimmer-mode)
;;(wrap-no-lines)
(global-linum-mode)


;; ==========================================
;; Yasnippet
;; ==========================================
;; https://www.emacswiki.org/emacs/Yasnippet#toc6
(setq helm-yas-space-match-any-greedy t)
(yas-global-mode 1)

;; TODO: config snippets
;; (yas-load-directory "<path>/<to>/snippets/")
;; (setq yas-snippet-dirs
;;       '("~/.emacs.d/snippets"                 ;; personal snippets
;;         "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
;;         "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
;;         ))

;; ==========================================
;; Avy/Ace
;; ==========================================
;; https://github.com/abo-abo/avy
(avy-setup-default)

(provide 'init-local)
