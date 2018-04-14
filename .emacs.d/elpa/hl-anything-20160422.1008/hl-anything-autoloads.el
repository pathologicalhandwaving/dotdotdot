;;; hl-anything-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "hl-anything" "hl-anything.el" (0 0 0 0))
;;; Generated autoloads from hl-anything.el

(autoload 'hl-configuration "hl-anything" "\
Configuration\n\n(fn)" t nil)

(autoload 'hl-highlight-thingatpt-global "hl-anything" "\
Toggle global highlight.\n\n(fn)" t nil)

(autoload 'hl-unhighlight-all-global "hl-anything" "\
Remove all global highlights.\n\n(fn)" t nil)

(autoload 'hl-highlight-thingatpt-local "hl-anything" "\
Toggle local highlights in the current buffer.\n\n(fn)" t nil)

(autoload 'hl-unhighlight-all-local "hl-anything" "\
Remove all local highlights in buffer.\n\n(fn)" t nil)

(autoload 'hl-save-highlights "hl-anything" "\
Save highlights in `hl-highlight-save-file' file.\n\n  (:global HL-HIGHLIGHTS                 ;; `hl-highlights'\n   :local (FILE . HL-HIGHLIGHTS-LOCAL))  ;; `hl-highlights-local'\n\nYou can call `hl-restore-highlights' to revert highlights of last session.\n\n(fn)" t nil)

(autoload 'hl-restore-highlights "hl-anything" "\
Load highligts from `hl-highlight-save-file' file. Before calling this, you \ncould call `hl-save-highlights' function.\n\n(fn)" t nil)

(autoload 'hl-global-highlight-on/off "hl-anything" "\
\n\n(fn)" t nil)

(defvar hl-highlight-mode nil "\
Non-nil if Hl-Highlight mode is enabled.\nSee the `hl-highlight-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `hl-highlight-mode'.")

(custom-autoload 'hl-highlight-mode "hl-anything" nil)

(autoload 'hl-highlight-mode "hl-anything" "\
Enable highligt engine to do:\n- Show highlight over current line highlight (`hl-line-mode' or \n  `global-hl-line-mode').\n- Synchronize global highlights.\n- Save highlights before killing Emacs and restore them next time.\n\n(fn &optional ARG)" t nil)

(autoload 'hl-find-next-thing "hl-anything" "\
Find regexp forwardly and jump to it.\n\n(fn)" t nil)

(autoload 'hl-find-prev-thing "hl-anything" "\
Find regexp backwardly and jump to it.\n\n(fn)" t nil)

(autoload 'hl-paren-mode "hl-anything" "\
Minor mode to highlight the enclosing parentheses and more.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hl-anything" '("hl-")))

;;;***

;;;### (autoloads nil nil ("hl-anything-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; hl-anything-autoloads.el ends here
