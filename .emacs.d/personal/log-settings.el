;;; log-settings.el
(require 'org)

;;; Code:

(setq org-log-done 'time)
(setq org-log-note-clock-out 'time)
(setq org-log-refile 'time)
(setq org-log-repeat 'time)
(setq org-log-reschedule 'time)
(setq org-log-redeadline 'time)
(setq org-log-note-state 'time)

(defvar org-clock-in-switch-to-state)
(defvar org-clock-out-switch-to-state)

(setq org-clock-in-switch-to-state "CLOCK_IN")
(setq org-clock-out-switch-to-state "CLOCK_OUT")

(setq org-closed-keep-when-no-todo t)

(setq org-closed-string "CLOSED")

(defvar org-datetree-add-timestamp)
(setq org-datetree-add-timestamp 'active)

(setq org-log-note-clock-out t)




(setq org-log-note-headings '((done . "CLOSED: %T")
                              (state . "STATE_CHANGED: %T")
                              (note . "NOTE_ADDED: %T")
                              (rescheduled . "RESCHEDULED: %T FROM: %S")
                              (delschedule . "SCHEDULE_REMOVED: %T")
                              (redeadline . "DEADLINE_CHANGED: %T FROM: %S")
                              (deldeadline . "DEADLINE_REMOVED: %T FROM: %S")
                              (refile . "REFILED: %T")
                              (clock-out . "CLOCK_OUT: %T")))




(provide 'log-settings)
(message "Log Settings Loaded!")
;;; log-settings.el ends here
