;;; avy-menu-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "avy-menu" "avy-menu.el" (0 0 0 0))
;;; Generated autoloads from avy-menu.el

(autoload 'avy-menu "avy-menu" "\
Show a popup menu in a temporary window and return user's selection.\n\nBUFFER-OR-NAME specifies name of the buffer (or buffer itself)\nthat hosts menu options.  MENU itself should be a list of the\nform (TITLE PANE1 PANE2 …), where each pane is a list of\nform (TITLE ITEM1 ITEM2 …).  Each item is normally a cons\ncell (STRING . VALUE), but a string can appear as an item—that\nmakes a non-selectable item in the menu.  Also, empty strings\nstart a new sub-section.\n\nIf SHOW-PANE-HEADER is not NIL, show pane headers (titles),\notherwise hide them.\n\nReturned value is VALUE if user has selected something and NIL if\nhe has cancelled the whole menu or pressed key that does not\ncorrespond to any available option.\n\n(fn BUFFER-OR-NAME MENU &optional SHOW-PANE-HEADER)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "avy-menu" '("avy-menu--insert-strings")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; avy-menu-autoloads.el ends here
