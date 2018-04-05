;;; annotate-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "annotate" "annotate.el" (0 0 0 0))
;;; Generated autoloads from annotate.el

(let ((loads (get 'annotate 'custom-loads))) (if (member '"annotate" loads) nil (put 'annotate 'custom-loads (cons '"annotate" loads))))

(autoload 'annotate-mode "annotate" "\
Toggle Annotate mode.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "annotate" '("annotate-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; annotate-autoloads.el ends here
