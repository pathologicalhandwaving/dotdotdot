;;; web-search-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "web-search" "web-search.el" (0 0 0 0))
;;; Generated autoloads from web-search.el

(autoload 'web-search "web-search" "\
Search for QUERY on website(s).\n\nWithout prefix argument, search on `web-search-default-provider'.\nOne C-u, choose a provider.\nTwo C-u, choose a tag (notes that a tag can match multiple providers).\n\n(fn QUERY &optional PROVIDERS TAG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "web-search" '("web-search-")))

;;;***

;;;### (autoloads nil nil ("web-search-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; web-search-autoloads.el ends here
