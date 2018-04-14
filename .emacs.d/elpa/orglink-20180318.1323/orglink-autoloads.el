;;; orglink-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "orglink" "orglink.el" (0 0 0 0))
;;; Generated autoloads from orglink.el

(autoload 'orglink-mode "orglink" "\
Toggle display Org-mode links in other major modes.\n\nOn the links the following commands are available:\n\n\\{orglink-mouse-map}\n\n(fn &optional ARG)" t nil)

(defvar global-orglink-mode nil "\
Non-nil if Global Orglink mode is enabled.\nSee the `global-orglink-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `global-orglink-mode'.")

(custom-autoload 'global-orglink-mode "orglink" nil)

(autoload 'global-orglink-mode "orglink" "\
Toggle Orglink mode in all buffers.\nWith prefix ARG, enable Global Orglink mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nOrglink mode is enabled in all buffers where\n`turn-on-orglink-mode-if-desired' would do it.\nSee `orglink-mode' for more information on Orglink mode.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "orglink" '("orglink-" "turn-on-orglink-mode-if-desired")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; orglink-autoloads.el ends here
