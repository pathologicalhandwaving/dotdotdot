;;; otama-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "otama" "otama.el" (0 0 0 0))
;;; Generated autoloads from otama.el

(autoload 'otama-open "otama" "\
Open org file specified by FILE-NAME as database.\n\n(fn FILE-NAME)" nil nil)

(autoload 'otama-helm "otama" "\
Insert address book entries in Otama using Helm.\nOtama is an org-table file specified by `otama-database-file-name'.\n\n(fn)" t nil)

(autoload 'otama-mail-to-address-records "otama" "\
Get otama address records from mail draft buffer.\nEach record has these attributes:\n organization, name, pn-title, mail, snippet\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "otama" '("otama-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; otama-autoloads.el ends here
