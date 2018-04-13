;;; org-super-agenda-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-super-agenda" "org-super-agenda.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from org-super-agenda.el

(defvar org-super-agenda-mode nil "\
Non-nil if Org-Super-Agenda mode is enabled.\nSee the `org-super-agenda-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `org-super-agenda-mode'.")

(custom-autoload 'org-super-agenda-mode "org-super-agenda" nil)

(autoload 'org-super-agenda-mode "org-super-agenda" "\
Global minor mode to group items in Org agenda views according to `org-super-agenda-groups'.\nWith prefix argument ARG, turn on if positive, otherwise off.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-super-agenda" '("org-super-agenda-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-super-agenda-autoloads.el ends here
