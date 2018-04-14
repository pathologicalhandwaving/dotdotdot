;;; csv-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "csv-mode" "csv-mode.el" (0 0 0 0))
;;; Generated autoloads from csv-mode.el

(autoload 'csv-mode "csv-mode" "\
Major mode for editing files of comma-separated value type.\n\nCSV mode is derived from `text-mode', and runs `text-mode-hook' before\nrunning `csv-mode-hook'.  It turns `auto-fill-mode' off by default.\nCSV mode can be customized by user options in the CSV customization\ngroup.  The separators are specified by the value of `csv-separators'.\n\nCSV mode commands ignore blank lines and comment lines beginning with\nthe value of `csv-comment-start', which delimit \"paragraphs\".\n\"Sexp\" is re-interpreted to mean \"field\", so that `forward-sexp'\n(\\[forward-sexp]), `kill-sexp' (\\[kill-sexp]), etc. all apply to fields.\nStandard comment commands apply, such as `comment-dwim' (\\[comment-dwim]).\n\nIf `font-lock-mode' is enabled then separators, quoted values and\ncomment lines are highlighted using respectively `csv-separator-face',\n`font-lock-string-face' and `font-lock-comment-face'.\n\nThe user interface (UI) for CSV mode commands is similar to that of\nthe standard commands `sort-fields' and `sort-numeric-fields', except\nthat if there is no prefix argument then the UI prompts for the field\nindex or indices.  In `transient-mark-mode' only: if the region is not\nset then the UI attempts to set it to include all consecutive CSV\nrecords around point, and prompts for confirmation; if there is no\nprefix argument then the UI prompts for it, offering as a default the\nindex of the field containing point if the region was not set\nexplicitly.  The region set automatically is delimited by blank lines\nand comment lines, and the number of header lines at the beginning of\nthe region given by the value of `csv-header-lines' are skipped.\n\nSort order is controlled by `csv-descending'.\n\nCSV mode provides the following specific keyboard key bindings:\n\n\\{csv-mode-map}\n\n(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "csv-mode" '("csv-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; csv-mode-autoloads.el ends here
