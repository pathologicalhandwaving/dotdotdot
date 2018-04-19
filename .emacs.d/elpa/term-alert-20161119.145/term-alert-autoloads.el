;;; term-alert-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "term-alert" "term-alert.el" (0 0 0 0))
;;; Generated autoloads from term-alert.el

(autoload 'term-alert-next-command-toggle "term-alert" "\
Toggle whether to display an alert when a command next completes in this buffer.  If NUM is equal to `term-alert--count', disable Term Alert mode.  With prefix arg, alert for that number of commands.\n\n(fn NUM)" t nil)

(autoload 'term-alert-all-toggle "term-alert" "\
Toggle whether to display an alert after all commands until further notice.\n\n(fn)" t nil)

(autoload 'term-alert-runtime "term-alert" "\
Display the running time of the most recent command.\n\n(fn)" t nil)

(autoload 'term-alert--started-callback "term-alert" "\
Respond to a started command.\n\n(fn C A)" nil nil)

(autoload 'term-alert--done-callback "term-alert" "\
Respond to a completed command.\n\n(fn C A)" nil nil)

(autoload 'term-alert--init "term-alert" "\
Internal term-alert initialisation function.\n\n(fn)" nil nil)

(term-alert--init)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "term-alert" '("term-alert-")))

;;;***

;;;### (autoloads nil nil ("term-alert-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; term-alert-autoloads.el ends here
