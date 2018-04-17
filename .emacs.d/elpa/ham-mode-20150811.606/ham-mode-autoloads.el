;;; ham-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ham-mode" "ham-mode.el" (0 0 0 0))
;;; Generated autoloads from ham-mode.el

(autoload 'ham-mode "ham-mode" "\
Html As Markdown. Transparently edit an html file using markdown.\n\nWhen this mode is activated in an html file, the buffer is\nconverted to markdown and you may edit at will, but the file is\nstill saved as html behind the scenes. \n\nTo have it activate automatically on html files, do something like:\n  (add-to-list 'auto-mode-alist '(\".*\\\\.html\\\\'\" . ham-mode))\n\nInitial conversion uses the `html-to-markdown-this-buffer'\ncommand (handled entirely in elisp by this package :-D).\n\nSubsequent conversions (after every save) are handled by the\nmarkdown executable (which needs to be installed on your system).\nSee `ham-mode-markdown-to-html-command' and `ham-mode--save-as-html' on\nhow to customize this part.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ham-mode" '("ham-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ham-mode-autoloads.el ends here
