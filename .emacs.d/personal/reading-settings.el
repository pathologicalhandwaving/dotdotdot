;;; reading-settings.el
;;; Commentary: Reading, ebook, and paperless settings
(require 'org)
(require 'interleave)
(require 'org-pdfview)
(require 'pdf-tools)
(require 'org-noter)
(require 'helm-books)
(require 'nov)
(require 'paperless)
(require 'org-paperless)

;;; Code:
(use-package pdf-tools
  :config
  (pdf-tools-install)
  (setq-default pdf-view-display-size 'fit-page)
  (setq pdf-view-resize-factor 1.1))

(setq org-noter-property-doc-file "INTERLEAVE_PDF"
      org-noter-property-note-location "INTERLEAVE_PAGE_NOTE")

(setq helm-books-custom-format "#title#\n:PROPERTIES:\n:AUTHOR:#author#\n:END:")

;; nov-mode Settings
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
;; Default Font
(defun my-nov-font-setup ()
  (face-remap-add-relative 'variable-pitch
                           :family "Fantasque Sans Mono"
                           :height 1.0))
(add-hook 'nov-mode-hook 'my-nov-font-setup)

;; Text Width
(setq nov-text-width 70)

;; paperless Settings
(custom-set-variables
 '(paperless-capture-directory "/Volumes/JumpShip/Inbox/Clouds/MEGA/Library-Archive/Paperless/Holding-Area")
 '(paperless-root-directory "/Volumes/JumpShip/Inbox/Clouds/MEGA/Library-Archive"))

(provide 'reading-settings)
(message "reading-settings loaded successfully!")
;;; reading-settings.el ends here
