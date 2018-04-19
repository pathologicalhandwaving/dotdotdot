;;; hackernews-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "hackernews" "hackernews.el" (0 0 0 0))
;;; Generated autoloads from hackernews.el

(autoload 'hackernews "hackernews" "\
Read top N Hacker News stories.\nThe Hacker News feed is determined by `hackernews-default-feed'\nand N defaults to `hackernews-items-per-page'.\n\n(fn &optional N)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hackernews" '("hackernews-")))

;;;***

;;;### (autoloads nil nil ("hackernews-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; hackernews-autoloads.el ends here