;;; snippet-settings.el
(require 'yasnippet)

(add-to-list 'load-path "~/.emacs.d/elpa/yankpad/")
(require 'yankpad)

;; Snippet Directory
(add-to-list 'yas-snippet-dirs "/Users/Em/Documents/Dropbox/snippets/")

(yas-global-mode t)


(add-hook 'org-mode-hook
          (lambda ()
            (setq-local yas/trigger-key [tab])
            (define-key yas/keymap [tab] 'yas/next-field-or-maybe-expand)))



(setq yas-use-menu 'full)
(setq yas-visit-from-menu t)

(provide 'snippet-settings)
(message "Snippet Settings Loaded!")
;;; snippet-settings.el ends here
