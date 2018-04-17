;; Space-settings

(prelude-require-package 'org)

;; org-bullets
(prelude-require-package 'org-bullets)
(add-hook 'org-mode-hood (lambda () (org-bullets-mode 1)))

;; org-brain
(prelude-require-package 'org-brain)
  

  
(provide 'space-settings)
(message "space-settings loaded successfully")
