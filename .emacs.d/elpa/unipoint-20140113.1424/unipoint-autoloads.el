;;; unipoint-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "unipoint" "unipoint.el" (0 0 0 0))
;;; Generated autoloads from unipoint.el

(autoload 'unipoint-at-point "unipoint" "\
Converts word before point to unicode if appropriate

\(fn)" t nil)

(autoload 'unipoint-insert "unipoint" "\
Inserts at point, a unicode codepoint by name

\(fn)" t nil)

(autoload 'unipoint-mode "unipoint" "\
Toggle Unipoint mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "unipoint" '("*unipoint-table*" "unipoint-re")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; unipoint-autoloads.el ends here
