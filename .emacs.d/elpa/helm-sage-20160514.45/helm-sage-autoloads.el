;;; helm-sage-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "helm-sage" "helm-sage.el" (0 0 0 0))
;;; Generated autoloads from helm-sage.el

(defalias 'helm-sage-shell 'helm-sage-complete)

(autoload 'helm-sage-complete "helm-sage" "\
\n\n(fn)" t nil)

(defalias 'helm-sage-shell-describe-object-at-point 'helm-sage-describe-object-at-point)

(autoload 'helm-sage-describe-object-at-point "helm-sage" "\
\n\n(fn)" t nil)

(autoload 'helm-sage-command-history "helm-sage" "\
\n\n(fn)" t nil)

(autoload 'helm-sage-output-history "helm-sage" "\
List output history.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-sage" '("helm-s")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-sage-autoloads.el ends here
