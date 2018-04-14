;;; company-coq-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "company-coq" "company-coq.el" (0 0 0 0))
;;; Generated autoloads from company-coq.el

(autoload 'company-coq-tutorial "company-coq" "\
Open the company-coq tutorial, creating a new buffer if needed.\n\n(fn)" t nil)

(autoload 'company-coq-describe-feature "company-coq" "\
Describe company-coq feature FEATURE.\n\n(fn FEATURE)" t nil)

(autoload 'company-coq-mode "company-coq" "\
Toggle company-coq-mode on or off.\n\nCompany-Coq is a collection of Proof-General extensions.  See\nhttps://github.com/cpitclaudel/company-coq/ for a detailed\ndescription, including screenshots and documentation.  First time\nusers may want to use \\[company-coq-tutorial] to open the\ntutorial.\n\nWith a prefix argument ARG, enable %s if ARG is\npositive, and disable it otherwise.  If called from Lisp, enable\nthe mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.\n\n\\{company-coq-map}\n\n(fn &optional ARG)" t nil)

(autoload 'company-coq-initialize "company-coq" "\
Deprecated: Use `company-coq-mode' instead.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-coq" '("toggle-company-coq-debug" "company-coq-")))

;;;***

;;;### (autoloads nil "company-coq-abbrev" "company-coq-abbrev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-coq-abbrev.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-coq-abbrev" '("company-coq--refman-")))

;;;***

;;;### (autoloads nil "company-coq-tg" "company-coq-tg.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from company-coq-tg.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-coq-tg" '("company-coq-")))

;;;***

;;;### (autoloads nil "company-coq-utils" "company-coq-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-coq-utils.el

(autoload 'company-coq-cite "company-coq-utils" "\
Insert BibTeX entries for Coq, PG, and company-coq.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-coq-utils" '("company-coq--")))

;;;***

;;;### (autoloads nil nil ("company-coq-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; company-coq-autoloads.el ends here
