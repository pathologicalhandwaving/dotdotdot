;;; org-wc-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-wc" "org-wc.el" (0 0 0 0))
;;; Generated autoloads from org-wc.el

(autoload 'org-word-count "org-wc" "\
Report the number of words in the Org mode buffer or selected region.\n\nIgnores heading lines, blocks, comments, drawers, and links\ndepending on customizable variables in customization group org-wc.\n\nLaTeX macros are counted as 1 word. \n\n(fn BEG END)" t nil)

(autoload 'org-wc-count-subtrees "org-wc" "\
Count words in each subtree, putting result as the property :org-wc on that heading.\n\n(fn)" t nil)

(autoload 'org-wc-display "org-wc" "\
Show subtree word counts in the entire buffer.\nWith prefix argument, only show the total wordcount for the buffer or region\nin the echo area.\n\nUse \\[org-wc-remove-overlays] to remove the subtree times.\n\nIgnores: heading lines,\n         blocks,\n         comments,\n         drawers.\nLaTeX macros are counted as 1 word.\n\n(fn TOTAL-ONLY)" t nil)

(autoload 'org-wc-remove-overlays "org-wc" "\
Remove the occur highlights from the buffer.\nBEG and END are ignored.  If NOREMOVE is nil, remove this function\nfrom the `before-change-functions' in the current buffer.\n\n(fn &optional BEG END NOREMOVE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-wc" '("org-w")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-wc-autoloads.el ends here
