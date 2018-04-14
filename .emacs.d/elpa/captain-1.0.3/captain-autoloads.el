;;; captain-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "captain" "captain.el" (0 0 0 0))
;;; Generated autoloads from captain.el

(autoload 'captain-mode "captain" "\
Call the captain to automatically capitalize the start of every sentence.\n\nThe captain will also automatically capitalize words you've told\nhim you want capitalized with `captain-capitalize-word'.\n\n\\{captain-mode-map}\n\n(fn &optional ARG)" t nil)

(defvar global-captain-mode nil "\
Non-nil if Global Captain mode is enabled.\nSee the `global-captain-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `global-captain-mode'.")

(custom-autoload 'global-captain-mode "captain" nil)

(autoload 'global-captain-mode "captain" "\
Toggle Captain mode in all buffers.\nWith prefix ARG, enable Global Captain mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nCaptain mode is enabled in all buffers where\n`captain-mode' would do it.\nSee `captain-mode' for more information on Captain mode.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "captain" '("captain-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; captain-autoloads.el ends here
