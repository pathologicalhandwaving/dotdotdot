;;; prose-settings.el

;; writegood-mode

(require 'writegood-mode)
(global-set-key "\C-cg" 'writegood-mode)

(global-set-key "\C-c\C-gg" 'writegood-grade-level)
(global-set-key "\C-c\C-ge" 'writegood-reading-ease)

;; wordsmith-mode
(require 'wordsmith-mode)

;; writeroom-mode
(require 'writeroom-mode)


(provide 'prose-settings)
(message "prose-settings loaded")
;;; prose-settings.el ends here
