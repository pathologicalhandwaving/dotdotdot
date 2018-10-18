;;; headlong-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "headlong" "headlong.el" (0 0 0 0))
;;; Generated autoloads from headlong.el

(autoload 'headlong-bookmark-jump "headlong" "\
Jump to BOOKMARK headlong.

\(fn BOOKMARK)" t nil)

(autoload 'headlong-bookmark-jump-other "headlong" "\
Jump to BOOKMARK headlong in other window.

\(fn BOOKMARK)" t nil)

(autoload 'headlong-M-x "headlong" "\
Wrap around `(execute-extended-command PREFIXARG COMMAND-NAME)'.

\(fn PREFIXARG &optional COMMAND-NAME)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "headlong" '("headlong-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; headlong-autoloads.el ends here
