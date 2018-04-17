;; Space-settings

(prelude-require-package 'org)

;; org-bullets
(prelude-require-package 'org-bullets)
(add-hook 'org-mode-hood (lambda () (org-bullets-mode 1)))

;; org-brain
(prelude-require-package 'org-brain)
  
;; PDF Reading Setup

;; pdf-tools
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
;; Keyboard shortcuts
(define-key pdf-view-mode-map (kbd "h") 'pdf-annot-add-highlight-markup-annotation)
(define-key pdf-view-mode-map (kbd "t") 'pdf-annot-add-text-annotation)
(define-key pdf-view-mode-map (kbd "D") 'pdf-annot-delete)

;; org-ref
(prelude-require-package 'org-ref)
(setq org-ref-bibliography-notes "/Users/Em/Repos/ImInSpace/Library/Refs/notes.org"
      org-ref-default-bibliography '("/Users/Em/Repos/ImInSpace/Library/Refs/default.bib")
      org-ref-pdf-directory "/Users/Em/Repos/ImInSpace/Library/Refs/PDFs/")
;; helm-bibtex
(setq bibtex-completion-bibliography "/Users/Em/Repos/ImInSpace/Library/Refs/default.bib")
      bibtex-completion-library-path "/Users/Em/Repos/ImInSpace/Library/Refs/PDFs/"
      bibtex-completion-notes-path "/Users/Em/Repos/ImInSpace/Library/Refs/notes.org") 


  
(provide 'space-settings)
(message "space-settings loaded successfully")
