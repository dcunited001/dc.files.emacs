;;==============================;;
;; CLOJURE
;;==============================;;
;; https://github.com/dakrone/dakrone-dotfiles/blob/master/.emacs.d/init.d/24_clojure.el

(add-to-list 'auto-mode-alist '("\\.cljs" . clojure-mode))

(defun lisp-enable-paredit-hook () (paredit-mode 1))
(add-hook 'lisp-mode-hook 'lisp-enable-paredit-hook)

;; custom test locations instead of foo_test.c use test/foo.c
(defun my-clojure-test-for (namespace)
  (let* ((namespace (clojure-underscores-for-hyphens namespace))
         (segments (split-string namespace "\\."))
         (before (subseq segments 0 1))
         (after (subseq segments 1))
         (test-segments (append before (list "test") after)))
    (format "%stest/%s.clj"
            (locate-dominating-file buffer-file-name "src/")
            (mapconcat 'identity test-segments "/"))))

(defun my-clojure-test-implementation-for (namespace)
  (let* ((namespace (clojure-underscores-for-hyphens namespace))
         (segments (split-string namespace "\\."))
         (before (subseq segments 0 1))
         (after (subseq segments 2))
         (impl-segments (append before after)))
    (format "%s/src/%s.clj"
            (locate-dominating-file buffer-file-name "src/")
            (mapconcat 'identity impl-segments "/"))))

;; Clojure-mode hooks
(add-hook
 'clojure-mode-hook
 (lambda ()
   (setq clojure-mode-use-backtracking-indent t) ;; better indendation
   (eldoc-mode t)
   (rainbow-delimiters-mode)
   ;;(lisp-enable-paredit-hook)
   (setq clojure-test-for-fn 'my-clojure-test-for)
   (setq clojure-test-implementation-for-fn 'my-clojure-test-implementation-for)
   (global-set-key (kbd "C-c t") 'clojure-jump-between-tests-and-code)
))

   ;; ;; folding ala jcrossley3
   ;; (require 'fold-dwim-org)
   ;; (hs-minor-mode t)
   ;; (fold-dwim-org/minor-mode t)
   ;; (local-set-key (kbd "C-c TAB") 'fold-dwim-org/minor-mode)
   ;; (local-set-key (kbd "C-c C-u") 'fold-dwim-hide-all)
   ;; (local-set-key (kbd "C-c C-o") 'fold-dwim-show-all)
   ;; (local-set-key (kbd "C-u") 'fold-dwim-toggle)))

;;==============================;;
;; NREPL & AC-NREPL
;;==============================;;
;; https://github.com/kingtim/nrepl.el
;; https://github.com/clojure-emacs/ac-nrepl
(require 'nrepl)
(require 'nrepl-ritz)

;; (add-hook 'nrepl-interaction-mode-hook
;;   'nrepl-turn-on-eldoc-mode)

(defun nrepl-popup-tip-symbol-at-point ()
  "show docs for the symbol at point -- AWESOMELY"
  (interactive)
  (popup-tip (ac-nrepl-documentation (symbol-at-point))
             :point (ac-nrepl-symbol-start-pos)
             :around t
             :scroll-bar t
             :margin t))

(add-hook 'nrepl-mode-hook
          (lambda ()
            (define-key nrepl-interaction-mode-map
              (kbd "C-c C-d")
              'nrepl-popup-tip-symbol-at-point)
            ;; (paredit-mode t) ;; paredit-mode breaks nrepl for now
            (subword-mode t)
            (eldoc-mode t)
            (setq nrepl-history-file "~/.nrepl-history")
            (setq nrepl-hide-special-buffers t)
            (setq nrepl-popup-stacktraces-in-repl t)
            (ac-nrepl-setup)
            (set-auto-complete-as-completion-at-point-function)
))

(add-hook 'nrepl-interaction-mode-hook
          (lambda ()
            (set-auto-complete-as-completion-at-point-function)
            (nrepl-turn-on-eldoc-mode)))

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


;; from dakrone
(require 'ac-nrepl)
(eval-after-load "auto-complete" '(add-to-list 'ac-modes 'nrepl-mode))

;; from ac-repl
;; (require 'ac-nrepl)
;; (add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
;; (add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
;; (eval-after-load "auto-complete"
;;                      '(add-to-list 'ac-modes 'nrepl-mode))

;; (add-hook 'nrepl-mode-hook 'set-auto-complete-as-completion-at-point-function)
;; (add-hook 'nrepl-interaction-mode-hook 'set-auto-complete-as-completion-at-point-function)

;;==============================;;
;; RITZ
;;==============================;;

;; http://ianeslick.com/2013/05/17/clojure-debugging-13-emacs-nrepl-and-ritz/

