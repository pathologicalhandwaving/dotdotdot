;;; exile.el

;; User Info
(setq user-full-name "K. M. Short")
(setq user-login-name "Em")
(setq user-mail-address "iminspace.org@gmail.com")

;;; Code:


;; No Scroll-bar no ToolBar
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Visual Line Mode
(global-visual-line-mode 1)

;; No Visual Whitespace-Mode
(defvar prelude-whitespace)
(setq prelude-whitespace nil)

;; No on-the-fly spellchecking
(defvar prelude-flyspell)
(setq prelude-flyspell nil)

;; Act on Whole Folds
;; Don't Lose Them
(require 'org)
(require 'nxml-mode)

;; org directory
(setq org-directory "/Volumes/JumpShip")
(setq org-default-notes-file (concat org-directory "/Inbox/Clouds/Dropbox/Helm/notes.org"))

(setq org-startup-align-all-tables t)
(setq org-startup-folded t)
(setq org-startup-indented t)
(setq org-startup-with-beamer-mode t)
(setq org-startup-with-inline-images t)
(setq org-startup-with-latex-preview t)
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)

(setq org-special-ctrl-a/e t)
(setq org-special-ctrl-k t)
(setq org-yank-adjusted-subtrees t)


;; org-capture keybind
(define-key global-map "\C-cc" 'org-capture)


;; Catch Invisible Edits
(setq org-catch-invisible-edits 'error)

;; Show empty line between trees if it exists
(setq org-cycle-separator-lines 2)

;; Return Follows Link
(setq org-return-follows-link t)


;; org-bullets
(require 'org-bullets)
(setq org-bullets-bullet-list '("" "" "" ""))
(add-hook 'org-mode-hook 'org-bullets-mode)

;; prettify-symbols
(global-prettify-symbols-mode)

;; yasnippet
(require 'yasnippet)
(add-to-list 'yas-snippet-dirs "/Volumes/JumpShip/Inbox/Clouds/Dropbox/snippets")
(yas-global-mode t)

;; Don't Confirm Babel Eval
(setq org-confirm-babel-evaluate nil)


(provide 'exile)
(message "Exile Successfully Loaded!")

;;; exile.el ends here
