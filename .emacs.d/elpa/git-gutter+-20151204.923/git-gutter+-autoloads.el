;;; git-gutter+-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "git-gutter+" "git-gutter+.el" (0 0 0 0))
;;; Generated autoloads from git-gutter+.el

(autoload 'git-gutter+-mode "git-gutter+" "\
Git-Gutter mode\n\n(fn &optional ARG)" t nil)

(defvar global-git-gutter+-mode nil "\
Non-nil if Global Git-Gutter+ mode is enabled.\nSee the `global-git-gutter+-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `global-git-gutter+-mode'.")

(custom-autoload 'global-git-gutter+-mode "git-gutter+" nil)

(autoload 'global-git-gutter+-mode "git-gutter+" "\
Toggle Global Git-Gutter+ mode on or off.\nWith a prefix argument ARG, enable Global Git-Gutter+ mode if ARG is\npositive, and disable it otherwise.  If called from Lisp, enable\nthe mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.\n\\{global-git-gutter+-mode-map}\n\n(fn &optional ARG)" t nil)

(autoload 'git-gutter+-commit "git-gutter+" "\
Commit staged changes. If nothing is staged, ask to stage the current buffer.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "git-gutter+" '("git-gutter+-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; git-gutter+-autoloads.el ends here
