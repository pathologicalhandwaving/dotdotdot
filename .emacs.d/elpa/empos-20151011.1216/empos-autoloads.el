;;; empos-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "empos" "empos.el" (0 0 0 0))
;;; Generated autoloads from empos.el

(autoload 'empos-search "empos" "\
Send the query Q to pyopl.py.\nIf ENGINES is not provided it defaults to your favourite engines.\n\n(fn Q &optional ENGINES)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "empos" '("empos-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; empos-autoloads.el ends here
