;;; writeroom-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "writeroom-mode" "writeroom-mode.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from writeroom-mode.el

(autoload 'writeroom-mode "writeroom-mode" "\
Minor mode for distraction-free writing.\n\n(fn &optional ARG)" t nil)

(defvar global-writeroom-mode nil "\
Non-nil if Global Writeroom mode is enabled.\nSee the `global-writeroom-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `global-writeroom-mode'.")

(custom-autoload 'global-writeroom-mode "writeroom-mode" nil)

(autoload 'global-writeroom-mode "writeroom-mode" "\
Toggle Writeroom mode in all buffers.\nWith prefix ARG, enable Global Writeroom mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nWriteroom mode is enabled in all buffers where\n`turn-on-writeroom-mode' would do it.\nSee `writeroom-mode' for more information on Writeroom mode.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "writeroom-mode" '("writeroom-" "tool-bar-lines" "turn-on-writeroom-mode" "bottom-divider-width" "sticky" "internal-border-width" "menu-bar-lines" "vertical-scroll-bars" "alpha" "fullscreen" "define-writeroom-global-effect")))

;;;***

;;;### (autoloads nil nil ("writeroom-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; writeroom-mode-autoloads.el ends here
