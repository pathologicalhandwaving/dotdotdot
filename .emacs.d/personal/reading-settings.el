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
(require 'google-translate)
(require 'google-translate-default-ui)
(require 'org-bibtex)

(setq org-bibtex-file "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/Bibliography/default.bib")

;;; Code:


;;; Google Translate
(global-set-key "\C-ct" 'google-translate-at-point)
(global-set-key "\C-cT" 'google-translate-query-translate)


;;; PDF

;;; pdf-tools
(pdf-tools-install)
(setq pdf-info-epdfinfo-program "/usr/local/bin/epdfinfo")
(add-to-list 'load-path "~/.emacs.d/elpa/")


;;; org-noter
(setq org-noter-property-doc-file "INTERLEAVE_PDF"
      org-noter-property-note-location "INTERLEAVE_PAGE_NOTE")


;;; REFERENCE

;;; helm-books
(setq helm-books-custom-format "#title#\n:PROPERTIES:\n:AUTHOR:#author#\n:END:")

;;; Bibliothek
(setq bibliothek-path "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/PDFs/")
(setq bibliothek-recursive t)



;;; EPUB

;;; nov-mode
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
;; Default Font
(defun my-nov-font-setup ()
  (face-remap-add-relative 'variable-pitch
                           :family "Fantasque Sans Mono"
                           :height 1.0))
(add-hook 'nov-mode-hook 'my-nov-font-setup)

(setq nov-text-width 60)

;;; RECIEPTS

;;; paperless
(setq paperless-capture-directory "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/Paperless/Holding-Area/")
(setq paperless-root-directory "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/Paperless/")




(provide 'reading-settings)
(message "Reading Settings Loaded Successfully!")
;;; reading-settings.el ends here
