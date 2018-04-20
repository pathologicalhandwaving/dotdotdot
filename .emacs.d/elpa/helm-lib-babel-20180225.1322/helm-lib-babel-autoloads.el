;;; helm-lib-babel-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "helm-lib-babel" "helm-lib-babel.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from helm-lib-babel.el

(autoload 'helm-lib-babel-insert "helm-lib-babel" "\
Helm function to insert a reference to an org source block function.\n\nThe available functions consist of all functions defined in the\nlibrary of babel (q.v. `org-babel-library-of-babel',\n`org-babel-lob-ingest') as well as all the named source blocks\nfound in the current file.  The available actions include:\n\nInsert a #+CALL: function.  The CALL function arguments are pre-filled\nwith the function's default arguments.\n\nInsert a :post header argument for a source block\n\nInsert an `org-sbe' form usually used in table functions.  Again,\nthe function default arguments are added as arguments to the\n`org-sbe' call.\n\n(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-lib-babel-autoloads.el ends here
