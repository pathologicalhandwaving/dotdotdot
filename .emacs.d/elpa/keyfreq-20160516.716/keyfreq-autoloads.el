;;; keyfreq-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "keyfreq" "keyfreq.el" (0 0 0 0))
;;; Generated autoloads from keyfreq.el

(defvar keyfreq-mode nil "\
Non-nil if Keyfreq mode is enabled.\nSee the `keyfreq-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `keyfreq-mode'.")

(custom-autoload 'keyfreq-mode "keyfreq" nil)

(autoload 'keyfreq-mode "keyfreq" "\
Keyfreq mode records number of times each command was\ncalled making it possible to access usage statistics through\nvarious keyfreq-* functions.\n\n(fn &optional ARG)" t nil)

(defvar keyfreq-autosave-mode nil "\
Non-nil if Keyfreq-Autosave mode is enabled.\nSee the `keyfreq-autosave-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `keyfreq-autosave-mode'.")

(custom-autoload 'keyfreq-autosave-mode "keyfreq" nil)

(autoload 'keyfreq-autosave-mode "keyfreq" "\
Keyfreq Autosave mode automatically saves\n`keyfreq-table' every `keyfreq-autosave-timeout' seconds\nand when emacs is killed.\n\n(fn &optional ARG)" t nil)

(autoload 'keyfreq-save-now "keyfreq" "\
Save keyfreq data now.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "keyfreq" '("keyfreq-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; keyfreq-autoloads.el ends here
