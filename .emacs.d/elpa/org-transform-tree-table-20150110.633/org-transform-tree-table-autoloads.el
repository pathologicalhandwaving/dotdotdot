;;; org-transform-tree-table-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-transform-tree-table" "org-transform-tree-table.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-transform-tree-table.el

(autoload 'org-transform-tree/org-table-buffer-from-outline "org-transform-tree-table" "\
Transform an org tree to an org-table and return a new buffer\nwith the table.\n\nIf the region is active, convert that part of the\ntree. Otherwise, if point is on an org heading, convert that\nheading and its subtree. Otherwise convert the buffer.\n\nIn the resulting table, row one is the column titles. The rest of\nthe rows are property values.\n\nColumn one is the outline heading, and the rest are the\nproperties in the order they first appear in the buffer.\n\nHowever, all special properties (e.g. 'COLUMNS', '*_ALL') are\nplaced after all the user properties (i.e. whatever properties\nthe user has added to capture information).\n\n(fn)" t nil)

(autoload 'org-transform-tree/csv-buffer-from-outline "org-transform-tree-table" "\
Transform an org tree to CSV format and return a new buffer\nwith the table.\n\nExcept it's not comma separated. It's tab separated because with\nall (non) 'standard' ways to escape ',' in CSV files... let's not\neven go there.\n\nIf the region is active, convert that part of the\ntree. Otherwise, if point is on an org heading, convert that\nheading and its subtree. Otherwise convert the buffer.\n\nIn the resulting table, row one is the column titles. The rest of\nthe rows are property values.\n\nColumn one is the outline heading, and the rest are the\nproperties in the order they first appear in the buffer.\n\nHowever, all special properties (e.g. 'COLUMNS', '*_ALL') are\nplaced after all the user properties (i.e. whatever properties\nthe user has added to capture information).\n\n(fn)" t nil)

(autoload 'org-transform-table/org-tree-buffer-from-org-table "org-transform-tree-table" "\
Transform the org-table at point to an org-mode outline and\nreturn a new buffer with the new tree.\n\nRaise an error if point isn't on an org-table.\n\n(fn)" t nil)

(autoload 'org-transform-table/org-tree-buffer-from-csv "org-transform-tree-table" "\
Transform the buffer CSV table to an org-mode outline and\nreturn a new buffer with the new tree.\n\n(fn)" t nil)

(autoload 'org-transform-tree-table/toggle "org-transform-tree-table" "\
Toggle between an outline subtree and an org-table, depending\non what point is placed on.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-transform-tree-table" '("ott/")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-transform-tree-table-autoloads.el ends here
