;;; bbdb--autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "bbdb-" "bbdb-.el" (0 0 0 0))
;;; Generated autoloads from bbdb-.el

(autoload 'bbdb-:setup "bbdb-" "\
Do setup for using bbdb-.\n\n(fn)" nil nil)

(autoload 'bbdb-:mode "bbdb-" "\
More easily To/Cc/Bcc search/choice than BBDB.\n\n(fn)" t nil)

(autoload 'bbdb-:open "bbdb-" "\
Open BBDB- buffer.\n\n- CLEAN-UP is boolean. If non-nil, clean up the condition that select To/Cc/Bcc.\n- TOMATCHES is list of Regexp for marking the matched record as To.\n- CCMATCHES is list of Regexp for marking the matched record as Cc.\n- BCCMATCHES is list of Regexp for marking the matched record as Bcc.\n\n(fn &optional CLEAN-UP TOMATCHES CCMATCHES BCCMATCHES)" t nil)

(autoload 'bbdb-:start-completion "bbdb-" "\
Start the selection of To/Cc/Bcc on `bbdb-:mail-modes'.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-" '("bbdb-:")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bbdb--autoloads.el ends here
