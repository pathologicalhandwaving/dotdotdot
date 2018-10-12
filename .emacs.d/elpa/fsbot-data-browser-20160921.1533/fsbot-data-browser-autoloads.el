;;; fsbot-data-browser-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "fsbot-data-browser" "fsbot-data-browser.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from fsbot-data-browser.el

(autoload 'fsbot-download-data "fsbot-data-browser" "\
Download fsbot db for viewing. You must do this before you can use `fsbot-view-data'.

\(fn)" t nil)

(autoload 'fsbot-view-data "fsbot-data-browser" "\
View fsbot db. You must call `fsbot-download-data' before this will work.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fsbot-data-browser" '("fsbot-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; fsbot-data-browser-autoloads.el ends here
