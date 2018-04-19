;;; page-break-lines-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "page-break-lines" "page-break-lines.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from page-break-lines.el

(defvar page-break-lines-char 9472 "\
Character used to render page break lines.")

(custom-autoload 'page-break-lines-char "page-break-lines" t)

(defvar page-break-lines-lighter " PgLn" "\
Mode-line indicator for `page-break-lines-mode'.")

(custom-autoload 'page-break-lines-lighter "page-break-lines" t)

(defvar page-break-lines-modes '(emacs-lisp-mode lisp-mode scheme-mode compilation-mode outline-mode help-mode) "\
Modes in which to enable `page-break-lines-mode'.")

(custom-autoload 'page-break-lines-modes "page-break-lines" t)

(defface page-break-lines '((t :inherit font-lock-comment-face :bold nil :italic nil)) "\
Face used to colorize page break lines.\nIf using :bold or :italic, please ensure `page-break-lines-char'\nis available in that variant of your font, otherwise it may be\ndisplayed as a junk character." :group 'page-break-lines)

(autoload 'page-break-lines-mode "page-break-lines" "\
Toggle Page Break Lines mode.\n\nIn Page Break mode, page breaks (^L characters) are displayed as a\nhorizontal line of `page-break-string-char' characters.\n\n(fn &optional ARG)" t nil)

(define-obsolete-function-alias 'turn-on-page-break-lines-mode 'page-break-lines-mode)

(autoload 'page-break-lines-mode-maybe "page-break-lines" "\
Enable `page-break-lines-mode' in the current buffer if desired.\nWhen `major-mode' is listed in `page-break-lines-modes', then\n`page-break-lines-mode' will be enabled.\n\n(fn)" nil nil)

(defvar global-page-break-lines-mode nil "\
Non-nil if Global Page-Break-Lines mode is enabled.\nSee the `global-page-break-lines-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `global-page-break-lines-mode'.")

(custom-autoload 'global-page-break-lines-mode "page-break-lines" nil)

(autoload 'global-page-break-lines-mode "page-break-lines" "\
Toggle Page-Break-Lines mode in all buffers.\nWith prefix ARG, enable Global Page-Break-Lines mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nPage-Break-Lines mode is enabled in all buffers where\n`page-break-lines-mode-maybe' would do it.\nSee `page-break-lines-mode' for more information on Page-Break-Lines mode.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "page-break-lines" '("page-break-lines--update-display-table")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; page-break-lines-autoloads.el ends here