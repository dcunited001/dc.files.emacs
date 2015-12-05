;; config for markdown mode

(defun setup-markdown-mode
  (synosaurus-mode))

(add-hook 'markdown-mode
          'setup-markdown-mode)

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

