;;; ox-trac-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ox-trac" "ox-trac.el" (0 0 0 0))
;;; Generated autoloads from ox-trac.el

(autoload 'org-trac-export-as-tracwiki "ox-trac" "\
Export current buffer to a Trac WikiFormat buffer.\n\nIf narrowing is active in the current buffer, only export its\nnarrowed part.\n\nIf a region is active, export that region.\n\nA non-nil optional argument ASYNC means the process should happen\nasynchronously.  The resulting buffer should be accessible\nthrough the `org-export-stack' interface.\n\nWhen optional argument SUBTREEP is non-nil, export the sub-tree\nat point, extracting information from the headline properties\nfirst.\n\nWhen optional argument VISIBLE-ONLY is non-nil, don't export\ncontents of hidden elements.\n\nExport is done in a buffer named \"*Org Trac Export*\", which will\nbe displayed when `org-export-show-temporary-export-buffer' is\nnon-nil.\n\n(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-trac-convert-region-to-trac "ox-trac" "\
Assume the current region has 'org-mode' syntax, and convert it to Trac.\nThis can be used in any buffer.  For example, you can write an\nitemized list in 'org-mode' syntax in a Trac WikiFormat buffer and use\nthis command to convert it.\n\n(fn)" t nil)

(autoload 'org-trac-export-to-tracwiki "ox-trac" "\
Export current buffer to a Trac WikiFormat file.\n\nIf narrowing is active in the current buffer, only export its\nnarrowed part.\n\nIf a region is active, export that region.\n\nA non-nil optional argument ASYNC means the process should happen\nasynchronously.  The resulting file should be accessible through\nthe `org-export-stack' interface.\n\nWhen optional argument SUBTREEP is non-nil, export the sub-tree\nat point, extracting information from the headline properties\nfirst.\n\nWhen optional argument VISIBLE-ONLY is non-nil, don't export\ncontents of hidden elements.\n\nReturn output file's name.\n\n(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-trac" '("org-trac-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ox-trac-autoloads.el ends here
