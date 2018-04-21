;;; ob-async-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ob-async" "ob-async.el" (0 0 0 0))
;;; Generated autoloads from ob-async.el

(defalias 'org-babel-execute-src-block:async 'ob-async-org-babel-execute-src-block)

(autoload 'ob-async-org-babel-execute-src-block "ob-async" "\
Like org-babel-execute-src-block, but run asynchronously.\n\nOriginal docstring for org-babel-execute-src-block:\n\nExecute the current source code block.  Insert the results of\nexecution into the buffer.  Source code execution and the\ncollection and formatting of results can be controlled through a\nvariety of header arguments.\n\nWith prefix argument ARG, force re-execution even if an existing\nresult cached in the buffer would otherwise have been returned.\n\nOptionally supply a value for INFO in the form returned by\n`org-babel-get-src-block-info'.\n\nOptionally supply a value for PARAMS which will be merged with\nthe header arguments specified at the front of the source code\nblock.\n\n(fn &optional ORIG-FUN ARG INFO PARAMS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-async" '("ob-async--generate-uuid")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ob-async-autoloads.el ends here
