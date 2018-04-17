;; Space-settings

(prelude-require-package 'org)

;; org-bullets
(prelude-require-package 'org-bullets)
(add-hook 'org-mode-hood (lambda () (org-bullets-mode +1)))

;; org-brain
(prelude-require-package 'org-brain)
  
;; PDF Reading Setup

;; pdf-tools config
(prelude-require-package 'pdf-tools)
(pdf-tools-install)

;; Scale page to fit
(setq-default pdf-view-display-size 'fit-page)

;; Automatically annotate highlights
(setq pdf-annot-activate-created-annotations t)
(define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)

;; Turn off cua so copy works
(add-hook 'pdf-view-mode-hook (lambda () (cua-mode 0)))

;; Fine-grained zooming
(setq pdf-view-resize-factor 1.1)

;; Keybinds
(define-key pdf-view-mode-map (kbd "h") 'pdf-annot-add-highlight-markup-annotation)
(define-key pdf-view-mode-map (kbd "t") 'pdf-annot-add-text-annotation)
(define-key pdf-view-mode-map (kbd "D") 'pdf-annot-delete)

;; Annotations
(with-eval-after-load "pdf-annot"
  (define-key pdf-annot-edit-contents-minor-mode-map (kbd "<return>") 'pdf-annot-edit-contents-commit)
  (define-key pdf-annot-edit-contents-minor-mode-map (kbd "<S-return>") 'newline)
  ;; save after adding comment
  (advice-add 'pdf-annot-edit-contents-commit :after 'bjm/save-buffer-no-args))

;; org-ref
(prelude-require-package 'org-ref)
(setq org-ref-bibliography-notes "/Users/Em/Repos/ImInSpace/Library/Refs/notes.org")
(setq org-ref-default-bibliography "/Users/Em/Repos/ImInSpace/Library/Refs/default.bib")
(setq org-ref-pdf-directory "/Users/Em/Repos/ImInSpace/Library/Refs/PDFs")

;; helm-bibtex
(prelude-require-package 'helm-bibtex)
;;(prelude-require-package 'helm-bibtex-with-local-bibliography)
(prelude-require-package 'helm-bibtexkey)
(setq bibtex-completion-bibliography "/Users/Em/Repos/ImInSpace/Library/Refs/default.bib")
(setq bibtex-completion-library-path "/Users/Em/Repos/ImInSpace/Library/Refs/PDFs")
(setq bibtex-completion-notes-path "/Users/Em/Repos/ImInSpace/Library/Refs/notes.org")



  
(provide 'space-settings)
(message "space-settings loaded successfully")
