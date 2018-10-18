;;; helm-settings.el
(require 'helm-frame)

;;; Code:

(add-hook 'helm-after-action-hook 'helm-frame-delete)
(add-hook 'helm-cleanup-hook 'helm-frame-delete)
(setq helm-split-window-preferred-function 'helm-frame-window)


;;; End Code
(provide 'helm-settings)
(message "Helm Settings Loaded!")
;;; helm-settings.el ends here