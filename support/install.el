;;=====================================
;; scripts for automatically installing emacs packages (el-get)
;;=====================================
;; https://github.com/dimitri/el-get
;; http://bytes.inso.cc/2011/08/13/auto-installing-packages-in-emacs-with-elpa-and-el-get/
;; http://technical-dresese.blogspot.com/2012/12/elpa-and-el-get.html

(defun load-el-get ()
  (interactive)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (goto-char (point-max))
     (eval-print-last-sexp))))

;; TODO: finish creating a list of packages to sync
;; (defun sync-el-get ()
;;   (interactive)
;;   (setq el-get-sources
;;         '((:name css-mode :type elpa)
;;           (:name js2-mode-mooz
;;                  :type git
;;                  :url "git://github.com/mooz/js2-mode.git"
;;                  :load "js2-mode.el"
;;                  :compile ("js2-mode.el")
;;                  :features js2-mode)))  
;; )

;;=====================================
;; el-get examples 

;; extra recipes for packages unknown to el-get (yet)
;; (setq el-get-sources
;;       '((:name css-mode :type elpa)
;;         (:name js2-mode-mooz
;;                :type git
;;                :url "git://github.com/mooz/js2-mode.git"
;;                :load "js2-mode.el"
;;                :compile ("js2-mode.el")
;;                :features js2-mode)))

;; ; list all packages you want installed
;; (setq my-el-get-packages
;;       (append
;;        '(css-mode egg gist js2-mode-mooz)
;;        (mapcar 'el-get-source-name el-get-sources)))

;; (el-get 'sync my-el-get-packages)
  

