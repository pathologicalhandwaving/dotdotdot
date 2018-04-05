;;; orgtbl-aggregate-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-insert-dblock" "org-insert-dblock.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-insert-dblock.el

(autoload 'org-insert-dblock:columnview "org-insert-dblock" "\
\n\n(fn)" t nil)

(autoload 'org-insert-dblock:clocktable "org-insert-dblock" "\
\n\n(fn)" t nil)

(autoload 'org-insert-dblock:propview "org-insert-dblock" "\
\n\n(fn)" t nil)

(autoload 'org-insert-dblock:invoice "org-insert-dblock" "\
\n\n(fn)" t nil)

(autoload 'org-insert-dblock "org-insert-dblock" "\
Inserts an org table dynamic block.\nThis is a dispatching function which prompts for the type\nof dynamic block to insert. It dispatches to functions\nwhich names matches the pattern `org-insert-dblock:*'\n\n(fn)" t nil)

(autoload 'org-insert-dblock-bindings "org-insert-dblock" "\
\n\n(fn)" nil nil)

(if (functionp 'org-defkey) (org-insert-dblock-bindings) (setq org-load-hook (cons 'org-insert-dblock-bindings (if (boundp 'org-load-hook) org-load-hook))))

;;;***

;;;### (autoloads nil "orgtbl-aggregate" "orgtbl-aggregate.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from orgtbl-aggregate.el

(autoload 'orgtbl-to-aggregated-table "orgtbl-aggregate" "\
Convert the orgtbl-mode TABLE to another orgtbl-mode table\nwith material aggregated.\nGrouping of rows is done for identical values of grouping columns.\nFor each group, aggregation (sum, mean, etc.) is done for other columns.\n  \nThe source table must contain sending directives with the following format:\n#+ORGTBL: SEND destination orgtbl-to-aggregated-table :cols ... :cond ...\n\nThe destination must be specified somewhere in the same file\nwith a bloc like this:\n  #+BEGIN RECEIVE ORGTBL destination\n  #+END RECEIVE ORGTBL destination\n\n:cols     gives the specifications of the resulting columns.\n          It is a space-separated list of column specifications.\n          Example:\n             P Q sum(X) max(X) mean(Y)\n          Which means:\n             group rows with similar values in columns P and Q,\n             and for each group, compute the sum of elements in\n             column X, etc.\n\n          The specification for a resulting column may be:\n             COL              the name of a grouping column in the source table\n             hline            a special name for grouping rows separated\n                              by horizontal lines\n             count()          give the number of rows in each group\n             list(COL)        list the values of the column for each group\n             sum(COL)         compute the sum of the column for each group\n             sum(COL1*COL2)   compute the sum of the product of two columns\n                              for each group\n             mean(COL)        compute the average of the column for each group\n             mean(COL1*COL2)  compute the average of the product of two columns\n                              for each group\n             meane(COL)       compute the average along with the estimated error\n             hmean(COL)       compute the harmonic average\n             gmean(COL)       compute the geometric average\n             median(COL)      give the middle element after sorting them\n             max(COL)         gives the largest element of each group\n             min(COL)         gives the smallest element of each group\n             sdev(COL)        compute the standard deviation (divide by N-1)\n             psdev(COL)       compute the population standard deviation (divide by N)\n             pvar(COL)        compute the variance\n             prod(COL)        compute the product\n             cov(COL1,COL2)   compute the covariance of two columns\n                              for each group (divide by N-1)\n             pcov(COL1,COL2)  compute the population covariance of two columns\n                              for each group (/N)\n             corr(COL1,COL2)  compute the linear correlation of two columns\n\n:cond     optional\n          a lisp expression to filter out rows in the source table\n          when the expression evaluate to nil for a given row of the source table,\n          then this row is discarded in the resulting table\n          Example:\n             (equal Q \"b\")\n          Which means: keep only source rows for which the column Q has the value b\n\nColumns in the source table may be in the dollar form,\nfor example $3 to name the 3th column,\nor by its name if the source table have a header.\nIf all column names are in the dollar form,\nthe table is supposed not to have a header.\nThe special column name \"hline\" takes values from zero and up\nand is incremented by one for each horizontal line.\n\nExample:\nadd a line like this one before your table\n,#+ORGTBL: SEND aggregatedtable orgtbl-to-aggregated-table :cols \"sum(X) q sum(Y) mean(Z) sum(X*X)\"\nthen add somewhere in the same file the following lines:\n,#+BEGIN RECEIVE ORGTBL aggregatedtable\n,#+END RECEIVE ORGTBL aggregatedtable\nType C-c C-c into your source table\n\nNote:\n This is the 'push' mode for aggregating a table.\n To use the 'pull' mode, look at the org-dblock-write:aggregate function.\n\n(fn TABLE PARAMS)" t nil)

(autoload 'org-dblock-write:aggregate "orgtbl-aggregate" "\
Creates a table which is the aggregation of material from another table.\nGrouping of rows is done for identical values of grouping columns.\nFor each group, aggregation (sum, mean, etc.) is done for other columns.\n\n:table    name of the source table\n\n:cols     gives the specifications of the resulting columns.\n          It is a space-separated list of column specifications.\n          Example:\n             \"P Q sum(X) max(X) mean(Y)\"\n          Which means:\n             group rows with similar values in columns P and Q,\n             and for each group, compute the sum of elements in\n             column X, etc.\n\n          The specification for a resulting column may be:\n             COL              the name of a grouping column in the source table\n             hline            a special name for grouping rows separated\n                              by horizontal lines\n             count()          give the number of rows in each group\n             list(COL)        list the values of the column for each group\n             sum(COL)         compute the sum of the column for each group\n             sum(COL1*COL2)   compute the sum of the product of two columns\n                              for each group\n             mean(COL)        compute the average of the column for each group\n             mean(COL1*COL2)  compute the average of the product of two columns\n                              for each group\n             meane(COL)       compute the average along with the estimated error\n             hmean(COL)       compute the harmonic average\n             gmean(COL)       compute the geometric average\n             median(COL)      give the middle element after sorting them\n             max(COL)         gives the largest element of each group\n             min(COL)         gives the smallest element of each group\n             sdev(COL)        compute the standard deviation (divide by N-1)\n             psdev(COL)       compute the population standard deviation (divide by N)\n             pvar(COL)        compute the variance\n             prod(COL)        compute the product\n             cov(COL1,COL2)   compute the covariance of two columns\n                              for each group (divide by N-1)\n             pcov(COL1,COL2)  compute the population covariance of two columns\n                              for each group (/N)\n             corr(COL1,COL2)  compute the linear correlation of two columns\n\n:cond     optional\n          a lisp expression to filter out rows in the source table\n          when the expression evaluate to nil for a given row of the source table,\n          then this row is discarded in the resulting table\n          Example:\n             (equal Q \"b\")\n          Which means: keep only source rows for which the column Q has the value b\n\nColumns in the source table may be in the dollar form,\nfor example $3 to name the 3th column,\nor by its name if the source table have a header.\nIf all column names are in the dollar form,\nthe table is supposed not to have a header.\nThe special column name \"hline\" takes values from zero and up\nand is incremented by one for each horizontal line.\n\nExample:\n- Create an empty dynamic block like this:\n  #+BEGIN: aggregate :table originaltable :cols \"sum(X) Q sum(Y) mean(Z) sum(X*X)\"\n  #+END\n- Type C-c C-c over the BEGIN line\n  this fills in the block with an aggregated table\n\nNote:\n This is the 'pull' mode for aggregating a table.\n To use the 'push' mode, look at the orgtbl-to-aggregated-table function.\n\n(fn PARAMS)" t nil)

(autoload 'org-insert-dblock:aggregate "orgtbl-aggregate" "\
Wizard to interactively insert an aggregate dynamic block.\n\n(fn)" t nil)

(autoload 'orgtbl-to-transposed-table "orgtbl-aggregate" "\
Convert the orgtbl-mode TABLE to a transposed version.\nRows become columns, columns become rows.\n\nThe source table must contain sending directives with the following format:\n#+ORGTBL: SEND destination orgtbl-to-transposed-table :cols ... :cond ...\n\nThe destination must be specified somewhere in the same file\nwith a bloc like this:\n  #+BEGIN RECEIVE ORGTBL destination\n  #+END RECEIVE ORGTBL destination\n\n:cols     optional, if omitted all source columns are taken.\n          Columns specified here will become rows in the result.\n          Valid specifications are\n          - names as they appear in the first row of the source table\n          - $N forms, starting from $1\n          - the special hline column which is the numbering of\n            blocks separated by horizontal lines in the source table\n\n:cond     optional\n          a lisp expression to filter out rows in the source table\n          when the expression evaluate to nil for a given row of the source table,\n          then this row is discarded in the resulting table\n          Example:\n             (equal Q \"b\")\n          Which means: keep only source rows for which the column Q has the value b\n\nColumns in the source table may be in the dollar form,\nfor example $3 to name the 3th column,\nor by its name if the source table have a header.\nIf all column names are in the dollar form,\nthe table is supposed not to have a header.\nThe special column name \"hline\" takes values from zero and up\nand is incremented by one for each horizontal line.\n\nHorizontal lines are converted to empty columns,\nand the other way around.\n\nThe destination must be specified somewhere in the same file\nwith a block like this:\n  #+BEGIN RECEIVE ORGTBL destination_table_name\n  #+END RECEIVE ORGTBL destination_table_name\n\nType C-c C-c in the source table to re-create the transposed version.\n\nNote:\n This is the 'push' mode for transposing a table.\n To use the 'pull' mode, look at the org-dblock-write:transpose function.\n\n(fn TABLE PARAMS)" t nil)

(autoload 'org-dblock-write:transpose "orgtbl-aggregate" "\
Create a transposed version of the orgtbl TABLE\nRows become columns, columns become rows.\n\n:table    names the source table\n\n:cols     optional, if omitted all source columns are taken.\n          Columns specified here will become rows in the result.\n          Valid specifications are\n          - names as they appear in the first row of the source table\n          - $N forms, starting from $1\n          - the special hline column which is the numbering of\n            blocks separated by horizontal lines in the source table\n\n:cond     optional\n          a lisp expression to filter out rows in the source table\n          when the expression evaluate to nil for a given row of the source table,\n          then this row is discarded in the resulting table\n          Example:\n             (equal q \"b\")\n          Which means: keep only source rows for which the column q has the value b\n\nColumns in the source table may be in the dollar form,\nfor example $3 to name the 3th column,\nor by its name if the source table have a header.\nIf all column names are in the dollar form,\nthe table is supposed not to have a header.\nThe special column name \"hline\" takes values from zero and up\nand is incremented by one for each horizontal line.\n\nHorizontal lines are converted to empty columns,\nand the other way around.\n\n- Create an empty dynamic block like this:\n  #+BEGIN: aggregate :table originaltable\n  #+END\n- Type C-c C-c over the BEGIN line\n  this fills in the block with the transposed table\n\nNote:\n This is the 'pull' mode for transposing a table.\n To use the 'push' mode, look at the orgtbl-to-transposed-table function.\n\n(fn PARAMS)" t nil)

(autoload 'org-insert-dblock:transpose "orgtbl-aggregate" "\
Wizard to interactively insert a transpose dynamic block.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "orgtbl-aggregate" '("org" "split-string-with-quotes" "math-m" "-appendable-list-")))

;;;***

;;;### (autoloads nil nil ("orgtbl-aggregate-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; orgtbl-aggregate-autoloads.el ends here
