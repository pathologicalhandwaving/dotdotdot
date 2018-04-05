;;; orgtbl-join-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-insert-dblock" "org-insert-dblock.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-insert-dblock.el

(autoload 'org-insert-dblock:columnview "org-insert-dblock" "\
Adapter function for inserting a column view.\n\n(fn)" t nil)

(autoload 'org-insert-dblock:clocktable "org-insert-dblock" "\
Adapter function to insert a clock-table.\n\n(fn)" t nil)

(autoload 'org-insert-dblock:propview "org-insert-dblock" "\
Adapter function to insert a property view.\n\n(fn)" t nil)

(autoload 'org-insert-dblock:invoice "org-insert-dblock" "\
Adapter function to insert an invoce block.\n\n(fn)" t nil)

(autoload 'org-insert-dblock "org-insert-dblock" "\
Insert an org table dynamic block.\nThis is a dispatching function which prompts for the type\nof dynamic block to insert.  It dispatches to functions\nwhich names matches the pattern \\[org-insert-dblock:*]\n\n(fn)" t nil)

(autoload 'org-insert-dblock-bindings "org-insert-dblock" "\
Setup key-binding.\nThis function can be called in your .emacs. It will extend the\nC-c C-x i key-binding for inserting any dynamic block, not only\n\\[org-insert-columns-dblock]\n\n(fn)" nil nil)

;;;***

;;;### (autoloads nil "orgtbl-join" "orgtbl-join.el" (0 0 0 0))
;;; Generated autoloads from orgtbl-join.el

(autoload 'orgtbl-join "orgtbl-join" "\
Add material from a reference table to the current table.\nRows from the reference table are appended to rows of the current\ntable.  For each row of the current table, matching rows from the\nreference table are searched and appended.  The matching is\nperformed by testing for equality of cells in the current column,\nand a joining column in the reference table.  If a row in the\ncurrent table matches several rows in the reference table, then\nthe current row is duplicated and each copy is appended with a\ndifferent reference row.  If no matching row is found in the\nreference table, then the current row is kept, with empty cells\nappended to it.\n\n(fn)" t nil)

(autoload 'orgtbl-to-joined-table "orgtbl-join" "\
Enrich the master TABLE with lines from a reference table.\n\nPARAMS contains pairs of key-value with the following keys:\n\n:ref-table   the reference table.\n             Lines from the reference table will be added to the\n             master table.\n\n:mas-column  the master joining column.\n             This column names one of the master table columns.\n\n:ref-column  the reference joining column.\n             This column names one of the reference table columns.\n\nColumns names are either found in the header of the table, if the\ntable have a header, or a dollar form: $1, $2, and so on.\n\nThe destination must be specified somewhere in the\nsame file with a bloc like this:\n#+BEGIN RECEIVE ORGTBL destination_table_name\n#+END RECEIVE ORGTBL destination_table_name\n\n(fn TABLE PARAMS)" t nil)

(autoload 'org-insert-dblock:join "orgtbl-join" "\
Wizard to interactively insert a joined table as a dynamic block.\n\n(fn)" t nil)

(autoload 'org-dblock-write:join "orgtbl-join" "\
Create a joined table out of a master and a reference table.\n\nPARAMS contains pairs of key-value with the following keys:\n\n:mas-table   the master table.\n             This table will be copied and enriched with material\n             from the reference table.\n\n:ref-table   the reference table.\n             Lines from the reference table will be added to the\n             master table.\n\n:mas-column  the master joining column.\n             This column names one of the master table columns.\n\n:ref-column  the reference joining column.\n             This column names one of the reference table columns.\n\nColumns names are either found in the header of the table, if the\ntable have a header, or a dollar form: $1, $2, and so on.\n\nThe\n#+BEGIN RECEIVE ORGTBL destination_table_name\n#+END RECEIVE ORGTBL destination_table_name\n\n(fn PARAMS)" t nil)

(autoload 'orgtbl-join-setup-keybindings "orgtbl-join" "\
Setup key-binding and menu entry.\nThis function can be called in your .emacs. It will add the `C-c\nC-x j' key-binding for calling the orgtbl-join wizard, and a menu\nentry under Tbl > Column > Join with another table.\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "orgtbl-join" '("orgtbl-")))

;;;***

;;;### (autoloads nil nil ("orgtbl-join-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; orgtbl-join-autoloads.el ends here
