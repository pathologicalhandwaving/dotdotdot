;;; protocols-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "protocols" "protocols.el" (0 0 0 0))
;;; Generated autoloads from protocols.el

(autoload 'protocols-lookup "protocols" "\
Find a protocol SEARCH and display its details.\n\n(fn SEARCH)" t nil)

(autoload 'protocols-clear-cache "protocols" "\
Clear the protocols \"cache\".\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "protocols" '("protocols-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; protocols-autoloads.el ends here
