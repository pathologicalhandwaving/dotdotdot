;;; format-settings.el
(require 'org)
(require 'org-bullets)


;;; Code:


;; org-bullets
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; Bullet-shaped bullets
(font-lock-add-keywords 'org-mode
                        '(("^ +\\([-*]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))




;; Meta Documents Info
(setq org-document-title '((:foreground "SlateGray4" :weight regular :height 70)))
(setq org-document-info '((:foreground "SlateGray4" :weight regular :height 70)))
(setq org-document-info-keywords '((:foreground "SlateGray4" :weight regular :height 70)))
(setq org-property-value '((:foreground "SlateGray4" :weight regular :slant oblique :height 70)))
(setq org-tag-faces '((:weight regular :height 70)))
(setq org-fontify-emphasized-text t)

(setq org-fontify-done-headline t)




;; Emphasis Markers
(add-to-list 'org-emphasis-alist
             '("*" (:foreground "firebrick" :weight bold)
               "+" (:foreground "SlateGray4" :weight regular (:strike-through t))
               "_" (:foreground "DeepPink2" :weight regular (:underline t))
               "=" (:foreground "MediumSeaGreen" :weight regular (org-code verbatim))
               "~" (:foreground "DarkOrange" :weight regular (org-verbatim verbatim))
               "/" (:background "gray26" :weight regular :slant italic)))

;; Hide Emphasis Markers
(setq org-hide-emphasis-markers t)

;; Show empty line between trees if it exists
(setq org-cycle-separator-lines 1)

;; Checkboxes


;; Fontify Done Plain Lists
(font-lock-add-keywords
 'org-mode
 '(("^[ \t]*\\(?:[-+*]\\|[0-9]+[).]\\)[ \t]+\\(\\(?:\\[@\\(?:start:\\)?[0-9]+\\][ \t]*\\)?\\[\\(?:X\\|\\([0-9]+\\)/\\2\\)\\][^\n]*\n\\)" 1 'org-headline-done prepend))
 'append)


;; Cycle Plain Lists
(setq org-cycle-include-plain-lists t)


;; End 
(provide 'format-settings)
(message "Format Settings Loaded!")
;;; head-settings.el ends here
