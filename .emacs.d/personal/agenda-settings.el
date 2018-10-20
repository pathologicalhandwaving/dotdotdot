;;; agenda-settings.el
(require 'org)
(require 'org-agenda)
(require 'org-super-agenda)


;;; org-agenda-files:
(setq org-agenda-files '("~/Dropbox/AgendaBot/tasks.org"
                         "~/Dropbox/AgendaBot/inbox.org"
                         "~/Dropbox/AgendaBot/agenda.org"
                         "~/Dropbox/AgendaBot/worklogs.org"
                         "~/Dropbox/AgendaBot/calendar.org"
                         "~/Dropbox/AgendaBot/diary.org"
                         "~/Dropbox/AgendaBot/refile.org"
                         "~/Dropbox/LabBot/projects.org"
                         "~/Dropbox/AgendaBot/birthdays.org"
                         "~/Dropbox/AgendaBot/holidays.org"))

;;; Diary:

(setq org-agenda-include-diary t)

(setq org-agenda-diary-file "/Users/Em/Dropbox/AgendaBot/logs.org")

(setq org-agenda-insert-diary-extract-time t)


;;; Time Grid
;; NOTE Requires single day view to look pretty

;; Use Time Grid
(setq org-agenda-use-time-grid t)


;;; Agenda Window Display

;; Agenda Window Setup
;(org-agenda-window-setup)

;; Agenda Window Setup Restore After Quitting
(setq org-agenda-restore-windows-after-quit t)


;;; Code Ending:
(provide 'agenda-settings)
(message "Agenda Settings Loaded!")
;;; agenda-settings.el ends here
