;;; org-recent-headings-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-recent-headings" "org-recent-headings.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-recent-headings.el

(defvar org-recent-headings-mode nil "\
Non-nil if Org-Recent-Headings mode is enabled.\nSee the `org-recent-headings-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `org-recent-headings-mode'.")

(custom-autoload 'org-recent-headings-mode "org-recent-headings" nil)

(autoload 'org-recent-headings-mode "org-recent-headings" "\
Global minor mode to keep a list of recently used Org headings so they can be quickly selected and jumped to.\nWith prefix argument ARG, turn on if positive, otherwise off.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-recent-headings" '("org-recent-headings-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-recent-headings-autoloads.el ends here
