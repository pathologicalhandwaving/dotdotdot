;;; quickref-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "quickref" "quickref.el" (0 0 0 0))
;;; Generated autoloads from quickref.el

(autoload 'quickref-in-echo-area "quickref" "\
Display quickref about TOPICS in the echo area.\n\n(fn TOPICS)" t nil)

(autoload 'quickref-in-window "quickref" "\
Display quickref about TOPICS in a window.\n\nUse `quickref-dismiss-window' to hide it again.\n\n(fn TOPICS)" t nil)

(autoload 'quickref-add-note "quickref" "\
Add quickref about TOPIC labeled LABEL with value NOTE.\n\n(fn TOPIC LABEL NOTE)" t nil)

(autoload 'quickref-delete-note "quickref" "\
Delete the note about TOPIC with label LABEL.\n\n(fn TOPIC LABEL)" t nil)

(autoload 'quickref-load-save-file "quickref" "\
If `quickref-save-file' exists, set `quickref-refs' to its contents.\n\n(fn)" t nil)

(autoload 'quickref-write-save-file "quickref" "\
Write the pretty printed contents of `quickref-refs' to `quickref-save-file'.\n\n(fn)" t nil)

(autoload 'quickref-describe-refs "quickref" "\
`describe-variable' `quickref-refs'.\n\n(fn)" t nil)

(autoload 'turn-on-quickref-mode "quickref" "\
Turn on `quickref-mode'.\n\n(fn)" t nil)

(autoload 'turn-off-quickref-mode "quickref" "\
Turn off `quickref-mode'.\n\n(fn)" t nil)

(autoload 'quickref-mode "quickref" "\
Quickly display notes you've made to yourself.\n\n(fn &optional ARG)" t nil)

(defvar quickref-global-mode nil "\
Non-nil if Quickref-Global mode is enabled.\nSee the `quickref-global-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `quickref-global-mode'.")

(custom-autoload 'quickref-global-mode "quickref" nil)

(autoload 'quickref-global-mode "quickref" "\
Toggle Quickref mode in all buffers.\nWith prefix ARG, enable Quickref-Global mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nQuickref mode is enabled in all buffers where\n`turn-on-quickref-mode' would do it.\nSee `quickref-mode' for more information on Quickref mode.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "quickref" '("quickref-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; quickref-autoloads.el ends here
