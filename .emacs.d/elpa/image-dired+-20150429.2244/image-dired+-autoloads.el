;;; image-dired+-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "image-dired+" "image-dired+.el" (0 0 0 0))
;;; Generated autoloads from image-dired+.el

(autoload 'imagex-dired-show-image-thumbnails "image-dired+" "\
Utility to insert thumbnail of FILES to BUFFER.\nThat thumbnails are not associated to any dired buffer although.\n\n(fn BUFFER FILES &optional APPEND)" nil nil)

(autoload 'image-diredx-setup "image-dired+" "\
Setup image-dired extensions.\n\n(fn)" nil nil)

(defvar image-diredx-adjust-mode nil "\
Non-nil if Image-Diredx-Adjust mode is enabled.\nSee the `image-diredx-adjust-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `image-diredx-adjust-mode'.")

(custom-autoload 'image-diredx-adjust-mode "image-dired+" nil)

(autoload 'image-diredx-adjust-mode "image-dired+" "\
Extension for `image-dired' show image as long as adjusting to frame.\n\n(fn &optional ARG)" t nil)

(defvar image-diredx-async-mode nil "\
Non-nil if Image-Diredx-Async mode is enabled.\nSee the `image-diredx-async-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `image-diredx-async-mode'.")

(custom-autoload 'image-diredx-async-mode "image-dired+" nil)

(autoload 'image-diredx-async-mode "image-dired+" "\
Extension for `image-dired' asynchrounous image thumbnail.\n\n(fn &optional ARG)" t nil)
(add-hook 'image-dired-thumbnail-mode-hook 'image-diredx-setup)
(image-diredx-async-mode 1)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "image-dired+" '("image-dired")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; image-dired+-autoloads.el ends here
