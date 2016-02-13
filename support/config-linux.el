;;; package --- Summary

;;; Commentary:
;;; configures emacs for linux
;;; - configures modkeys to be equivalent to my linux config
;;; - configs hot keys

;;; Code:

(defun correct-linux-font (size)
  "All variables and subroutines might as well have a documentation string ... not"
  (set-face-attribute
   'default nil
   :font (font-spec
          :name "-unknown-DejaVu Sans Mono for Powerline-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1"
          :size size)))

;; font size
(correct-linux-font 22)

;;(set-frame-font "DejaVu Sans Mono for Powerline" 14 t)
;;-unknown-DejaVu Sans Mono for Powerline-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1


(provide 'config-linux)
