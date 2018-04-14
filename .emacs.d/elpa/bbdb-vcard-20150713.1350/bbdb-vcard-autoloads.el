;;; bbdb-vcard-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "bbdb-vcard" "bbdb-vcard.el" (0 0 0 0))
;;; Generated autoloads from bbdb-vcard.el

(autoload 'bbdb-vcard-import-region "bbdb-vcard" "\
Import the vCards between BEGIN and END into BBDB.\nExisting BBDB records may be altered.\n\n(fn BEGIN END &optional SOURCE-NAME)" t nil)

(autoload 'bbdb-vcard-import-buffer "bbdb-vcard" "\
Import vCards from VCARD-BUFFER into BBDB.\nExisting BBDB records may be altered.\n\n(fn VCARD-BUFFER)" t nil)

(autoload 'bbdb-vcard-import-file "bbdb-vcard" "\
Import vCards from VCARD-FILE into BBDB.\nIf VCARD-FILE is a wildcard, import each matching file.  Existing BBDB\nrecords may be altered.\n\n(fn VCARD-FILE)" t nil)

(autoload 'bbdb-vcard-export "bbdb-vcard" "\
From Buffer *BBDB*, write one or more record(s) as vCard(s) to file(s).\n\\<bbdb-mode-map>If \"\\[bbdb-apply-next-command-to-all-records]\\[bbdb-vcard-export]\"is used instead of simply \"\\[bbdb-vcard-export]\", then export all records currently\nin the *BBDB* buffer.  If used with prefix argument, store records\nin individual files.\n\n(fn FILENAME-OR-DIRECTORY ALL-RECORDS-P ONE-FILE-PER-RECORD-P &optional ALLOW-OVERWRITE)" t nil)

(autoload 'bbdb-vcard-export-to-kill-ring "bbdb-vcard" "\
From Buffer *BBDB*, copy one or more record(s) as vCard(s) to the kill ring.\n\\<bbdb-mode-map>If \"\\[bbdb-apply-next-command-to-all-records]\\[bbdb-vcard-export-to-kill-ring]\"is used instead of simply \"\\[bbdb-vcard-export-to-kill-ring]\", then export all records currently in\nthe *BBDB* buffer.\n\n(fn ALL-RECORDS-P)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-vcard" '("bbdb-")))

;;;***

;;;### (autoloads nil "vcard" "vcard.el" (0 0 0 0))
;;; Generated autoloads from vcard.el

(defvar vcard-pretty-print-function 'vcard-format-sample-box "\
*Formatting function used by `vcard-pretty-print'.")

(custom-autoload 'vcard-pretty-print-function "vcard" t)

(defvar vcard-standard-filters '(vcard-filter-html vcard-filter-adr-newlines vcard-filter-tel-normalize vcard-filter-textprop-cr) "\
*Standard list of filters to apply to parsed vcard data.\nThese filters are applied sequentially to vcard attributes when\nthe function `vcard-standard-filter' is supplied as the second argument to\n`vcard-parse'.")

(custom-autoload 'vcard-standard-filters "vcard" t)

(autoload 'vcard-pretty-print "vcard" "\
Format VCARD into a string suitable for display to user.\nVCARD can be an unparsed string containing raw VCF vcard data\nor a parsed vcard alist as returned by `vcard-parse-string'.\n\nThe result is a string with formatted vcard information suitable for\ninsertion into a mime presentation buffer.\n\nThe function specified by the variable `vcard-pretty-print-function'\nactually performs the formatting.  That function will always receive a\nparsed vcard alist.\n\n(fn VCARD)" nil nil)

(autoload 'vcard-parse-string "vcard" "\
Parse RAW vcard data as a string, and return an alist representing data.\n\nIf the optional function FILTER is specified, apply that filter to each\nattribute.  If no filter is specified, `vcard-standard-filter' is used.\n\nFilters should accept two arguments: the property list and the value list.\nModifying in place the property or value list will affect the resulting\nattribute in the vcard alist.\n\nVcard data is normally in the form\n\n    begin:                        vcard\n    prop1a:                       value1a\n    prop2a;prop2b;prop2c=param2c: value2a\n    prop3a;prop3b:                value3a;value3b;value3c\n    end:                          vcard\n\n(Whitespace around the `:' separating properties and values is optional.)\nIf supplied to this function an alist of the form\n\n    (((\"prop1a\") \"value1a\")\n     ((\"prop2a\" \"prop2b\" (\"prop2c\" . \"param2c\")) \"value2a\")\n     ((\"prop3a\" \"prop3b\") \"value3a\" \"value3b\" \"value3c\"))\n\nwould be returned.\n\n(fn RAW &optional FILTER)" nil nil)

(autoload 'vcard-parse-region "vcard" "\
Parse the raw vcard data in region, and return an alist representing data.\nThis function is just like `vcard-parse-string' except that it operates on\na region of the current buffer rather than taking a string as an argument.\n\nNote: this function modifies the buffer!\n\n(fn BEG END &optional FILTER)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vcard" '("vcard-")))

;;;***

;;;### (autoloads nil nil ("bbdb-vcard-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bbdb-vcard-autoloads.el ends here
