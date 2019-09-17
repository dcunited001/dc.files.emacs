;;; package --- Summary

;;; Commentary:
;;; configures helm
;;; - starting from https://tuhdo.github.io/helm-intro.html

;;; Code:

(require 'helm)
(require 'helm-config)

;; todo: ac-helm

;; todo: move keybindings
;; todo: resolve sanityinc/maybe-frame-something keybinding

;; the default "c-x c" is quite close to "c-x c-c", which quits emacs.
;; changed to "c-c h". note: we must set "c-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
;; (global-unset-key (kbd "c-x c"))

;; rebind tab to run persistent action
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make tab work in terminal
(define-key helm-map (kbd "C-c h z")  'helm-select-action) ; list actions using c-z

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c h k") 'describe-bindings)

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))


;; open helm buffer inside current window, not occupy whole other window
(setq helm-split-window-in-side-p           t
      ;; move to end or beginning of source when reaching top or bottom of source.
      helm-move-to-line-cycle-in-source     t
      ;; search for library in `require' and `declare-function' sexp.
      helm-ff-search-library-in-sexp        t
      ;; scroll 8 lines other window using m-<next>/m-<prior>
      helm-scroll-amount                    8
      helm-ff-file-name-history-use-recentf t
      helm-echo-input-in-header-line t

      ;; fuzzy matching for lisp-completion
      ;;helm-lisp-fuzzy-completion t

      ;; fuzzy matching for c-c h a (helm apropos)
      helm-apropos-fuzzy-matching t)

;; search man pages
(add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)

;; (add-hook 'helm-minibuffer-set-up-hook 'spacemacs//helm-hide-minibuffer-maybe)

(setq helm-autoresize-max-height 0)
(setq helm-autoresize-min-height 20)
(helm-autoresize-mode 1)

(require 'helm-descbinds)
(helm-descbinds-mode)

(helm-mode 1)

;; TODO: imenu-anywhere (opens helm)
;; (global-set-key (kbd "C-.") 'imenu-anywhere)

(provide 'config-helm)

;; M-x	helm-M-x	List commands
;; M-y	helm-show-kill-ring	Shows the content of the kill ring
;; C-x b	helm-mini	Shows open buffers, recently opened files
;; C-x C-f	helm-find-files	The helm version of find-file
;; C-s	helm-ff-run-grep	Run grep from within helm-find-files
;; C-c h i	helm-semantic-or-imenu	Helm interface to semantic/imenu
;; C-c h m	helm-man-woman	Jump to any man entry
;; C-c h /	helm-find	Helm interface to find
;; C-c h l	helm-locate	Helm interface to locate
;; C-c h o	helm-occur	Helm interface for occur
;; C-c h a	helm-apropos	Describes commands, functions, variables, …
;; C-c h h g	helm-info-gnus
;; C-c h h i	helm-info-at-point
;; C-c h h r	helm-info-emacs
;; C-c h <tab>	helm-lisp-completion-at-point	Provides a list of available functions
;; C-c h b	helm-resume	Resumes a previous helm session
;; C-h SPC	helm-all-mark-rings	Views contents of local and global mark rings
;; C-c h r	helm-regex	Visualizes regex matches
;; C-c h x	helm-register	Shows content of registers
;; C-c h t	helm-top	Helm interface to top
;; C-c h s	helm-surfraw	Command line interface to many web search engines
;; C-c h g	helm-google-suggest	Interactively enter search terms and get results from Google in helm buffer
;; C-c h c	helm-color	Lists all available faces
;; C-c h M-:	helm-eval-expression-with-eldoc	Get instant results for Emacs lisp expressions in the helm buffer
;; C-c h C-,	helm-calcul-expression	Helm interface to calc
;; C-c C-l	helm-eshell-history	Interface to eshell history
;; C-c C-l	helm-comint-input-ring	Interface to shell history
;; C-c C-l	helm-mini-buffer-history	Interface to mini-buffer history

;;; config-helm.el ends here
