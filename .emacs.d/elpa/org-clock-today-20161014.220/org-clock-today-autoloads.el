;;; org-clock-today-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-clock-today" "org-clock-today.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from org-clock-today.el

(defvar org-clock-today-mode nil "\
Non-nil if Org-Clock-Today mode is enabled.\nSee the `org-clock-today-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `org-clock-today-mode'.")

(custom-autoload 'org-clock-today-mode "org-clock-today" nil)

(autoload 'org-clock-today-mode "org-clock-today" "\
Minor mode to show the total clocked time of the current day in the mode line.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-clock-today" '("org-clock-today-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-clock-today-autoloads.el ends here
