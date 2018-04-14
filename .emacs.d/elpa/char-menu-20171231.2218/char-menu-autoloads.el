;;; char-menu-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "char-menu" "char-menu.el" (0 0 0 0))
;;; Generated autoloads from char-menu.el

(autoload 'char-menu "char-menu" "\
Display the given MENU and insert selected item, if any.\n\nSee information about format of the menu in documentation of\n`char-menu'.  If no argument is supplied, menu from that variable\nwill be used.  Note that MENU should not be empty, or error will\nbe signalled.\n\nHEADER, if supplied, will be appended to the default menu\nheader.\n\n(fn &optional MENU HEADER)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "char-menu" '("char-menu")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; char-menu-autoloads.el ends here
