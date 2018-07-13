;;; refile-settings.el
(require 'org)


;;; Code:

(setq org-refile-targets '((exile-notes-file :maxlevel . 5)
                           (labbot-questions-file :maxlevel . 4)
                           (library-audiobook-notes-dir :maxlevel . 4)
                           (monopoly-expenses-file :maxlevel . 5)
                           (monopoly-gas-file :maxlevel . 3)
                           (audiobot-default-trans :maxlevel . 6)
                           (lessonslearned-default-file :maxlevel . 7)
                           (mega-default-bibliography-file :maxlevel . 5)
                           (library-annex-quotes-file :maxlevel . 3)
                           (library-annex-readlater-file :maxlevel . 5)
                           (labbot-fact-file :maxlevel . 3)
                           (labbot-ideas-file :maxlevel . 3)
                           (werx-notes-file :maxlevel . 7)
                           (werx-issues-file :maxlevel . 9)
                           (exile-tasks-file :maxlevel . 4)
                           (exile-notes-file :maxlevel . 5)
                           (organizer-file :maxlevel . 5)
                           (exile-appointments-file :maxlevel . 5)
                           (exile-comments-file :maxlevel . 4)))

;; This is sort of a trick; you will have a generally cleaner and prettier experience with Refile if you don’t need to do this, but this is the only way to do top-level refiles. We configure org-refile-use-outline-path to tell Org to include the destination file as an element in the path to a heading, and to use the full paths as completion targets rather than just the heading text itself.
(setq org-refile-use-outline-path 'file)

;; Dont complete in steps
(setq org-outline-path-complete-in-steps nil)

;; Allow Creation of Parents with Confirmation
(setq org-refile-allow-creating-parent-nodes 'confirm)


;;;; Refile settings
;; Exclude DONE state tasks from refile targets

(defun exile/verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))



(provide 'refile-settings)
(message "Refile Settings Loaded!")
;;; refile-settings.el ends here
