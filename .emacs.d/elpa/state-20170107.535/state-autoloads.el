;;; state-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "state" "state.el" (0 0 0 0))
;;; Generated autoloads from state.el
 (autoload 'state-define-state "state")

(autoload 'state-mode "state" "\
Minor mode to switch between workspaces.\n\n(fn &optional ARG)" t nil)

(defvar state-global-mode nil "\
Non-nil if State-Global mode is enabled.\nSee the `state-global-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `state-global-mode'.")

(custom-autoload 'state-global-mode "state" nil)

(autoload 'state-global-mode "state" "\
Toggle State mode in all buffers.\nWith prefix ARG, enable State-Global mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nState mode is enabled in all buffers where\n`state-on' would do it.\nSee `state-mode' for more information on State mode.\n\n(fn &optional ARG)" t nil)

(autoload 'state-on "state" "\
Enable State minor mode.\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "state" '("state-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; state-autoloads.el ends here
