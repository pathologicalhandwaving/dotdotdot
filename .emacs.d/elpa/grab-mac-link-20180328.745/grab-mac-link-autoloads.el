;;; grab-mac-link-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "grab-mac-link" "grab-mac-link.el" (0 0 0 0))
;;; Generated autoloads from grab-mac-link.el

(autoload 'grab-mac-link "grab-mac-link" "\
Prompt for an application to grab a link from.\nWhen done, go grab the link, and insert it at point.\n\nWith a prefix argument, instead of \"insert\", save it to\nkill-ring. For org link, save it to `org-stored-links', then\nlater you can insert it via `org-insert-link'.\n\nIf called from lisp, grab link from APP and return it (as a\nstring) with LINK-TYPE.  APP is a symbol and must be one of\n'(chrome safari finder mail terminal), LINK-TYPE is also a symbol\nand must be one of '(plain markdown org), if LINK-TYPE is omitted\nor nil, plain link will be used.\n\n(fn APP &optional LINK-TYPE)" t nil)

(autoload 'grab-mac-link-dwim "grab-mac-link" "\
\n\n(fn APP)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "grab-mac-link" '("grab-mac-link-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; grab-mac-link-autoloads.el ends here
