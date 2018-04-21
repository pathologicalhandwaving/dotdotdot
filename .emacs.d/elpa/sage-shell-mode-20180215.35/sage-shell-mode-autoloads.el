;;; sage-shell-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "sage-shell-blocks" "sage-shell-blocks.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from sage-shell-blocks.el

(autoload 'sage-shell-blocks:backward "sage-shell-blocks" "\
Move backwards to the last beginning of a block.\n\n(fn ARG)" t nil)

(autoload 'sage-shell-blocks:forward "sage-shell-blocks" "\
Move forwards to the next beginning of a block.\n\n(fn ARG)" t nil)

(autoload 'sage-shell-blocks:send-current "sage-shell-blocks" "\
Send the block that the point is currently in to the inferior shell.\nMove to end of block sent.\n\n(fn)" t nil)

(autoload 'sage-shell-blocks:pull-next "sage-shell-blocks" "\
Evaluate the next block of the last visited file in Sage mode.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sage-shell-blocks" '("sage-shell-blocks:")))

;;;***

;;;### (autoloads nil "sage-shell-mode" "sage-shell-mode.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from sage-shell-mode.el

(defvaralias 'sage-shell:command 'sage-shell:sage-executable)

(defvaralias 'sage-shell:add-to-texinputs-p 'sage-shell-sagetex:add-to-texinputs-p)

(autoload 'sage-shell:run-sage "sage-shell-mode" "\
\n\n(fn CMD)" t nil)

(autoload 'sage-shell:run-new-sage "sage-shell-mode" "\
\n\n(fn CMD)" t nil)

(autoload 'sage-shell:sage-mode "sage-shell-mode" "\
\n\n(fn)" t nil)

(defvar sage-shell:func-alias-alist '((sage-shell:sage-mode . sage-mode) (sage-shell:run-sage . run-sage) (sage-shell:run-new-sage . run-new-sage)))

(defvar sage-shell:var-alias-alist '((sage-shell:sage-mode-map . sage-mode-map) (sage-shell:sage-mode-hook . sage-mode-hook) (sage-shell:sage-mode-syntax-table . sage-mode-syntax-table) (sage-shell:sage-mode-abbrev-table . sage-mode-abbrev-table)))

(defun sage-shell:define-alias nil "\
Define aliases as follows:\n| Original name                     | Alias                  |\n|-----------------------------------+------------------------|\n| sage-shell:sage-mode              | sage-mode              |\n| sage-shell:sage-mode-map          | sage-mode-map          |\n| sage-shell:sage-mode-hook         | sage-mode-hook         |\n| sage-shell:sage-mode-syntax-table | sage-mode-syntax-table |\n| sage-shell:sage-mode-abbrev-table | sage-mode-abbrev-table |\n| sage-shell:run-sage               | run-sage               |\n| sage-shell:run-new-sage           | run-new-sage           |\n|-----------------------------------+------------------------|\n" (interactive) (dolist (c sage-shell:func-alias-alist) (defalias (cdr c) (car c))) (dolist (c sage-shell:var-alias-alist) (defvaralias (cdr c) (car c))))

(add-to-list 'auto-mode-alist `(,(rx ".sage" eos) . sage-shell:sage-mode))

(autoload 'sage-shell-sagetex:load-file "sage-shell-mode" "\
Load a .sagetex.sage file to an existing Sage process.\nIf TeX-master is set, this function uses its variable.\n\n(fn FILENAME)" t nil)

(autoload 'sage-shell-sagetex:load-current-file "sage-shell-mode" "\
\n\n(fn)" t nil)

(defalias 'sage-shell:sagetex-load-file 'sage-shell-sagetex:load-file)

(autoload 'sage-shell-sagetex:compile-file "sage-shell-mode" "\
This command runs LaTeX on the current file, loads the\n.sagetex.sage file to an existing Sage process and runs LaTeX\nagain. If TeX-master is set, this function uses its variable.\nSee the documentation of\n`sage-shell-sagetex:latex-command' and\n`sage-shell-sagetex:auctex-command-name' for the customization.\n\n(fn F)" t nil)

(autoload 'sage-shell-sagetex:compile-current-file "sage-shell-mode" "\
\n\n(fn)" t nil)

(autoload 'sage-shell-sagetex:run-latex-and-load-file "sage-shell-mode" "\
This command runs LaTeX and loads a .sagetex.sage file to the\nexisiting Sage process. If TeX-master is set, this function uses its variable.\n\n(fn F)" t nil)

(autoload 'sage-shell-sagetex:run-latex-and-load-current-file "sage-shell-mode" "\
\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sage-shell-mode" '("sage-shell")))

;;;***

;;;### (autoloads nil "sage-shell-view" "sage-shell-view.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from sage-shell-view.el

(autoload 'sage-shell-view-mode "sage-shell-view" "\
Toggle automatic typesetting of Sage output.\n\nTypesetting of math formulas is done by LATEX subprocesses and\nPDF to PNG conversions.\n\n(fn &optional ARG)" t nil)

(defalias 'sage-shell-view 'sage-shell-view-mode)

(autoload 'sage-shell-view-enable-inline-output "sage-shell-view" "\
Enable inline output pretty-printing, i.e. typeset output from sage in the `sage-shell-mode' buffer.\nWARNING: this communicates with the sage process.  Only use this when sage is running.\n\n(fn)" t nil)

(autoload 'sage-shell-view-enable-inline-plots "sage-shell-view" "\
Enable inline plotting, i.e. display plots in the `sage-shell-mode' buffer and do not spawn an external viewer.\nWARNING: this communicates with the sage process.  Only use this when sage is running.\n\n(fn)" t nil)

(autoload 'sage-shell-view-toggle-inline-output "sage-shell-view" "\
Toggle inline typesetting of outputs in `sage-shell-mode' buffer.\n\n(fn &optional (VERBOSE t))" t nil)

(autoload 'sage-shell-view-toggle-inline-plots "sage-shell-view" "\
Toggle inline plotting of graphs in `sage-shell-mode' buffer.\n\n(fn &optional (VERBOSE t))" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sage-shell-view" '("sage-shell-view-")))

;;;***

;;;### (autoloads nil nil ("sage-shell-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; sage-shell-mode-autoloads.el ends here
