;;; modeline-settings.el
(require 'telephone-line)


;;; Code:

;; Cubed Separators
(setq telephone-line-primary-left-separator 'telephone-line-cubed-left
      telephone-line-secondary-left-separator 'telephone-line-cubed-hollow-left
      telephone-line-primary-right-separator 'telephone-line-cubed-right
      telephone-line-secondary-right-separator 'telephone-line-cubed-hollow-right)
(setq telephone-line-height 24)





;; Call Last
(telephone-line-mode 1)

;;; Provide

(provide 'modeline-settings)
(message "Modeline Settings Loaded!")
;;; modeline-settings.el ends here







