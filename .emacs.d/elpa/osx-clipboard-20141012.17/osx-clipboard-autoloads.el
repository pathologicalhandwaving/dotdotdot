;;; osx-clipboard-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "osx-clipboard" "osx-clipboard.el" (0 0 0 0))
;;; Generated autoloads from osx-clipboard.el

(let ((loads (get 'osx-clipboard 'custom-loads))) (if (member '"osx-clipboard" loads) nil (put 'osx-clipboard 'custom-loads (cons '"osx-clipboard" loads))))

(defvar osx-clipboard-mode nil "\
Non-nil if Osx-Clipboard mode is enabled.\nSee the `osx-clipboard-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `osx-clipboard-mode'.")

(custom-autoload 'osx-clipboard-mode "osx-clipboard" nil)

(autoload 'osx-clipboard-mode "osx-clipboard" "\
Kill and yank using the OS X clipboard when running in a text terminal.\n\nThis mode allows Emacs to use the OS X system clipboard when\nrunning in the terminal, making killing and yanking behave\nsimilarly to a graphical Emacs.  It is not needed in a graphical\nEmacs, where NS clipboard integration is built in.\n\nIt sets the variables `interprogram-cut-function' and\n`interprogram-paste-function' to thin wrappers around the\n\"pbcopy\" and \"pbpaste\" command-line programs.\n\nConsider also customizing the variable\n  `save-interprogram-paste-before-kill' to `t' for best results.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "osx-clipboard" '("osx-clipboard-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; osx-clipboard-autoloads.el ends here
