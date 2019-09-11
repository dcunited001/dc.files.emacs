;;; package --- Summary

;;; Commentary:
;;; configures emacs for mac osx.
;;; - configures modkeys to be equivalent to my linux config
;;; - configs hot keys

;;; Code:

;; font size
(set-frame-font "DejaVu Sans Mono for Powerline" 14 t)

(setq ns-control-modifier 'alt)
(setq ns-right-control-modifier 'control)
(setq ns-command-modifier 'super)
(setq ns-right-command-modifier 'control)
(setq ns-alternate-modifier 'meta)
(setq ns-right-alternate-modifier 'meta)

(provide 'config-darwin)

;;; config-darwin.el ends here
