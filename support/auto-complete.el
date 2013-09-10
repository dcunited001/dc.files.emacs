;;==============================;;
;; AUTO-COMPLETE
;;==============================;;

;; add auto-complete to completion-at-point-functions
(defun set-auto-complete-as-completion-at-point-function ()
    (setq completion-at-point-functions '(auto-complete)))

(add-hook 'auto-complete-mode-hook 
          'set-auto-complete-as-completion-at-point-function)


