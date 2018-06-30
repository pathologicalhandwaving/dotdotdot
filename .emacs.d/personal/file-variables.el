;;; file-variables.el

;;; Code:


;; ORGANIZER
(defvar organizer-file)
(setq organizer-file "/Users/Em/Documents/Dropbox/organizer.org")

;; keybind
(global-set-key (kbd "\C-co")
                (lambda () (interactive) (find-file 'organizer-file)))



;;; Exile (Personal Files)

;; Default Notes
(defvar exile-notes-file)
(setq exile-notes-file "/Users/Em/Documents/Dropbox/Exile/notes.org")


;; Comments File
(defvar exile-comments-file)
(setq exile-comments-file "/Users/Em/Documents/Dropbox/Exile/comments-withheld.org")


;; Appointments
(defvar exile-appointments-file)
(setq exile-appointments-file "/Users/Em/Documents/Dropbox/Exile/appointments.org")

;; Habits
(defvar exile-habits-file)
(setq exile-habits-file "/Users/Em/Documents/Dropbox/Exile/habits.org")


;; Online Orders
(defvar exile-orders-file)
(setq exile-orders-file "/Users/Em/Documents/Dropbox/Exile/online-orders.org")

;; Quotes
(defvar exile-quotes-file)
(setq exile-quotes-file "/Users/Em/Documents/Dropbox/Library-Annex/quotes.org")

;; Tasks
(defvar exile-tasks-file)
(setq exile-tasks-file "/Users/Em/Documents/Dropbox/Exile/tasks.org")



;; Communications Log
(defvar exile-comm-log-file)
(setq exile-comm-log-file "/Users/Em/Documents/Dropbox/Exile/communications-log.org")


;;; WerX Files


;; WerX Issues
(defvar werx-issues-file)
(setq werx-issues-file "/Users/Em/Documents/Dropbox/Werx/holidayinn-issues.org")

;; Opera Bugs
(defvar opera-bugs-file)
(setq opera-bugs-file "/Users/Em/Documents/Dropbox/Werx/opera-bugs.org")

;; WerX Notes
(defvar werx-notes-file)
(setq werx-notes-file "/Users/Em/Documents/Dropbox/Werx/holidayinn-notes.org")



;; WerX Personal
(defvar werx-personal-dir)
(setq werx-personal-dir "/Users/Em/Documents/Dropbox/Werx/Personal/")


;; WerX Tasks
(defvar werx-tasks-file)
(setq werx-tasks-file "/Users/Em/Documents/Dropbox/Werx/holidayinn-workflowy.org")






;;; LabBot Files
;; LabBot Path
;; /Users/Em/Documents/Dropbox/LabBot/


;; Questions
(defvar labbot-questions-file)
(setq labbot-questions-file "/Users/Em/Documents/Dropbox/LabBot/questions.org")


;; Facts
(defvar labbot-fact-file)
(setq labbot-fact-file "/Users/Em/Documents/Dropbox/LabBot/facts.org")


;; ideas
(defvar labbot-ideas-file)
(setq labbot-ideas-file "/Users/Em/Documents/Dropbox/LabBot/ideas.org")

;; projects
(defvar labbot-projects-dir)
(setq labbot-projects-dir "/Volumes/JumpShip/Lab/Projects")

;;; Library-Annex

;; ReadLater
(defvar library-annex-readlater-file)
(setq library-annex-readlater-file "/Users/Em/Documents/Dropbox/Library-Annex/readlater.org")


(defvar library-annex-dir)
(setq library-annex-dir "/Users/Em/Documents/Dropbox/Library-Annex/")


;; Quotes
(defvar library-annex-quotes-file)
(setq library-annex-quotes-file "/Users/Em/Documents/Dropbox/Library-Annex/quotes.org")


;; Helm-Books


;;; Library MEGA

;; MEGA Library-Archive
;; Not Really an Archive
;; More like a long term file store
(defvar mega-library-archive-dir)
(setq mega-library-archive-dir "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/")

(defvar mega-pdfs-dir)
(setq mega-pdfs-dir "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/PDFs/")

(defvar mega-epubs-dir)
(setq mega-epubs-dir "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/EPubs")

(defvar mega-paperless-dir)
(setq mega-paperless-dir "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/Paperless")

(defvar mega-default-bibliography-file)
(setq mega-default-bibliography-file "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/Bibliography/default.bib")


;;; LessonsLearned

;; LessonsLearned Dir
(defvar lessonslearned-dir)
(setq lessonslearned-dir "/Users/Em/Documents/Dropbox/LessonsLearned/")


;; LessonsLearned Default File
(defvar lessonslearned-default-file)
(setq lessonslearned-default-file "/Users/Em/Documents/Dropbox/LessonsLearned/lessonslearned-default.org")


;; LessonsLearned Index File
(defvar lessonslearned-index-file)
(setq lessonslearned-index-file "/Users/Em/Documents/Dropbox/LessonsLearned/lessonslearned-index.org")




;;; Docs

(defvar docs-dir)
(setq docs-dir "/Users/Em/Documents/Dropbox/Docs/")



;;; SwedishChef

;; SwedishChef Dir
(defvar swedishchef-dir)
(setq swedishchef-dir "/Users/Em/Documents/Dropbox/SwedishChef/")


;; Recipes Dir
(defvar swedishchef-recipes-dir)
(setq swedishchef-recipes-dir "/Users/Em/Documents/Dropbox/SwedishChef/Recipes/")


;; Cookbook
(defvar swedishchef-cookbook)
(setq swedishchef-cookbook "/Users/Em/Documents/Dropbox/SwedishChef/cookbook.org")



;;; AudioBot (voicememos)

;; Recordings
(defvar audiobot-dir)
(setq audiobot-dir "/Users/Em/Documents/Dropbox/AudioBot/")

;; Archive
(defvar audiobot-archive-dir)
(setq audiobot-archive-dir "/Users/Em/Documents/Dropbox/AudioBot/AudioBot_Archive/")

;; Transcribed
(defvar audiobot-transcriptions-dir)
(setq audiobot-transcriptions-dir "/Users/Em/Documents/Dropbox/AudioBot/Transcribed/")

;; Main Transcription File
(defvar audiobot-default-trans)
(setq audiobot-default-trans "/Users/Em/Documents/Dropbox/AudioBot/Transcribed/transcribed-voicememos.org")



;;; TeXBot


;; Templates Dir
(defvar texbot-templates-dir)
(setq texbot-templates-dir "/Users/Em/.emacs.d/latex/templates")

;; Stationary Dir
(defvar texbot-stationary-dir)
(setq texbot-stationary-dir "/Users/Em/.emacs.d/latex/stationary")

(defvar texbot-macros-dir)
(setq texbot-macros-dir "/Users/Em/.emacs.d/latex/macros")


;; TeXBot Archive Dir
(defvar texbot-archive-dir)
(setq texbot-archive-dir "/Users/Em/Documents/Dropbox/TeXBot/TeXBot_Archive/")

;; TeXBot Project Dir
(defvar texbot-projects-dir)
(setq texbot-projects-dir "/Users/Em/Documents/Dropbox/TeXBot/TeXBot-Projects/")



;;; Monopoly
(defvar monopoly-dir)
(setq monopoly-dir "/Users/Em/Documents/Dropbox/Monopoly/")

;; bills list
(defvar monopoly-bills-file)
(setq monopoly-bills-file "/Users/Em/Documents/Dropbox/Monopoly/bills-list.org")

;; budget
(defvar monopoly-budget-file)
(setq monopoly-budget-file "/Users/Em/Documents/Dropbox/Monopoly/budget.org")

;; expenses
(defvar monopoly-expenses-file)
(setq monopoly-expenses-file "/Users/Em/Documents/Dropbox/Monopoly/expenses-log.org")

;; income
(defvar monopoly-income-file)
(setq monopoly-income-file "/Users/Em/Documents/Dropbox/Monopoly/income-log.org")

;; payments
(defvar monopoly-payments-file)
(setq monopoly-payments-file "/Users/Em/Documents/Dropbox/Monopoly/payments-log.org")

;; gas log
;; yasnippet: gaslog
(defvar monopoly-gas-file)
(setq monopoly-gas-file "/Users/Em/Documents/Dropbox/Monopoly/gas-log.org")

;; shopping list
(defvar monopoly-shopping-list)
(setq monopoly-shopping-list "/Users/Em/Documents/Dropbox/Monopoly/shopping-list.org")

;; groceries
(defvar monopoly-grocery-list)
(setq monopoly-grocery-list "/Users/Em/Documents/Dropbox/Monopoly/groceries.org")



;;; Misc Variables:

;; Music Directory
(defvar em-music-dir)
(setq em-music-dir "/Users/Em/Music/")

;; AudioBooks Directory
(defvar em-audiobooks-dir)
(setq em-audiobooks-dir "/Users/Em/Music/AudioBooks/")

;; WAV Files Directory
(defvar em-wav-dir)
(setq em-wav-dir "/Users/Em/Music/wav/")

;; Music Collections
(defvar em-music-collections-dir)
(setq em-music-collections-dir "/Users/Em/Music/Collections/")

;; Podcasts Dicrectory
(defvar em-podcasts-dir)
(setq em-podcasts-dir "/Users/Em/Music/PodCasts/")

;; Pictures Directory
(defvar em-pics-dir)
(setq em-pics-dir "/Users/Em/Pictures/")

;; Downloads Directory
(defvar em-downloads-dir)
(setq em-downloads-dir "/Users/Em/Downloads/")

;; Documents Dir
(defvar em-documents-dir)
(setq em-documents-dir "/Users/Em/Documents/")


;; Movies Directory
(defvar em-movies-dir)
(setq em-movies-dir "/Users/Em/Movies/")

;; Video Lectures Directory
(defvar em-video-lectures-dir)
(setq em-video-lectures-dir "/Users/Em/Movies/Lectures/")

;; Torrents Directory
(defvar em-torrents-dir)
(setq em-torrents-dir "/Users/Em/Torrents/")


;; End Code
(provide 'file-variables)
(message "File Variables Loaded!")
;;; file-variables.el ends here
