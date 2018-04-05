;;; elbank-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "elbank-boobank" "elbank-boobank.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from elbank-boobank.el

(let ((loads (get 'elbank-boobank 'custom-loads))) (if (member '"elbank-boobank" loads) nil (put 'elbank-boobank 'custom-loads (cons '"elbank-boobank" loads))))

(defvar elbank-boobank-executable "boobank" "\
Boobank executable.")

(custom-autoload 'elbank-boobank-executable "elbank-boobank" t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "elbank-boobank" '("elbank-boobank-")))

;;;***

;;;### (autoloads nil "elbank-budget" "elbank-budget.el" (0 0 0 0))
;;; Generated autoloads from elbank-budget.el

(let ((loads (get 'elbank-budget 'custom-loads))) (if (member '"elbank-budget" loads) nil (put 'elbank-budget 'custom-loads (cons '"elbank-budget" loads))))

(defvar elbank-budget nil "\
Monthly budget by category of transactions.\n\nKeys are category names as defined in `elbank-categories'.")

(custom-autoload 'elbank-budget "elbank-budget" t)

(autoload 'elbank-budget-report "elbank-budget" "\
Build a budget report for the last month.\n\nReturn the report buffer.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "elbank-budget" '("elbank-budget-")))

;;;***

;;;### (autoloads nil "elbank-common" "elbank-common.el" (0 0 0 0))
;;; Generated autoloads from elbank-common.el

(let ((loads (get 'elbank 'custom-loads))) (if (member '"elbank-common" loads) nil (put 'elbank 'custom-loads (cons '"elbank-common" loads))))

(defvar elbank-data-file (locate-user-emacs-file "elbank-data.el") "\
Location of the file used to store elbank data.")

(custom-autoload 'elbank-data-file "elbank-common" t)

(defvar elbank-categories nil "\
Alist of categories of transactions.\n\nEach category has an associated list of regular expressions.\nA transaction's category is found by testing each regexp in order.\n\nExample of categories\n\n (setq elbank-categories\n   \\='((\"Expenses:Groceries\" . (\"walmart\" \"city market\"))\n     (\"Income:Salary\" . (\"paycheck\"))))")

(custom-autoload 'elbank-categories "elbank-common" t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "elbank-common" '("elbank-")))

;;;***

;;;### (autoloads nil "elbank-overview" "elbank-overview.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from elbank-overview.el

(autoload 'elbank-overview "elbank-overview" "\
Show an overview of all accounts.\n\n(fn)" t nil)

(autoload 'elbank-overview-update-buffer "elbank-overview" "\
Update the overview buffer with the latest data.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "elbank-overview" '("elbank-overview-")))

;;;***

;;;### (autoloads nil "elbank-progressbar" "elbank-progressbar.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from elbank-progressbar.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "elbank-progressbar" '("elbank-insert-progressbar")))

;;;***

;;;### (autoloads nil "elbank-report" "elbank-report.el" (0 0 0 0))
;;; Generated autoloads from elbank-report.el

(let ((loads (get 'elbank-report 'custom-loads))) (if (member '"elbank-report" loads) nil (put 'elbank-report 'custom-loads (cons '"elbank-report" loads))))

(defvar elbank-report-columns '(date label category amount) "\
List of transaction columns to print in reports.")

(custom-autoload 'elbank-report-columns "elbank-report" t)

(defvar elbank-saved-monthly-reports nil "\
Saved report filters for monthly reports.\n\n\"Group by\" can be either one of the available columns or nil.\n\n\"Sort by\" can be either one of the available columns or nil.\nWhen nil, transactions are sorted using the first column of the\nreport.\n\n\"Category\" can be any string (or empty for no category filter).\n\nAvailable columns:\n- `date'\n- `rdate' (real date)\n- `label'\n- `raw' (raw transaction text)\n- `category'\n- `account'\n- `amount'.")

(custom-autoload 'elbank-saved-monthly-reports "elbank-report" t)

(defvar elbank-saved-yearly-reports nil "\
Saved report filters for yearly reports.\n\n\"Group by\" can be either one of the available columns or nil.\n\n\"Sort by\" can be either one of the available columns or nil.\nWhen nil, transactions are sorted using the first column of the\nreport.\n\n\"Category\" can be any string (or empty for no category filter).\n\nAvailable columns:\n- `date'\n- `rdate' (real date)\n- `label'\n- `raw' (raw transaction text)\n- `category'\n- `amount'.")

(custom-autoload 'elbank-saved-yearly-reports "elbank-report" t)

(autoload 'elbank-report "elbank-report" "\
Build a report for transactions matching ACCOUNT-ID PERIOD and CATEGORY.\n\nWhen called interactively, prompt for ACCOUNT-ID, PERIOD and CATEGORY.\n\nBuild the report for COLUMNS when non-nil,\n`elbank-report-columns' otherwise.\n\nTransactions are grouped by the GROUP-BY column when non-nil.\n\nTransactions are sorted by the SORT-BY column, or by the first\ncolumn if nil.\n\nWhen a PERIOD is provided, append a sum row to the report.\n\nReturn the report buffer.\n\n(fn &key ACCOUNT-ID PERIOD CATEGORY GROUP-BY SORT-BY REVERSE-SORT COLUMNS)" t nil)

(autoload 'elbank-report-open-by-name "elbank-report" "\
Open report named NAME.\n\n(fn NAME)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "elbank-report" '("elbank-report-")))

;;;***

;;;### (autoloads nil "elbank-transaction" "elbank-transaction.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from elbank-transaction.el

(autoload 'elbank-show-transaction "elbank-transaction" "\
Show the details of TRANSACTION in a separate buffer.\n\n(fn TRANSACTION)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "elbank-transaction" '("elbank-transaction-")))

;;;***

;;;### (autoloads nil nil ("elbank-compat.el" "elbank-pkg.el" "elbank.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; elbank-autoloads.el ends here
