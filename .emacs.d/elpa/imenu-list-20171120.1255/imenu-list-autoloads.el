;;; imenu-list-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "imenu-list" "imenu-list.el" (0 0 0 0))
;;; Generated autoloads from imenu-list.el

(autoload 'imenu-list-noselect "imenu-list" "\
Update and show the imenu-list buffer, but don't select it.\nIf the imenu-list buffer doesn't exist, create it.\n\n(fn)" t nil)

(autoload 'imenu-list "imenu-list" "\
Update and show the imenu-list buffer.\nIf the imenu-list buffer doesn't exist, create it.\n\n(fn)" t nil)

(defvar imenu-list-minor-mode nil "\
Non-nil if Imenu-List minor mode is enabled.\nSee the `imenu-list-minor-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `imenu-list-minor-mode'.")

(custom-autoload 'imenu-list-minor-mode "imenu-list" nil)

(autoload 'imenu-list-minor-mode "imenu-list" "\
Toggle Imenu-List minor mode on or off.\nWith a prefix argument ARG, enable Imenu-List minor mode if ARG is\npositive, and disable it otherwise.  If called from Lisp, enable\nthe mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.\n\\{imenu-list-minor-mode-map}\n\n(fn &optional ARG)" t nil)

(autoload 'imenu-list-smart-toggle "imenu-list" "\
Enable or disable `imenu-list-minor-mode' according to buffer's visibility.\nIf the imenu-list buffer is displayed in any window, disable\n`imenu-list-minor-mode', otherwise enable it.\nNote that all the windows in every frame searched, even invisible ones, not\nonly those in the selected frame.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "imenu-list" '("imenu-list-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; imenu-list-autoloads.el ends here
