;;; bibslurp-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "bibslurp" "bibslurp.el" (0 0 0 0))
;;; Generated autoloads from bibslurp.el

(autoload 'bibslurp-query-ads "bibslurp" "\
Ask for a search string and sends the query to NASA ADS.

Press \"C-c C-c\" to turn to the advanced search interface.

\(fn &optional SEARCH-STRING)" t nil)

(autoload 'bibslurp-query-ads-advanced-search "bibslurp" "\
Query ADS using advanced search.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bibslurp" '("bibslurp")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bibslurp-autoloads.el ends here
