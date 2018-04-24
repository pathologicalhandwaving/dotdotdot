;;; my-settings.el


;; Pretty Pretty
;; --------------------------------------------------------------------------------------
;; utf-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))

;; --------------------------------------------------------------------------------------
;; all-the-icons
(require 'all-the-icons)

;; --------------------------------------------------------------------------
;; org-bullets
(require 'org-bullets)
;; enable in all org files
(defface org-bullets-face
  '((((class color) (background dark))
     (:foreground "#51afef" :weight bold ))
    (t (
        :foundry "PfEd"
                 :family "Font Awesome 5 Free"
                 :weight normal
                 :width normal
                 :sland normal
                 :height 1.0
                 )))
  "face font for org-bullets"
  :group 'org-faces)

(setq org-bullets-face-name (quote org-bullets-face))
(setq org-bullets-bullet-list
      (quote ("\uf445" "\uf43a" "\uf43f" "\uf447" "\uf441" "\uf443" "\uf3a5" "\uf004" "\uf186" "\uf005" "\uf185")))

(add-hook 'org-mode-hook 'org-bullets-mode)
;; --------------------------------------------------------------------------


(provide 'my-settins)
(message "Settings Loaded")
;;; my-settings.el ends here
