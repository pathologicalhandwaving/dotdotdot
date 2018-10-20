;;; helm-sources.el
(require 'helm-frame)

;;; Code:

;;; helm-frame

(add-hook 'helm-after-action-hook 'helm-frame-delete)
(add-hook 'helm-cleanup-hook 'helm-frame-delete)
(setq helm-split-window-preferred-function 'helm-frame-window)


;;; helm-bibtex
(autoload 'helm-bibtex "helm-bibtex" "" t)

(setq bibtex-completion-bibliography
      '("/Users/Em/Dropbox/LibrarianBot/default.bib"))


;;; End Code
(provide 'helm-sourced)
(message "Helm Sources Loaded!")
;;; helm-sources.el ends here