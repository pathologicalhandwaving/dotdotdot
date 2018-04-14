;;; ebib-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ebib" "ebib.el" (0 0 0 0))
;;; Generated autoloads from ebib.el

(autoload 'ebib "ebib" "\
Ebib, a BibTeX database manager.\nOptional argument FILE is a file to load.  If FILE is already\nloaded, switch to it.  If KEY is given, jump to it.\n\n(fn &optional FILE KEY)" t nil)

(autoload 'ebib-ivy-insert-citation "ebib" "\
Insert a citation at point using ivy.\nThe user is prompted for a BibTeX key from the database(s)\nassociated with the current buffer (see\n`ebib--get-local-databases' for details), or from the current\ndatabase if the current buffer has no databases.\n\n(fn)" t nil)

(autoload 'ebib-insert-citation "ebib" "\
Insert a citation at POINT.\nThe user is prompted for a BibTeX key and has to choose one from\nthe database(s) associated with the current buffer (see\n`ebib--get-local-databases' for details), or from the current\ndatabase if the current buffer has no databases.\n\nThis is a front-end for other citation insertion functions: if\nthe `ivy' package is loaded, it calls `ebib-ivy-insert-citation',\notherwise it calls `ebib-insert-citation-default-method', which\nuses standard Emacs completion.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ebib" '("ebib-")))

;;;***

;;;### (autoloads nil "ebib-db" "ebib-db.el" (0 0 0 0))
;;; Generated autoloads from ebib-db.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ebib-db" '("ebib-")))

;;;***

;;;### (autoloads nil "ebib-filters" "ebib-filters.el" (0 0 0 0))
;;; Generated autoloads from ebib-filters.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ebib-filters" '("ebib-")))

;;;***

;;;### (autoloads nil "ebib-keywords" "ebib-keywords.el" (0 0 0 0))
;;; Generated autoloads from ebib-keywords.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ebib-keywords" '("ebib-")))

;;;***

;;;### (autoloads nil "ebib-notes" "ebib-notes.el" (0 0 0 0))
;;; Generated autoloads from ebib-notes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ebib-notes" '("ebib-")))

;;;***

;;;### (autoloads nil "ebib-reading-list" "ebib-reading-list.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ebib-reading-list.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ebib-reading-list" '("ebib-")))

;;;***

;;;### (autoloads nil "ebib-utils" "ebib-utils.el" (0 0 0 0))
;;; Generated autoloads from ebib-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ebib-utils" '("ebib-" "with-")))

;;;***

;;;### (autoloads nil "org-ebib" "org-ebib.el" (0 0 0 0))
;;; Generated autoloads from org-ebib.el

(autoload 'org-ebib-open "org-ebib" "\
Open Ebib and jump to KEY.\n\n(fn KEY)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-ebib" '("org-ebib-")))

;;;***

;;;### (autoloads nil nil ("ebib-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ebib-autoloads.el ends here
