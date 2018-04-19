;;; org-mru-clock-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-mru-clock" "org-mru-clock.el" (0 0 0 0))
;;; Generated autoloads from org-mru-clock.el

(autoload 'org-mru-clock-to-history "org-mru-clock" "\
Ensure `org-clock-history' filled with agenda tasks.\nOptional argument N as in `org-mru-clock'.\n\n(fn &optional N)" t nil)

(autoload 'org-mru-clock-select-recent-task "org-mru-clock" "\
Select a task that was recently associated with clocking.\nLike `org-clock-select-task', but ensures `org-clock-history' is\nfilled first.  Optional argument N as in `org-mru-clock'.\n\n(fn &optional N)" t nil)

(autoload 'org-mru-clock-in "org-mru-clock" "\
Use ido to clock in to a task recently associated with clocking.\nOptional argument N as in `org-mru-clock'.\n\n(fn &optional N)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-mru-clock" '("org-mru-clock")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-mru-clock-autoloads.el ends here
