;;; fastdef-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "fastdef" "fastdef.el" (0 0 0 0))
;;; Generated autoloads from fastdef.el

(autoload 'fastdef-get-text-with-same-font "fastdef" "\
Get text with the same font.\n\n(fn)" nil nil)

(autoload 'fastdef-insert "fastdef" "\
Insert terminology with URL.\n\n(fn)" t nil)

(autoload 'fastdef-insert-from-history "fastdef" "\
Insert terminology from history.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fastdef" '("fastdef-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; fastdef-autoloads.el ends here
