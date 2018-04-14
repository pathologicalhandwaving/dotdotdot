;;; company-bibtex-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "company-bibtex" "company-bibtex.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from company-bibtex.el

(autoload 'company-bibtex "company-bibtex" "\
`company-mode' completion backend for bibtex key completion.\n\nThis backend activates for citation styles used by `pandoc-mode' (@),\n`latex-mode' (cite{}), and `org-mode' (ebib:), and reads from a\nbibliography file or files specified in `company-bibtex-bibliography'.\nCOMMAND, ARG, and IGNORED are used by `company-mode'.\n\n(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-bibtex" '("company-bibtex-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; company-bibtex-autoloads.el ends here
