;;; file-variables.el


;;; Commentary:
;; 

;;; Code:


;;; file-variables.el --- File Variables
;; ORGANIZER
(defvar organizer-file)
(setq organizer-file "/Users/Em/Documents/Dropbox/organizer.org")

;; keybind
(global-set-key (kbd "\C-co")
                (lambda () (interactive) (find-file 'organizer-file)))

(set-register ?i '(file . exile-inbox))

(set-register ?t '(file . exile-tasks-file))


;;; Diary

;; Running Journal File
(defvar journal-runner)
(setq runner "/Users/Em/Documents/Dropbox/Diary/runner.org")

;; Therapy File
(defvar journal-therapy)
(setq journal-therapy "/Users/Em/Documents/Dropbox/Diary/therapy.org")


;;; Exile (Personal Files)

;; Inbox File
(defvar exile-inbox)
(setq exile-inbox "/Users/Em/Documents/Dropbox/Exile/inbox.org")

;; Exile Dir
(defvar exile-dir)
(setq exile-dir "/Users/Em/Documents/Dropbox/Exile/")

;; Accounts File
(defvar exile-accounts-file)
(setq exile-accounts-file "/Users/Em/Documents/Dropbox/Exile/accounts.org")

;; Contacts File
(defvar exile-contacts-file)
(setq exile-contacts-file "/Users/Em/Documents/Dropbox/Exile/contacts.org")


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
;;(defvar exile-quotes-file)
;;(setq exile-quotes-file "/Users/Em/Documents/Dropbox/Library-Annex/quotes.org")

;; Tasks
(defvar exile-tasks-file)
(setq exile-tasks-file "/Users/Em/Documents/Dropbox/Exile/tasks.org")



;; Communications Log
(defvar exile-comm-log-file)
(setq exile-comm-log-file "/Users/Em/Documents/Dropbox/Exile/communications-log.org")


;;; Captain

;; Journal Files Dir
(defvar captain-files-dir)
(setq captain-files-dir "/Users/Em/Documents/Dropbox/Diary/JournalEntries/")

;;; WerX Files

;; WerX Dir
(defvar werx-dir)
(setq werx-dir "/Users/Em/Documents/Dropbox/Werx/")


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

;; LabBot Dir
(defvar labbot-dir)
(setq labbot-dir "/Users/Em/Documents/Dropbox/LabBot/")

;; Questions File
(defvar labbot-questions-file)
(setq labbot-questions-file "/Users/Em/Documents/Dropbox/LabBot/questions.org")

;; Project Log File
(defvar labbot-project-log)
(setq labbot-project-log "/Users/Em/Documents/Dropbox/LabBot/project-log.org")

;; Facts File
(defvar labbot-fact-file)
(setq labbot-fact-file "/Users/Em/Documents/Dropbox/LabBot/facts.org")


;; Ideas File
(defvar labbot-ideas-file)
(setq labbot-ideas-file "/Users/Em/Documents/Dropbox/LabBot/ideas.org")

;; Projects Directory
(defvar labbot-projects-dir)
(setq labbot-projects-dir "/Volumes/JumpShip/Lab/Projects")



;;; Library-Annex

;; ReadLater
(defvar library-annex-readlater-file)
(setq library-annex-readlater-file "/Users/Em/Documents/Dropbox/Library-Annex/readlater.org")

;; Read
(defvar library-annex-read-file)
(setq library-annex-read-file "/Users/Em/Documents/Dropbox/Library-Annex/read.org")

(defvar library-annex-dir)
(setq library-annex-dir "/Users/Em/Documents/Dropbox/Library-Annex/")


;; Quotes
(defvar library-annex-quotes-file)
(setq library-annex-quotes-file "/Users/Em/Documents/Dropbox/Library-Annex/quotes.org")

;; Scraped Dir
(defvar library-annex-scraped-dir)
(setq library-annex-scraped-dir "/Users/Em/Documents/Dropbox/Library-Annex/Scraped/")


;; Helm-Books
;; Book Memos File
(defvar library-annex-book-memos-file "/Users/Em/Documents/Dropbox/Library-Annex/book-memos.org")



;;; Library MEGA

;; MEGA Library-Archive
;; Not Really an Archive
;; More like a long term file store
(defvar mega-library-dir)
(setq mega-library-dir "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/")

(defvar mega-pdfs-dir)
(setq mega-pdfs-dir "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/PDFs/")

(defvar mega-epubs-dir)
(setq mega-epubs-dir "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/EPubs")

(defvar mega-paperless-dir)
(setq mega-paperless-dir "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/Paperless")

(defvar mega-default-bibliography-file)
(setq mega-default-bibliography-file "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/Bibliography/default.bib")

(defvar mega-dictionary-dir)
(setq mega-dictionary-dir "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/Dictionary/")

(defvar mega-gloss-entries-dir)
(setq mega-gloss-entries-dir "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/Dictionary/Entries/")

(defvar mega-dictionary-default-file)
(setq mega-dictionary-default-file "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/Dictionary/dictionary.org")

(defvar mega-acronyms-file)
(setq mega-acronyms-file "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/Dictionary/acronyms.org")

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


;;; AutoBot
(defvar autobot-dir)
(setq autobot-dir "/Users/Em/Documents/Dropbox/AutoBot/")


;;; TeXBot

;; TeXBot Dir
(defvar texbot-dir)
(setq texbot-dir "/Users/Em/Documents/Dropbox/TeXBot/")


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

;; wishlist
(defvar monopoly-wish-list)
(setq monopoly-wish-list "/Users/Em/Documents/Dropbox/Monopoly/wishlist.org")


;;; Misc Variables:

;; Music Directory
(defvar em-music-dir)
(setq em-music-dir "/Users/Em/Music/")

;; AudioBooks Directory
(defvar em-audiobooks-dir)
(setq em-audiobooks-dir "/Users/Em/Music/AudioBooks/")

;; AudioBook Notes Directory
(defvar library-audiobook-notes-dir)
(setq library-audiobook-notes-dir "/Users/Em/Documents/Dropbox/Library-Annex/AudioBook-Notes/")

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
