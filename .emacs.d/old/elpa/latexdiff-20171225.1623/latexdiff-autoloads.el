;;; latexdiff-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "latexdiff" "latexdiff.el" (0 0 0 0))
;;; Generated autoloads from latexdiff.el

(autoload 'latexdiff "latexdiff" "\
Ask for two tex files and make the difference between them.\n\n(fn)" t nil)

(autoload 'latexdiff-vc "latexdiff" "\
Compile the pdf difference between the choosen commit and the current version of the current file.\n\n(fn)" t nil)

(autoload 'latexdiff-vc-range "latexdiff" "\
Compile the pdf difference between two choosen commits.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "latexdiff" '("latexdiff-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; latexdiff-autoloads.el ends here
