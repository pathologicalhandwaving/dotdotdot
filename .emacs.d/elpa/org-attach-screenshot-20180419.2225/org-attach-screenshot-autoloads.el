;;; org-attach-screenshot-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-attach-screenshot" "org-attach-screenshot.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-attach-screenshot.el

(autoload 'org-attach-screenshot "org-attach-screenshot" "\
Take an area screenshot and place it in the entry's attachment directory.\n\nThe user is interactively prompted for a base FILENAME for the\nscreenshot.  If the name is empty, a generic name will be\ngenerated.  If the org entry has no defined attachment directory,\nthe user will be offered the choice to create one through the\n`org-attach-screenshot-get-attach-dir' function.\n\nThe frame invoking the function gets hidden while taking the\nscreenshot unless a prefix argument PRFX is passed (this allows\ntaking screenshots of the Emacs session itself).  If no filename\nextension is provided, .png will be added.\n\nThe command for invoking the external screenshot utility can be\ncustomized using the `org-attach-screenshot-command-line' variable.\n\nNote that the screenshots are not stored as actual attachments\nwhich would mean that entries for the Attachments would be\nwritten to the PROPERTIES section of a headline in addition to\nthe links being already placed inside the text.\n\n(fn PRFX FILENAME)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-attach-screenshot" '("org-attach-screenshot-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-attach-screenshot-autoloads.el ends here
