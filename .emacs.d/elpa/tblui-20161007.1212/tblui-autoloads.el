;;; tblui-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "tblui" "tblui.el" (0 0 0 0))
;;; Generated autoloads from tblui.el

(autoload 'tblui-define "tblui" "\
Define tabulated list UI easily.  Hereafter referred as tblui.\nThis macro defines functions and popups for the defined tblui.\nUser of this macro can focus on writing the logic for ui, let this\npackage handle the tabulated list buffer interaction part.\n\nEach arguments are explained as follows:\n\n * `TBLUI-NAME` : the symbol name of defining tblui.  It will be used\n                  as prefix for functions defined via this macro.\n * `ENTRIES-PROVIDER` : the function which provides tabulated-list-entries\n * `TABLE-LAYOUT` : the `tabulated-list-format` to be used for the tblui.\n * `POPUP-DEFINITIONS` : list of popup definition.\n   A popup definition is an plist of\n       `(:key KEY :name NAME :funcs FUNCTIONS)`.\n   KEY is the key to be bound for the defined magit-popup.\n   NAME is the name for defined magit-popup.\n   FUNCTIONS is the list of action definition.\n   Action definition is a list of 3 elements,\n   which is `(ACTIONKEY DESCRIPTION FUNCTION)`.\n\n   ACTIONKEY is the key to be used as action key in the magit-popup.\n   DESCRIPTION is the description of the action.\n   FUNCTION is the logic to be called for this UI.\n   It is the elisp function which receives the IDs of tabulated-list entry,\n    and do what ever operation.\n\nWith this macro `TBLUI-NAME-goto-ui` function is defined.\nCalling this function will popup and switch to the tblui buffer.\n\n(fn TBLUI-NAME ENTRIES-PROVIDER TABLE-LAYOUT POPUP-DEFINITIONS)" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tblui" '("tblui--")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; tblui-autoloads.el ends here
