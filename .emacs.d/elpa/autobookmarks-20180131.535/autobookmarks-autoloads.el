;;; autobookmarks-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "autobookmarks" "autobookmarks.el" (0 0 0 0))
;;; Generated autoloads from autobookmarks.el

(defvar autobookmarks-mode nil "\
Non-nil if Autobookmarks mode is enabled.\nSee the `autobookmarks-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `autobookmarks-mode'.")

(custom-autoload 'autobookmarks-mode "autobookmarks" nil)

(autoload 'autobookmarks-mode "autobookmarks" "\
Autobookmarks.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "autobookmarks" '("abm-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; autobookmarks-autoloads.el ends here
