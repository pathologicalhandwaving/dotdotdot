;;; org-vcard-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-vcard" "org-vcard.el" (0 0 0 0))
;;; Generated autoloads from org-vcard.el

(autoload 'org-vcard-export "org-vcard" "\
User command to export to vCard. Only intended for interactive use.\n\nWith no prefix argument, use the values of org-vcard-default-version,\norg-vcard-default-language and org-vcard-default-style. With prefix\nargument of:\n\n1 : prompt for version;\n2 : prompt for language;\n3 : prompt for style;\n4 : prompt for version, language and style.\n\n(fn ARG)" t nil)

(autoload 'org-vcard-import "org-vcard" "\
User command to import from vCard. Only intended for interactive\nuse.\n\nWith no prefix argument, use the values of org-vcard-default-version,\norg-vcard-default-language and org-vcard-default-style. With prefix\nargument of:\n\n1 : prompt for version;\n2 : prompt for language;\n3 : prompt for style;\n4 : prompt for version, language and style.\n\n(fn ARG)" t nil)

(autoload 'org-vcard-export-via-menu "org-vcard" "\
User command for exporting to vCard via Emacs' menu bar.\n\n(fn STYLE LANGUAGE VERSION)" nil nil)

(autoload 'org-vcard-import-via-menu "org-vcard" "\
User command for importing from vCard via Emacs' menu bar.\n\n(fn STYLE LANGUAGE VERSION)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-vcard" '("org-vcard-")))

;;;***

;;;### (autoloads nil nil ("org-vcard-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-vcard-autoloads.el ends here
