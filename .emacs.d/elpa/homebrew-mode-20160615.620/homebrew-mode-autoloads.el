;;; homebrew-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "homebrew-mode" "homebrew-mode.el" (0 0 0 0))
;;; Generated autoloads from homebrew-mode.el

(autoload 'homebrew-mode "homebrew-mode" "\
Helper functions for editing Homebrew formulae\n\n(fn &optional ARG)" t nil)

(defvar global-homebrew-mode nil "\
Non-nil if Global Homebrew mode is enabled.\nSee the `global-homebrew-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `global-homebrew-mode'.")

(custom-autoload 'global-homebrew-mode "homebrew-mode" nil)

(autoload 'global-homebrew-mode "homebrew-mode" "\
Toggle Homebrew mode in all buffers.\nWith prefix ARG, enable Global Homebrew mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nHomebrew mode is enabled in all buffers where\n`(lambda nil (if (homebrew--formula-file-p (current-buffer)) (homebrew-mode)))' would do it.\nSee `homebrew-mode' for more information on Homebrew mode.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "homebrew-mode" '("homebrew-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; homebrew-mode-autoloads.el ends here
