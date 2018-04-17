;;; deft-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "deft" "deft.el" (0 0 0 0))
;;; Generated autoloads from deft.el

(autoload 'deft-find-file "deft" "\
Find FILE interactively using the minibuffer.\nFILE must exist and be a relative or absolute path, with extension.\nIf FILE is not inside `deft-directory', fall back to using `find-file'.\n\n(fn FILE)" t nil)

(autoload 'deft-new-file "deft" "\
Create a new file quickly.\nUse either an automatically generated filename or the filter string if non-nil\nand `deft-use-filter-string-for-filename' is set.  If the filter string is\nnon-nil and title is not from filename, use it as the title.\n\n(fn)" t nil)

(autoload 'deft "deft" "\
Switch to *Deft* buffer and load files.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "deft" '("deft-" "org-deft-store-link")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; deft-autoloads.el ends here
