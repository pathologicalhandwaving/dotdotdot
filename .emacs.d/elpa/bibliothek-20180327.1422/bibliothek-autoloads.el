;;; bibliothek-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "bibliothek" "bibliothek.el" (0 0 0 0))
;;; Generated autoloads from bibliothek.el

(autoload 'bibliothek-filter "bibliothek" "\
Limit results using MATCH, see ‘bibliothek’.\n\nThis can be used as an alternative entry point to the Bibliothek\nlibrary listing.\n\n(fn MATCH)" t nil)

(autoload 'bibliothek "bibliothek" "\
Show the library contents.\n\nThis is the main entry point to the Bibliothek package.  It shows a\ntabulated list of metadata for all the PDF files found in the\ndirectories under ‘bibliothek-path’.\n\nMATCH is an optional argument, a string, used to filter the\nlibrary listing.  An entry is included if one or more of the\nfields match.\n\nThe keybindings are as follows:\n\n\\{bibliothek-mode-map}\n\n(fn &optional (MATCH \"\"))" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bibliothek" '("bibl")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bibliothek-autoloads.el ends here
