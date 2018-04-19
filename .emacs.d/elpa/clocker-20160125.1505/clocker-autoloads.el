;;; clocker-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "clocker" "clocker.el" (0 0 0 0))
;;; Generated autoloads from clocker.el

(autoload 'clocker-org-clock-goto "clocker" "\
Open file that has the currently clocked-in entry, or to the\nmost recently clocked one.\n\nWith prefix arg SELECT, offer recently clocked tasks for selection.\n\n(fn &optional SELECT)" t nil)

(autoload 'clocker-open-org-file "clocker" "\
Open an appropiate org file.\n\nIt traverses files in the following order:\n\n1) It tries to find an open buffer that has a file with .org\nextension, if found switch to it.\n\n2) If 1 is nil and `clocker-issue-format-regex' is not nil, it\n   tries to open/create an org file using the issue number on the\n   branch\n\n3) If `clocker-issue-format-regex' is nil, it will traverse your\ntree hierarchy and finds the closest org file.\n\n(fn)" t nil)

(autoload 'clocker-auto-save-hook "clocker" "\
Set `clocker-on-auto-save' to t\n\n(fn)" t nil)

(autoload 'clocker-before-save-hook "clocker" "\
Execute `clocker-open-org-file' and asks even more annoying questions if not clocked-in.\n\n(fn)" t nil)

(autoload 'clocker-after-save-hook "clocker" "\
Execute `'clocker-open-org-file' and asks annoying questions if not clocked-in.\n\n(fn)" t nil)

(autoload 'clocker-skip-on-major-mode "clocker" "\
Add given mode to the\n`clocker-skip-after-save-hook-on-mode' list.\n\n(fn A-MODE)" t nil)

(autoload 'clocker-stop-skip-on-major-mode "clocker" "\
Remove given mode from\n`clocker-skip-after-save-hook-on-mode' list.\n\n(fn A-MODE)" t nil)

(defvar clocker-mode nil "\
Non-nil if Clocker mode is enabled.\nSee the `clocker-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `clocker-mode'.")

(custom-autoload 'clocker-mode "clocker" nil)

(autoload 'clocker-mode "clocker" "\
Enable clock-in enforce strategies\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "clocker" '("clocker-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; clocker-autoloads.el ends here
