;;; projectile-git-autofetch-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "projectile-git-autofetch" "projectile-git-autofetch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from projectile-git-autofetch.el

(defvar projectile-git-autofetch-mode nil "\
Non-nil if Projectile-Git-Autofetch mode is enabled.\nSee the `projectile-git-autofetch-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `projectile-git-autofetch-mode'.")

(custom-autoload 'projectile-git-autofetch-mode "projectile-git-autofetch" nil)

(autoload 'projectile-git-autofetch-mode "projectile-git-autofetch" "\
Fetch git repositories periodically.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "projectile-git-autofetch" '("projectile-git-autofetch-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; projectile-git-autofetch-autoloads.el ends here
