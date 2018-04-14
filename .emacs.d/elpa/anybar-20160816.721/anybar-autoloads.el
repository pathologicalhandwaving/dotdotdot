;;; anybar-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "anybar" "anybar.el" (0 0 0 0))
;;; Generated autoloads from anybar.el

(autoload 'anybar-send "anybar" "\
Sends the command to the AnyBar instance running on port.\n\n(fn COMMAND &optional PORT)" t nil)

(autoload 'anybar-set "anybar" "\
Sets the AnyBar running on the specified port to style. Will\nwarn if the style is not valid.\n\n(fn STYLE &optional PORT)" t nil)

(autoload 'anybar-quit "anybar" "\
Quit the AnyBar instance running on the specified port.\n\n(fn &optional PORT)" t nil)

(autoload 'anybar-start "anybar" "\
Start an instance of AnyBar on the specified port.\n\n(fn &optional PORT)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "anybar" '("anybar-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; anybar-autoloads.el ends here
