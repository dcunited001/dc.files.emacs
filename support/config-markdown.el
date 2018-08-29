;; package --- Summary

;;; Commentary:

;;; Code:

;; ==========================================
;; Thesaurus/Dictionary
;; ==========================================

(setq ispell-program-name "aspell")
(ispell-change-dictionary "english")

;; synosaurus requires wn command line tool
;;(require-package 'synosaurus)

;; http://www.emacswiki.org/emacs/Synonyms#toc3


(setq synonyms-file "~/.files/emacs/mthesaur.txt")
(setq synonyms-cache-file "~/.files/emacs/mthesaur.cache")
(require-package 'synonyms)
(require 'synonyms)

;;(global-set-key (kbd "H-w") 'delete-trailing-whitespace)

;; ==========================================
;; markdown Mode
;; ==========================================
(defun setup-markdown-mode ()
  "Configures markdown mode."
  ;;(synosaurus-mode)
  ;;(writegood-mode)
  ;;(flyspell-mode)
  (turn-on-auto-fill)
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

;; set kramdown as default

(setq markdown-command "kramdown")

(add-hook 'markdown-mode-hook
          'setup-markdown-mode)

;; TODO: remove trailing whitespace

;; (autoload 'markdown-mode "markdown-mode"
;; "Major mode for editing Markdown files" t)
;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(provide 'config-markdown)

;;; config-markdown.el ends here
