;;; char-menu-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "char-menu" "char-menu.el" (0 0 0 0))
;;; Generated autoloads from char-menu.el

(autoload 'char-menu "char-menu" "\
Display the given MENU and insert selected item, if any.

See information about format of the menu in documentation of
`char-menu'.  If no argument is supplied, menu from that variable
will be used.  Note that MENU should not be empty, or error will
be signalled.

HEADER, if supplied, will be appended to the default menu
header.

\(fn &optional MENU HEADER)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "char-menu" '("char-menu")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; char-menu-autoloads.el ends here
