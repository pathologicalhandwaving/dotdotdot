;;; shell-here-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "shell-here" "shell-here.el" (0 0 0 0))
;;; Generated autoloads from shell-here.el

(autoload 'shell-here "shell-here" "\
Open a shell relative to `default-directory'.\n\nWith no argument, open a shell in `default-directory'.\nWith a positive numeric argument, open a shell ARG levels up from\n`default-directory'.\nWith a plain negative argument, open a shell in the project root.\nWith a negative numeric argument, open a shell ARG levels up from the\nproject root.\n\nShell buffer names include the name of the current project's\ndirectory, if available; otherwise *shell*. If a shell buffer already\nexists, it will be reused.\n\nWith the universal argument, open a new shell in `default-directory'.\nWith a negative universal argument, open a new shell in the project\nroot.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "shell-here" '("shell-here-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; shell-here-autoloads.el ends here
