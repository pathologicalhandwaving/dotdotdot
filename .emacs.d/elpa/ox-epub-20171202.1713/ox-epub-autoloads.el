;;; ox-epub-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ox-epub" "ox-epub.el" (0 0 0 0))
;;; Generated autoloads from ox-epub.el

(autoload 'org-epub-export-to-epub "ox-epub" "\
Export the current buffer to an EPUB file.\n\nASYNC defines wether this process should run in the background,\nSUBTREEP supports narrowing of the document, VISIBLE-ONLY allows\nyou to export only visible parts of the document, EXT-PLIST is\nthe property list for the export process.\n\n(fn &optional ASYNC SUBTREEP VISIBLE-ONLY EXT-PLIST)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-epub" '("org-epub-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ox-epub-autoloads.el ends here
