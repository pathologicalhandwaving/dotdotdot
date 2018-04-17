;;; pretty-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pretty-mode" "pretty-mode.el" (0 0 0 0))
;;; Generated autoloads from pretty-mode.el

(autoload 'pretty-mode "pretty-mode" "\
Toggle Pretty minor mode.\nWith arg, turn Pretty minor mode on if arg is positive, off otherwise.\n\nPretty mode builds on `font-lock-mode'. Instead of highlighting\nkeywords, it replaces them with symbols. For example, lambda is\ndisplayed as λ in lisp modes.\n\n(fn &optional ARG)" t nil)

(defvar global-pretty-mode t "\
Non-nil if Global Pretty mode is enabled.\nSee the `global-pretty-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `global-pretty-mode'.")

(custom-autoload 'global-pretty-mode "pretty-mode" nil)

(autoload 'global-pretty-mode "pretty-mode" "\
Toggle Pretty mode in all buffers.\nWith prefix ARG, enable Global Pretty mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nPretty mode is enabled in all buffers where\n`turn-on-pretty-if-desired' would do it.\nSee `pretty-mode' for more information on Pretty mode.\n\n(fn &optional ARG)" t nil)

(autoload 'turn-off-pretty-mode "pretty-mode" "\
\n\n(fn)" t nil)

(autoload 'turn-on-pretty-mode "pretty-mode" "\
\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pretty-mode" '("pretty-" "turn-on-pretty-if-desired" "ensure-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pretty-mode-autoloads.el ends here
