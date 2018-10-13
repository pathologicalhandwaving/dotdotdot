;;; archive-settings.el
(require 'org)


(defvar org-archive-mark-done)

;;; Code:
(setq org-archive-mark-done nil)

;; Recent Files
(recentf-mode 1)
(defvar recentf-max-saved-items)
(setq recentf-max-saved-items 200)


;; Backup Directory
(setq backup-directory-alist `((".*" . "~/.emacs.d/backups"))
      auto-save-file-name-transforms `((".*" , "~/.emacs.d/backups" t)))


(setq org-archive-location "~/Dropbox/ARCHIVE/%s_archive::* Archived Tasks")

;; 

;; Use the current window for indirect buffer display
(setq org-indirect-buffer-display 'current-window)



(provide 'archive-settings)
(message "Archive Settings Loaded!")
;;; archive-settings.el ends here
