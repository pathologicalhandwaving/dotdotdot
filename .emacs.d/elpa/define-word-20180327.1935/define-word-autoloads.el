;;; define-word-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "define-word" "define-word.el" (0 0 0 0))
;;; Generated autoloads from define-word.el

(autoload 'define-word "define-word" "\
Define WORD using various services.\n\nBy default uses `define-word-default-service', but a prefix arg\nlets the user choose service.\n\n(fn WORD SERVICE &optional CHOOSE-SERVICE)" t nil)

(autoload 'define-word-at-point "define-word" "\
Use `define-word' to define word at point.\nWhen the region is active, define the marked phrase.\nPrefix ARG lets you choose service.\n\nIn a non-interactive call SERVICE can be passed.\n\n(fn ARG &optional SERVICE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "define-word" '("define-word-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; define-word-autoloads.el ends here
