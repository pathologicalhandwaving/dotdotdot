;;; org-dashboard-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-dashboard" "org-dashboard.el" (0 0 0 0))
;;; Generated autoloads from org-dashboard.el

(autoload 'org-dashboard-display "org-dashboard" "\
\n\n(fn)" t nil)

(autoload 'org-dblock-write:block-dashboard "org-dashboard" "\
Generate a progress report inside an org dynamic block.\n\nProgress information is retrieved by searching files in\n`org-dashboard-files' for headings containing a \"progress cookie\",\ne.g.:\n\n  ** [50%] release v0.1\n  *** TODO publish on github\n  *** DONE import in git\n\nSee Info node `(org) Breaking down tasks'.\n\n(fn PARAMS)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-dashboard" '("org-dashboard-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-dashboard-autoloads.el ends here
