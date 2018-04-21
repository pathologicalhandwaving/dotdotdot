;;; org-password-manager-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-password-manager" "org-password-manager.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-password-manager.el

(autoload 'org-password-manager-get-username "org-password-manager" "\
Get username.\n\nIf ASK-FOR-INPUT? is t, will ask for input even if point is on a\nheading that contains the username property.\n\n(fn &optional ASK-FOR-INPUT\\=\\?)" t nil)

(autoload 'org-password-manager-get-password "org-password-manager" "\
Get password.\n\nIf ASK-FOR-INPUT? is t, will ask for input even if point is on a\nheading that contains the password property.\n\n(fn &optional ASK-FOR-INPUT\\=\\?)" t nil)

(autoload 'org-password-manager-generate-password "org-password-manager" "\
Generate password.\n\nIf EDIT-PWGEN-STRING? is t, let the user edit the pwgen command\nline before running it.\n\n(fn &optional EDIT-PWGEN-STRING\\=\\?)" t nil)

(autoload 'org-password-manager-key-bindings "org-password-manager" "\
Binds keys for org-password-manager.\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-password-manager" '("org-password-manager-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-password-manager-autoloads.el ends here
