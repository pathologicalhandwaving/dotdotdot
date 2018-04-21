;;; capture-settings.el

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; Capture Keybind
(global-set-key "\C-cc" 'org-capture)

;; helper functions

;; brackets-to-parens
(defun transform-brackets-to-parens(string-to-transform)
  "Transforms [ ] to (), leaving other characters unchanged"
  (concat
   (mapcar #'(lambda (c) (if (equal c ?[) ?\( (if (equal c ?]) ?\) c))) string-to-transform)))



;; templates
(setq org-capture-templates '(
                              )
      )



(provide 'capture-settings)
(message "capture settings loaded")
;;; capture-settings.el ends here
