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

;; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

;; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

;; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

;; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

;; Use IDO for both buffer and file completion and ido-everywhere to t
(setq org-completion-use-ido t)
(setq ido-everywhere t)
(setq ido-max-directory-size 100000)
(ido-mode (quote both))

;; Use the current window when visiting files and buffers with ido
(setq ido-default-file-method 'selected-window)
(setq ido-default-buffer-method 'selected-window)
;; Use the current window for indirect buffer display
(setq org-indirect-buffer-display 'current-window)

;;;; Refile settings
; Exclude DONE state tasks from refile targets
(defun exile-verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))

(setq org-refile-target-verify-function 'exile-verify-refile-target)

(provide 'archive-settings)
(message "Archive Settings Loaded!")
;;; archive-settings.el ends here
