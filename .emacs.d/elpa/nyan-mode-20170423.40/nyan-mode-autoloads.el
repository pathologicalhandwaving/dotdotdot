;;; nyan-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "nyan-mode" "nyan-mode.el" (0 0 0 0))
;;; Generated autoloads from nyan-mode.el

(defvar nyan-mode nil "\
Non-nil if Nyan mode is enabled.\nSee the `nyan-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `nyan-mode'.")

(custom-autoload 'nyan-mode "nyan-mode" nil)

(autoload 'nyan-mode "nyan-mode" "\
Use NyanCat to show buffer size and position in mode-line.\nYou can customize this minor mode, see option `nyan-mode'.\n\nNote: If you turn this mode on then you probably want to turn off\noption `scroll-bar-mode'.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "nyan-mode" '("nyan-" "+nyan-")))

;;;***

;;;### (autoloads nil nil ("nyan-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; nyan-mode-autoloads.el ends here
