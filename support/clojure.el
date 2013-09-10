;;==============================;;
;; NREPL
;;==============================;;
;; https://github.com/kingtim/nrepl.el

(add-hook 'nrepl-interaction-mode-hook
  'nrepl-turn-on-eldoc-mode)

;; use ac-repl docs
;;(define-key nrepl-interaction-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc)i

;; Stop the error buffer from popping up 
;;   while working in buffers other than
;;    the REPL:
;; (setq nrepl-popup-stacktraces nil)

;; Enable error buffer popping also in the REPL:
;; (setq nrepl-popup-stacktraces-in-repl t)

;; Make C-c C-z switch 
;;   to the *nrepl* buffer 
;;   in the current window:
;; (add-to-list 'same-window-buffer-names "*nrepl*")

;; Enabling CamelCase support for editing commands(like forward-word, backward-word, etc) in nREPL is quite useful since we often have to deal with Java class and method names. The built-in Emacs minor mode subword-mode provides such functionality:
;; (add-hook 'nrepl-mode-hook 'subword-mode)

;; Enable Paredit Mode
;; http://mumble.net/~campbell/emacs/paredit.html
;; (add-hook 'nrepl-mode-hook 'paredit-mode)

;; Enable Smartparen (paredit replacement)
;; https://github.com/Fuco1/smartparens
;; (add-hook 'nrepl-mode-hook 'smartparens-mode)

;;==============================;;
;; AC-NREPL
;;==============================;;
;; https://github.com/clojure-emacs/ac-nrepl

;; (require 'ac-nrepl)
;; (add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
;; (add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
;; (eval-after-load "auto-complete"
;;                      '(add-to-list 'ac-modes 'nrepl-mode))

;; (add-hook 'nrepl-mode-hook 'set-auto-complete-as-completion-at-point-function)
;; (add-hook 'nrepl-interaction-mode-hook 'set-auto-complete-as-completion-at-point-function)

;;==============================;;
;; CLOJURE
;;==============================;;

