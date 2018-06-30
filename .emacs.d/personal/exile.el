;;; exile.el

;; User Info
(setq user-full-name "K. M. Short")
(setq user-login-name "Em")
(setq user-mail-address "kmshort@protonmail.com")

;;; Code:


;; No Scroll-bar no ToolBar
(scroll-bar-mode -1)
(tool-bar-mode -1)
(fringe-mode 0)

;;; Wrapping:

;; Visual Line Mode
(add-hook 'org-mode-hook 'turn-on-visual-line-mode)
(global-visual-line-mode 1)


;;; Whitespace:

;; No Visual Whitespace-Mode
(defvar prelude-whitespace)
(setq prelude-whitespace nil)

;; No on-the-fly spellchecking
(defvar prelude-flyspell)
(setq prelude-flyspell nil)



(provide 'exile)
(message "Exile Successfully Loaded!")

;;; exile.el ends here
