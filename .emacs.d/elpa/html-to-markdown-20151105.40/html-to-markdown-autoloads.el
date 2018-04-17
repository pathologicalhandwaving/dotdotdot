;;; html-to-markdown-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "html-to-markdown" "html-to-markdown.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from html-to-markdown.el

(autoload 'html-to-markdown "html-to-markdown" "\
Convert contents of current buffer from html to markdown.\n\nThis is meant for interactive use. For lisp code, use:\n    (html-to-markdown-string (buffer-string))\n\nIf the prefix argument ERASE-UNKNOWN is non-nil, tags which can't\nbe converted to markdown will be erased (default is to keep them\nas-is).\nFurther behavior is controlled by two variables,\n`htm-do-fill-paragraph' and `htm-output-buffer-name'.\n\nUnderstands the following html tags: p, br, ol, ul, li, h[1-9],\nb, it, strong, em, blockquote, pre, code.\n\n(fn &optional ERASE-UNKNOWN)" t nil)

(autoload 'html-to-markdown-string "html-to-markdown" "\
Convert contents of string SOURCE from html to markdown.\n\nReturns a string with the result.\n\nIf ERASE-UNKNOWN is non-nil, tags which can't be converted to\nmarkdown will be erased (default is to keep them as-is).\nFurther behavior is controlled by two variables,\n`htm-do-fill-paragraph' and `htm-output-buffer-name'.\n\nUnderstands the following html tags: p, br, ol, ul, li, h[1-9],\nb, it, strong, em, blockquote, pre, code.\n\n(fn SOURCE &optional ERASE-UNKNOWN)" t nil)

(autoload 'html-to-markdown-this-buffer "html-to-markdown" "\
Like `html-to-markdown', except ERASES the current buffer and inserts the result.\n\n(fn &optional ERASE-UNKNOWN)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "html-to-markdown" '("htm")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; html-to-markdown-autoloads.el ends here
