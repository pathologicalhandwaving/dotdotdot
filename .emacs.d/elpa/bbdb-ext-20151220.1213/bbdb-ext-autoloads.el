;;; bbdb-ext-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "bbdb-ext" "bbdb-ext.el" (0 0 0 0))
;;; Generated autoloads from bbdb-ext.el

(autoload 'bbdb-google-map "bbdb-ext" "\
Search REC's address field using Google Maps.\nIf REC is nil, the current record will be used.\nIf there is no address filed for REC, a message will be given in minibuffer.\nIf there are several addresses for REC, the address nearest point will be used.\n\n(fn &optional REC)" t nil)

(autoload 'bbdb-recursive-search-all "bbdb-ext" "\
Display all entries in the *BBDB* buffer matching the REGEX in either the name(s), company, network address, or notes.\n\n(fn REGEX)" t nil)

(autoload 'bbdb-recursive-search-name "bbdb-ext" "\
Display all entries in the *BBDB* buffer matching the REGEX in the name (or ``alternate'' names) field.\n\n(fn REGEX)" t nil)

(autoload 'bbdb-recursive-search-company "bbdb-ext" "\
Display all entries in *BBDB* buffer matching REGEX in the company field.\n\n(fn REGEX)" t nil)

(autoload 'bbdb-recursive-search-net "bbdb-ext" "\
Display all entries in *BBDB* buffer matching regexp REGEX in the network/email address.\n\n(fn REGEX)" t nil)

(autoload 'bbdb-recursive-search-xfields "bbdb-ext" "\
Display all BBDB records for which xfield FIELD matches REGEXP.\n\n(fn FIELD REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-recursive-search-phones "bbdb-ext" "\
Display all entries in *BBDB* buffer matching the REGEX in the phones field.\n\n(fn REGEX)" t nil)

(autoload 'bbdb-recursive-search-address "bbdb-ext" "\
Display all entries in the *BBDB* buffer matching the REGEX in the address fields.\n\n(fn REGEX)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-ext" '("bbdb-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bbdb-ext-autoloads.el ends here
