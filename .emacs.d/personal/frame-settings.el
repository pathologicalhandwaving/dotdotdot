;;; frame-settings.el


;;; Code:


;; Scroll-bar -- NO
(scroll-bar-mode -1)

;; Tool-bar -- NO
(tool-bar-mode -1)

;; Fringe -- NO
(fringe-mode 0)


;;; Wrapping:

;; Visual Line Mode -- ENABLED
(add-hook 'org-mode-hook 'turn-on-visual-line-mode)
(global-visual-line-mode 1)


;;; Whitespace:

;; Visual Whitespace-Mode -- NO
(defvar prelude-whitespace)
(setq prelude-whitespace nil)

;; on-the-fly spellchecking -- NO
;; NOTE Disabled since process hog
(defvar prelude-flyspell)
(setq prelude-flyspell nil)



;;; End Settings

(provide 'frame-settings)
(message "Frame Settings Loaded!")
;; frame-settings.el ends here
