;;; agenda-settings.el
(require 'org)
(require 'org-agenda)
(require 'org-super-agenda)


;;; org-agenda-files:
(setq org-agenda-files '("~/Dropbox/AgendaBot/tasks.org"
                         "~/Dropbox/AgendaBot/inbox.org"
                         "~/Dropbox/AgendaBot/agenda.org"
                         "~/Dropbox/AgendaBot/diary.org"))



;;; Diary:

(setq org-agenda-include-diary t)

(setq org-agenda-diary-file "/Users/Em/Dropbox/AgendaBot/diary.org")

(setq org-agenda-insert-diary-extract-time t)



;;; Code Ending:
(provide 'agenda-settings)
(message "Agenda Settings Loaded!")
;;; agenda-settings.el ends here
