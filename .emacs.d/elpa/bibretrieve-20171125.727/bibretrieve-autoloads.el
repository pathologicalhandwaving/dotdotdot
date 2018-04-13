;;; bibretrieve-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "bibretrieve-base" "bibretrieve-base.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from bibretrieve-base.el

(autoload 'bibretrieve "bibretrieve-base" "\
Search the web for bibliography entries.\n\nAfter prompting for author and title, searches on the web, using the\nbackends specified by the customization variable\n`bibretrieve-backends'.  A selection process (using RefTeX Selection)\nallows to select entries to add to the current buffer or to a\nbibliography file.\n\n When called with a `C-u' prefix, permits to select the backend and the\n timeout for the search.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bibretrieve-base" '("bibretrieve-")))

;;;***

;;;### (autoloads nil nil ("bibretrieve-pkg.el" "bibretrieve.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bibretrieve-autoloads.el ends here
