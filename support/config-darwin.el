;;; package --- Summary

;;; Commentary:
;;; configures emacs for mac osx.
;;; - configures modkeys to be equivalent to my linux config
;;; - configs hot keys

;;; Code:

;; font size
(set-frame-font "DejaVu Sans Mono for Powerline" 14 t)

(setq ns-control-modifier 'super)
(setq ns-right-control-modifier 'control)
(setq ns-command-modifier 'control)
(setq ns-alternate-modifier 'meta)
(setq ns-right-alternate-modifier 'alt)

(provide 'config-darwin)

;;; config-darwin.el ends here
