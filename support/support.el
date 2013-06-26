;;==============================;;
;; send-mail-at
;;==============================;;
;; schedle a mail to be sent at a specified time
;; .. hmm then .. that instance of emacs needs to be running .. right?
;; run-at-time example: http://stackoverflow.com/questions/11670567/getting-a-list-of-running-emacs-timers
;; timers docs: http://www.gnu.org/software/emacs/manual/html_node/elisp/Timers.html
;; (setq my-timer-store (run-at-time "1 min" 900 'my-func))

;; also - see http://obfuscatedcode.wordpress.com/2007/04/26/configuring-emacs-for-gmails-smtp/

;;==============================;;
;; switching next/prev user buffers
;;==============================;;
;; http://ergoemacs.org/emacs/effective_emacs.html

(defun next-user-buffer ()
  "Switch to the next user buffer. User buffers are those whose name does not start with *."
  (interactive)
  (next-buffer)
  (let ((i 0))
    (while (and (string-match "^*" (buffer-name)) (< i 50))
      (setq i (1+ i)) (next-buffer) )))

(defun previous-user-buffer ()
  "Switch to the previous user buffer. User buffers are those whose name does not start with *."
  (interactive)
  (previous-buffer)
  (let ((i 0))
    (while (and (string-match "^*" (buffer-name)) (< i 50))
      (setq i (1+ i)) (previous-buffer) )))

(defun next-emacs-buffer ()
  "Switch to the next emacs buffer. Emacs buffers are those whose name starts with *."
  (interactive)
  (next-buffer)
  (let ((i 0))
    (while (and (not (string-match "^*" (buffer-name))) (< i 50))
      (setq i (1+ i)) (next-buffer) )))

(defun previous-emacs-buffer ()
  "Switch to the previous emacs buffer. Emacs buffers are those whose name starts with *."
  (interactive)
  (previous-buffer)
  (let ((i 0))
    (while (and (not (string-match "^*" (buffer-name))) (< i 50))
      (setq i (1+ i)) (previous-buffer) )))

;;==============================;;
;; reload emacs config
;;==============================;;
;; source ~/.emacs.d/init.el
(defun semacs () "Reload your .emacs file without restarting Emacs" (interactive)
  (load-file "~/.emacs"))

;;==============================;;
;; reload theme (fix for prelude?)
;;==============================;;
; (defun themacs () (interactive)
;   "reload your emacs theme"
;   (disable-theme 'zenburn)
;   (load-theme 'wheatgrass t)
;   (enable-theme 'wheatgrass))

;;==============================;;
;; text
;;==============================;;
(defun insert-date-string () "Insert a nicely formated date string" (interactive)
  (insert (format-time-string "%a %b %d %H:%M:%S %Y")))
(defun wrap-no-lines () "Enable line wrapping" (interactive)
  (set-default 'truncate-lines t))
(defun wrap-all-lines () "Enable line wrapping" (interactive)
  (set-default 'truncate-lines nil))

; (defun toggle-wrap-lines ()
;   "Enable line wrapping"
;   (interactive))

;; ASCII table function
(defun ascii-table () (interactive)
  "Print the ascii table. Based on a defun by Alex Schroeder <asc@bsiag.com>"
  (switch-to-buffer "*ASCII*")
  (erase-buffer)
  (insert (format "ASCII characters up to number %d.\n" 254))  (let ((i 0))
    (while (< i 254)      (setq i (+ i 1))
      (insert (format "%4d %c\n" i i))))  (beginning-of-buffer))

;;==============================;;
;; system info
;;==============================;;
(defun insert-system-name () (interactive) "Get current system's name" (insert (format "%s" system-name)))
(defun insert-system-type () (interactive) "Get current system type" (insert (format "%s" system-type)))

(defun system-type-is-darwin () (interactive) "Return true if system is darwin-based (Mac OS X)" (string-equal system-type "darwin"))
(defun system-type-is-gnu () (interactive) "Return true if system is GNU/Linux-based" (string-equal system-type "gnu/linux"))
(defun system-is-my-laptop () (interactive) "Return true if the system we are running on is Aleks' MBP with Trisquel" (string-equal system-name "piticli-trisquel"))
(defun system-is-my-desktop () (interactive) "Return true if the system we are running on is Aleks' Desktop with Ubuntu" (string-equal system-name "piticli-ubuntu"))

;; Open my dot emacs. From jemarch in The Ultimate Emacs Course
(defun find-dot-emacs () (interactive) "Try to find and open the dot emacs file"
  (let ((the-fucking-init-file (if (not user-init-file) "~/.emacs" user-init-file)))
    (find-file the-fucking-init-file))) ;; haha, who the fuck wrote this?

;;==============================;;
;; functions to set code style
;;==============================;;
;; Functions to change code style in all buffers
;;    to GNU/Devhelp/GnomeTracker

;; Interactive change of code style in ALL buffers to GNU
(defun set-code-style-gnu () (interactive)
  "Set all buffers to GNU-style"
  (setq c-default-style '((other . "gnu")))  ;; C Style GNU-based
  (setq-default tab-width 4                  ;; Tab width: 4 whitespaces
                indent-tabs-mode nil         ;; Disable tabs, always whitespaces
                c-basic-offset 2))           ;; C basic offset: 2 whitespaces

;; Interactive change of code style in ALL buffers to Devhelp
(defun set-code-style-devhelp () (interactive)
  "Set all buffers to Devhelp-style"
  (setq c-default-style '((other . "bsd")))  ;; C Style BSD-based
  (setq-default tab-width 8                  ;; Tab width: 8 whitespaces
                indent-tabs-mode nil         ;; Disable tabs, always whitespaces
                c-basic-offset 8))           ;; C basic offset: 8 whitespaces

;; Interactive change of code style in ALL buffers to Gnome Tracker
(defun set-code-style-tracker () (interactive)
  "Set all buffers to Tracker-style"
  (setq c-default-style ((other . "bsd"))))  ;; C Style BSD-based

;;==============================;;
;; other functions (need to sort)
;;==============================;;


; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ;;    Tabs, Spaces and related behavior
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;   (setq-default tab-width 8) ; or any other preferred value
;   (setq cua-auto-tabify-rectangles nil)

;   (defadvice align (around smart-tabs activate)
;     (let ((indent-tabs-mode nil)) ad-do-it))

;   (defadvice align-regexp (around smart-tabs activate)
;     (let ((indent-tabs-mode nil)) ad-do-it))

;   (defadvice indent-relative (around smart-tabs activate)
;     (let ((indent-tabs-mode nil)) ad-do-it))

;   (defadvice indent-according-to-mode (around smart-tabs activate)
;     (let ((indent-tabs-mode indent-tabs-mode))
;       (if (memq indent-line-function
;                 '(indent-relative
;                     indent-relative-maybe))
;             (setq indent-tabs-mode nil))
;       ad-do-it))

;   (defmacro smart-tabs-advice (function offset)
;     (defvaralias offset 'tab-width)
;     `(defadvice ,function (around smart-tabs activate)
;        (cond
;         (indent-tabs-mode
;           (save-excursion
;                (beginning-of-line)
;                   (while (looking-at "\t*\\( +\\)\t+")
;                          (replace-match "" nil nil nil 1)))
;            (setq tab-width tab-width)
;             (let ((tab-width fill-column)
;                          (,offset fill-column))
;                  ad-do-it))
;         (t
;           ad-do-it))))

;   (smart-tabs-advice c-indent-line c-basic-offset)
;   (smart-tabs-advice c-indent-region c-basic-offset))

; ;; Enable my DEFAULT preferred style
; ;;(set-code-style-tracker)

; ;; Set up hungry deleting for c and c++
; ;;  This option will cause the delete key to remove all
; ;;  white spaces left until the first valid character.
; (setq-default c-hungry-delete-key t)

; ;; Remove trailing whitespaces before saving the file
; (add-hook 'before-save-hook 'delete-trailing-whitespace)

; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ;;    Scrolling
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; (defun up-slightly () (interactive) (scroll-up 5))
; (defun down-slightly () (interactive) (scroll-down 5))

; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ;;    Source file skeletons
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ;; For fast tests, insert minimum C source
; (defun insert-main () (interactive)
;   (insert "\n")
;   (insert "#include <stdio.h>\n")
;   (insert "\n")
;   (insert "int main(int argc, char **argv)\n")
;   (insert "{\n")
;   (insert "\n")
;   (insert "\n")
;   (insert "    return 0;\n")
;   (insert "}\n")
;   (insert "\n"))

; ;; Insert my preferred default C file header
; (defun insert-file-header () (interactive)
;   (insert "/* -*- mode: C -*-\n")
;   (insert " *\n")
;   (insert " *       File:         filename.h\n")
;   (insert " *       Date:         ")
;   (insert (format-time-string "%a %b %d %H:%M:%S %Y"))
;   (insert "\n")
;   (insert " *\n")
;   (insert " *       <PROGRAM> - <PURPOSE>\n")
;   (insert " *\n")
;   (insert " */\n")
;   (insert "\n")
;   (insert "#ifndef _FILENAME_H_\n")
;   (insert "#define _FILENAME_H_\n")
;   (insert "\n\n\n\n\n\n\n")
;   (insert "#endif /* _FILENAME_H_ */\n")
;   (insert "/* End of filename.h */\n\n"))


; ;; Insert my preferred default C file source
; (defun insert-file-source () (interactive)
;   (insert "/* -*- mode: C -*-\n")
;   (insert " *\n")
;   (insert " *       File:         filename.c\n")
;   (insert " *       Date:         ")
;   (insert (format-time-string "%a %b %d %H:%M:%S %Y"))
;   (insert "\n")
;   (insert " *\n")
;   (insert " *       <PROGRAM> - <PURPOSE>\n")
;   (insert " *\n")
;   (insert " */\n")
;   (insert "\n")
;   (insert "#include <filename.h>\n")
;   (insert "\n\n\n\n\n\n\n")
;   (insert "/* End of filename.c */\n\n"))

; ;; TODO: Update using template from M-x copyright
; (defun insert-copyright-me () (interactive)
;   "Insert C-like copyright notice with me as Copyright holder"
;   (insert "\n/* Copyright (C) ")
;   (insert (format-time-string "%Y"))
;   (insert " ")
;   (insert (format "%s" user-full-name))
;   (insert " <")
;   (insert (format "%s" user-mail-address))
;   (insert "> */\n\n"))

; ;; TODO: Update using template from M-x copyright
; (defun insert-copyright-fsf () (interactive)
;   "Insert C-like copyright notice with FSF as Copyright holder"
;   (insert "\n/* Copyright (C) ")
;   (insert (format-time-string "%Y"))
;   (insert " Free Software Foundation, Inc. */\n\n"))
