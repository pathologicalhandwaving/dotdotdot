;;; image-settings.el --- Image Settings

;;; Code:
(setq org-image-actual-width nil)

(defun do-org-show-all-inline-images ()
  (interactive)
  (org-display-inline-images t t))

(global-set-key (kbd "C-c C-x C v") 'do-org-show-all-inline-images)

;;; End:

(provide 'image-settings)
(message "Image Settings Loaded!")
;;; image-settings.el ends here
