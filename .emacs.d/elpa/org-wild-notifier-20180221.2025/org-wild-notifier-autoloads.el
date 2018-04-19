;;; org-wild-notifier-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-wild-notifier" "org-wild-notifier.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-wild-notifier.el

(autoload 'org-wild-notifier-check "org-wild-notifier" "\
Parse agenda view and notify about upcomming events.\n\n(fn)" t nil)

(defvar org-wild-notifier-mode nil "\
Non-nil if Org-Wild-Notifier mode is enabled.\nSee the `org-wild-notifier-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `org-wild-notifier-mode'.")

(custom-autoload 'org-wild-notifier-mode "org-wild-notifier" nil)

(autoload 'org-wild-notifier-mode "org-wild-notifier" "\
Toggle org notifications globally.\nWhen enabled parses your agenda once a minute and emits notifications\nif needed.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-wild-notifier" '("org-wild-notifier-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-wild-notifier-autoloads.el ends here
