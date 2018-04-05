;;; org-web-tools-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-web-tools" "org-web-tools.el" (0 0 0 0))
;;; Generated autoloads from org-web-tools.el

(autoload 'org-web-tools-insert-link-for-url "org-web-tools" "\
Insert Org link to URL using title of HTML page at URL.\nIf URL is not given, look for first URL in `kill-ring'.\n\n(fn URL)" t nil)

(autoload 'org-web-tools-insert-web-page-as-entry "org-web-tools" "\
Insert web page contents of URL as Org sibling entry.\nPage is processed with `eww-readable'.\n\n(fn URL &key (CAPTURE-FN #\\='org-web-tools--url-as-readable-org))" t nil)

(autoload 'org-web-tools-read-url-as-org "org-web-tools" "\
Read URL's readable content in an Org buffer.\nBuffer is displayed using SHOW-BUFFER-FN.\n\n(fn URL &key (SHOW-BUFFER-FN #\\='switch-to-buffer))" t nil)

(autoload 'org-web-tools-convert-links-to-page-entries "org-web-tools" "\
Convert links in current entry into entries containing linked pages' content.\nBoth plain links and Org bracket links are processed.  Page\ncontent is processed with `eww-readable'.  All links in the\ncurrent entry (i.e. this does not look deeper in the subtree, nor\noutside of it) will be converted.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-web-tools" '("org-web-tools-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-web-tools-autoloads.el ends here
