;;==============================;;
;; NREPL
;;==============================;;
;; https://github.com/kingtim/nrepl.el

(add-hook 'nrepl-interaction-mode-hook
  'nrepl-turn-on-eldoc-mode)

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

;;==============================;;
;; CLOJURE
;;==============================;;

