;; ensure functions are loaded
(load "~/.emacs.d/personal/support.el")

;; add marmalade archive
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;;==============================;;
;; USER INFO
;;==============================;;
(setq user-full-name "is this script even running?")
(setq user-mail-address "dconner.pro@gmail.com")

;;==============================;;
;; TWITTERING-MODE
;;==============================;;
; once this is configured, no need to authorize every time
; (setq twittering-use-master-password t)

;;==============================;;
;; PERSONAL SCRIPTS
;;==============================;;
; (these files should be loaded automatically)
; (load "~/.emacs.d/personal/bindkeys.emacs.el")
; (load "~/.emacs.d/personal/ess.el")
; (load "~/.emacs.d/personal/prelude.el")
; (load "~/.emacs.d/personal/support.el")
; (load "~/.emacs.d/personal/xiki.el")

;;==============================;;
;; HYPER KEY
;;==============================;;
; (setq mac-control-modifier 'hyper)

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
(linum-mode)

;;==============================;;
;; Modes for specific file types
;;==============================;;

;; also: make sure this file is opened as an eLisp file
(add-to-list 'auto-mode-alist '("/bindkeys.emacs.ubu\\'" . emacs-lisp-mode))
(add-to-list 'auto-mode-alist '("/bindkeys.emacs.mac\\'" . emacs-lisp-mode))

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
