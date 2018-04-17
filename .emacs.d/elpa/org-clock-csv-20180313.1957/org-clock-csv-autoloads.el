;;; org-clock-csv-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-clock-csv" "org-clock-csv.el" (0 0 0 0))
;;; Generated autoloads from org-clock-csv.el

(autoload 'org-clock-csv "org-clock-csv" "\
Export clock entries from INFILE to CSV format.\n\nWhen INFILE is a filename or list of filenames, export clock\nentries from these files. Otherwise, use `org-agenda-files'.\n\nSee also `org-clock-csv-batch' for a function more appropriate\nfor use in batch mode.\n\n(fn &optional INFILE)" t nil)

(autoload 'org-clock-csv-batch-and-exit "org-clock-csv" "\
Export clock entries in CSV format to standard output.\n\nThis function is identical in function to `org-clock-csv' except\nthat it directs output to `standard-output'. It is intended for\nuse in batch mode.\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-clock-csv" '("org-clock-csv-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-clock-csv-autoloads.el ends here
