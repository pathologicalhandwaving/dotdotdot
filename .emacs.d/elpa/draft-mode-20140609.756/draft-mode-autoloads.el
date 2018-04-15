;;; draft-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "draft-mode" "draft-mode.el" (0 0 0 0))
;;; Generated autoloads from draft-mode.el

(autoload 'draft-mode "draft-mode" "\
Toggle Draft mode.\nInteractively with no argument, this command toggles the mode.\nA positive prefix argument enables the mode, any other prefix\nargument disables it.  From Lisp, argument omitted or nil enables\nthe mode, `toggle' toggles the state.\n\nWhen Draft mode is enabled, all input is inserted at the end of \nthe buffer and disables most editing commands.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "draft-mode" '("draft-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; draft-mode-autoloads.el ends here
