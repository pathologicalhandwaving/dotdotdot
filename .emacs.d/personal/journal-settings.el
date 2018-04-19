;; journal-settings.el

(prelude-require-package 'org-journal)

;; Find location function
(defun org-journal-find-location ()
  (org-journal-new-entry t)
  (goto-char (point-min)))

(provide 'journal-settings.el)
(message "journal settings loaded")
;;; journal-settings.el ends here
