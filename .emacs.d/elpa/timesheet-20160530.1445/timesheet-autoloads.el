;;; timesheet-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "timesheet" "timesheet.el" (0 0 0 0))
;;; Generated autoloads from timesheet.el

(autoload 'timesheet-next-invoice "timesheet" "\
Get next invoice number (following `timesheet-invoice-number' or INVOICE if present).\n\n(fn &optional INVOICE)" t nil)

(autoload 'timesheet-debug-msg "timesheet" "\
Display some debug MSGS.\n\n(fn &rest MSGS)" t nil)

(autoload 'timesheet-debug-time "timesheet" "\
Display TIME with some debug MSGS.\n\n(fn TIME &rest MSGS)" t nil)

(autoload 'timesheet-debug-time-cal "timesheet" "\
Display TIME-CAL with some debug MSGS.\n\n(fn TIME-CAL &rest MSGS)" t nil)

(autoload 'timesheet-clock-update-timeclock "timesheet" "\
If this is a CLOCK line, update /round it and return t.\nOtherwise, return nil.  Optionally using WITHPATH.\n\n(fn &optional WITHPATH)" t nil)

(autoload 'timesheet-today "timesheet" "\
Date for calculating timesheet: today.\n\n(fn)" t nil)

(autoload 'timesheet-yesterday "timesheet" "\
Date for calculating timesheet: yesterday.\n\n(fn)" t nil)

(autoload 'timesheet-at-point "timesheet" "\
Date for calculating timesheet: current clock line.\n\n(fn)" t nil)

(autoload 'timesheet-calc-today "timesheet" "\
Calculate timesheet for today.\n\n(fn)" t nil)

(autoload 'timesheet-calc-yesterday "timesheet" "\
Calculate timesheet for yesterday.\n\n(fn)" t nil)

(autoload 'timesheet-calc-at-point "timesheet" "\
Calculate timesheet for the date on this line.\n\n(fn)" t nil)

(autoload 'timesheet-weekly-at-point "timesheet" "\
Calculate week for the date on this line.\n\n(fn)" t nil)

(autoload 'timesheet-table-goto "timesheet" "\
In the table given at TOP move to a position COL ROW.\n\n(fn TOP COL ROW)" t nil)

(autoload 'timesheet-this-week "timesheet" "\
Date for calculating timesheet: today.\n\n(fn)" t nil)

(autoload 'timesheet-last-week "timesheet" "\
Date for calculating timesheet: yesterday.\n\n(fn)" t nil)

(autoload 'timesheet-weekly-this "timesheet" "\
Calculate timesheet this week.\n\n(fn)" t nil)

(autoload 'timesheet-weekly-last "timesheet" "\
Calculate timesheet last week.\n\n(fn)" t nil)

(autoload 'timesheet-this-month "timesheet" "\
Date for calculating timesheet: this month.\n\n(fn)" t nil)

(autoload 'timesheet-last-month "timesheet" "\
Date for calculating timesheet: last month.\n\n(fn)" t nil)

(autoload 'timesheet-last-day-in-month "timesheet" "\
Return the date for the last day in this month.\nCurrent month or month for TIME if present.\n\n(fn &optional TIME)" t nil)

(autoload 'timesheet-first-day-next-month "timesheet" "\
Return the date for the first day in the next month.\nCurrent month or month for TIME if present.\n\n(fn &optional TIME)" t nil)

(autoload 'timesheet-invoice-this "timesheet" "\
Calculate invoice this month.\n\n(fn)" t nil)

(autoload 'timesheet-invoice-at-point "timesheet" "\
Calculate invoice at point (a CLOCK line).\n\n(fn)" t nil)

(autoload 'timesheet-invoice-last "timesheet" "\
Calculate invoice last month.\n\n(fn)" t nil)

(autoload 'timesheet-goto-invoices "timesheet" "\
Goto (or create) the Invoices heading.\n\n(fn)" t nil)

(autoload 'timesheet-goto-invoice "timesheet" "\
Goto the invoice for the MONTH.\n\n(fn MONTH)" t nil)

(autoload 'timesheet-example "timesheet" "\
Setup a timesheet example with a customer called Yoyodyne.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "timesheet" '("timesheet-")))

;;;***

;;;### (autoloads nil nil ("timesheet-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; timesheet-autoloads.el ends here
