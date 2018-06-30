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




(setq org-log-note-headings '((done . ":CLOSED: %T")
                              (state . ":PROPERTIES:\n:STATE_CHANGED:\n:PREVIOUS_STATE: %S\n:DATE_MODIFIED: %T\n:END:")
                              (note . ":PROPERTIES:\n:DATE_ADDED: %T\n:END:")
                              (reschedule . ":PROPERTIES:\n:RESCHEDULED:\n:PREVIOUS_SCHEDULE: %S\n:DATE_MODIFED: %T\n:END:")
                              (delschedule . ":PROPERTIES:\n:UNSCHEDULED:\nPREVIOUS_SCHEDULE: %S\n:DATE_MODIFIED: %T\n:END:")
                              (redeadline . ":PROPERTIES:\n:DEADLINE_MOVED:\n:PREVIOUS_DEADLINE: %S\n:DATE_MODIFIED: %T\n:END:")
                              (deldeadline . ":PROPERTIES:\n:DEADLINE_REMOVED:\n:PREVIOUS_DEADLINE: %S\nDATE_MODIFIED: %T\n:END:")
                              (refile . ":PROPERTIES:\n:REFILED: %T\n:END:")
                              (clock-out . ":PROPERTIES:\n:CLOCKED_OUT: %T\n:END:")))




(provide 'log-settings)
(message "Log Settings Loaded!")
;;; log-settings.el ends here
