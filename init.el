;; to automatically install packages:
;; (load "~/.emacs.d/personal/support/install.el")

;; load support functions
(load "~/.emacs.d/personal/support/support.el")
(require 'json)
(require 'auto-complete)
;; add marmalade archive
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(clojure-mode
                      nrepl  ;; not found on last setup - install via list-packages
                      nrepl-ritz
                      ac-nrepl
                      rvm
                      rinari
                      ess
                      yasnippet
                      twittering-mode
                      ack
                      aes
                      bundler
                      bitly
                      cmake-mode
                      coffee-mode
                      db-pg
                      gnugo
                      spaces
                      sml-mode
                      slime
                      scss-mode
                      sass-mode
                      ruby-test-mode
                      ruby-mode
                      ruby-compilation
                      json
                      auto-complete
                      clojure-cheatsheet
                      rbenv
                      paredit
                      synosaurus
))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;==============================;;
;; ENV INFO
;;==============================;;
;; this var needs to be set in order for os-specific keys to be applied 
(setq emos (getenv "OS_TYPE"))

;;==============================;;
;; USER INFO
;;==============================;;
(setq user-full-name "David Conner")
(setq user-mail-address "dconner.pro@gmail.com")

;;==============================;;
;; THEME
;;==============================;;
;; (load-theme 'wheatgrass t)
;; (load-theme 'tango-dark t)
;; (load-theme 'wombat t)
;; (load-theme 'solarized-dark t)
(load-theme 'zenburn t) ;; config'd with rainbow delimiters

;;==============================;;
;; TWITTERING-MODE
;;==============================;;
;; once this is configured, no need to authorize every time
;;  but where is the password stored?

(eval-after-load 'twittering-mode
  (progn (setq twittering-icon-mode t)
         (setq twittering-use-master-password t)))

;;==============================;;
;; ERGOEMACS
;;==============================;;
;;  http://ergoemacs.org/emacs/keystroke_rep.html

; (setq ergoemacs-theme nil)
; (setq ergoemacs-keyboard-layout "us")
; (ergoemacs-mode 1)

(defun ergoemacs-print-buffer-confirm ()
  "overwrite the ergoemacs function to re-remap the C-p to hyper"
  (interactive)
  (osx-map-hyper))

;;==============================;;
;; PERSONAL SCRIPTS
;;==============================;;
; no longer want these files to be loaded automatically
;   they seem to be loaded inconsistently
(load "~/.emacs.d/personal/support/auto-complete.el")
;;(load "~/.emacs.d/personal/support/ess.el")
;;(load "~/.emacs.d/personal/support/prelude.el")
(load "~/.emacs.d/personal/support/rails.el")
(load "~/.emacs.d/personal/support/node.el")
;(load "~/.emacs.d/personal/support/xiki.el")
(load "~/.emacs.d/personal/support/clojure.el")
(load "~/.emacs.d/personal/support/bindkeys.el")
(load "~/.emacs.d/personal/support/haskell.el")
(load "~/.emacs.d/personal/support/emacs-lisp.el")

;;==============================;;
;; MAGIT
;;==============================;;
(if (file-executable-p "/usr/local/bin/emacsclient")
    (setq magit-emacsclient-executable "/usr/local/bin/emacsclient"))

;;==============================;;
;; WINDMOVE
;;==============================;;
; activated all bindings
; (require 'windmove)
; (when (fboundp 'windmove-default-keybindings)
;   (windmove-default-keybindings))

; For "CuaMode"
; (windmove-default-keybindings 'meta)

;;==============================;;
;; FRAMEMOVE
;;==============================;;
; (require 'framemove)
; (windmove-default-keybindings)
; (setq framemove-hook-into-windmove t)

;;==============================;;
;; SPACES/TABS
;;==============================;;
(setq standard-indent 2)
(setq-default indent-tabs-mode nil)
(setq require-final-newline t)

;;==============================;;
;; HIGHLIGHTING
;;==============================;;
; (setq transient-mark-mode t) ;; Highlight region between point and mark
; (setq query-replace-highlight t) ;; Highlight during query
; (setq search-highlight t) ;; Highlight incremental search

;; Show matching parenthesis, except for OSX
; (if (system-type-is-gnu) (show-paren-mode t))

;; Show the column number
; (setq column-number-mode t)

;; highlight the current line, except for OSX
; (if (system-type-is-gnu) (global-hl-line-mode 1))

;; Turn on time-stamp updating. Timestamp must be in first 8 lines of file and look like:
;;   Time-stamp: <>
; (add-hook 'write-file-hooks 'time-stamp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;    Key modifiers for Mac OS X Emacs.app in spanish Mac keyboard
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; (if (system-type-is-darwin)
;     (progn (global-set-key (kbd "M-1") "|")
;            (global-set-key (kbd "M-2") "@")
;            (global-set-key (kbd "M-3") "#")
;            (global-set-key (kbd "M-Âº") "\\")
;            (global-set-key (kbd "M-Ã§") "}")
;            (global-set-key (kbd "M-+") "]"))
;   )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;    Appearance
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ;; Color the code
; (require 'font-lock)
; (global-font-lock-mode t)

; ;; Set the starting appearance
; (setq default-frame-alist
;       '((cursor-color . "Firebrick")
;         (cursor-type . box)
;         (foreground-color . "White")
;         (background-color . "Black")
;         (vertical-scroll-bars . right)))

; ;; My default font size will be 10pt
; (set-face-attribute 'default nil :height 100)

; ;; Dont show the GNU splash screen
; (setq inhibit-startup-message t)

; ;; Disable toolbar
; (tool-bar-mode -1)

; ;; Disable menu
; ;;(menu-bar-mode -1)

; ;; Make all "yes or no" prompts show "y or n" instead
; (fset 'yes-or-no-p 'y-or-n-p)

; ;; Display time
; (setq display-time-24hr-format t)
; (display-time)

;; Word-Wrapping off
(wrap-no-lines)

;; Line Numbers on
;;(linum-mode)
(global-linum-mode)


;;==============================;;
;; Modes for specific file types
;;==============================;;

;; also: make sure this file is opened as an eLisp file
(add-to-list 'auto-mode-alist '("/bindkeys.emacs.ubu\\'" . emacs-lisp-mode))
(add-to-list 'auto-mode-alist '("/bindkeys.emacs.mac\\'" . emacs-lisp-mode))

;; autoload puppet-mode
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

;;==============================;;
;; CUSTOM VARS?
;;==============================;;
;; not really sure what this is, automatically added by something

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("27470eddcaeb3507eca2760710cc7c43f1b53854372592a3afa008268bcf7a75" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces

 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
