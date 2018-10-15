;;; file-variables.el
;;; REVISED: 2018-10-12


;;; Code:


;;; file-variables.el --- File Variables


;;; AgendaBot

;; Default Agenda File

(defvar agendabot-dir)
(setq agendabot-dir "/Users/Em/Dropbox/AgendaBot")

(defvar agendabot-default)
(setq agendabot-default "/Users/Em/Dropbox/AgendaBot/agenda.org")

;; Inbox
(defvar agendabot-inbox)
(setq agendabot-inbox "/Users/Em/Dropbox/AgendaBot/inbox.org")

;; Tasks
(defvar agendabot-tasks)
(setq agendabot-tasks "/Users/Em/Dropbox/AgendaBot/tasks.org")

;; BeOrg
(defvar agendabot-refile)
(setq agendabot-refile "/Users/Em/Dropbox/AgendaBot/refile.org")


;;; AudioBot

;; AudioBot Directory
(defvar audiobot-dir)
(setq audiobot-dir "/Users/Em/Dropbox/AudioBot")

;; VoiceMemos Directory
(defvar audiobot-voicememos-dir)
(setq audiobot-voicememos-dir "/Users/Em/Dropbox/AudioBot/VoiceMemos"


;;; AutoBot

;; AutoBot Directory
(defvar autobot-dir)
(setq autobot-dir "/Users/Em/Dropbox/AutoBot")


;;; BlogBot

;; BlogBot Directory
(defvar blogbot-dir)
(setq blogbot-dir "/Users/Em/Dropbox/BlogBot")


;;; ChefBot

;; ChefBot Directory
(defvar chefbot-dir)
(setq chefbot-dir "/Users/Em/Dropbox/ChefBot")


;;; DocsBot

;; DocsBot Directory
(defvar docsbot-dir)
(setq docsbot-dir "/Users/Em/Dropbox/DocsBot")

;; MyConfig Directory
(defvar docsbot-myconfig-dir)
(setq docsbot-myconfig-dir "/Users/Em/Dropbox/DocsBot/MyConfig")


;;; GitBot

;; GitBot Directory
(defvar gitbot-dir)
(setq gitbot-dir "/Users/Em/Dropbox/GitBot")


;;; HomeBot

;; HomeBot Directory
(defvar homebot-dir)
(setq homebot-dir "/Users/Em/Dropbox/HomeBot")


;;; LLBot

;; LLBot Directory
(defvar llbot-dir)
(setq llbot-dir "/Users/Em/Dropbox/LLBot")


;;; LabBot

;; LabBot Directory
(defvar labbot-dir)
(setq labbot-dir "/Users/Em/Dropbox/LabBot")


;;; LibrarianBot

;; LibrarianBot Directory (Dropbox)
(defvar librarianbot-dropbox-dir)
(setq librarianbot-dropbox-dir "/Users/Em/Dropbox/LibrarianBot")

;;; NOTE All pdf and epub files go in MEGA for longterm storage
;;; NOTE keep default bibliography, quotes, and readlater here

;;; LibrarianBot Directory (Mega)
(defvar librarianbot-mega-dir)
(setq librarianbot-mega-dir "/Users/Em/MEGAasync/

;;; MOOCBot

;; MOOCBot Directory
(defvar moocbot-dir)
(setq moocbot-dir "/Users/Em/Dropbox/MOOCBot")

;; Classes
(defvar moocbot-classes)
(setq moocbot-classes "/Users/Em/Dropbox/MOOCBot/classes.org")


;;; MakerBot

;; MakerBot Directory
(defvar makerbot-dir)
(setq makerbot-dir "/Users/Em/Dropbox/MakerBot")

;; The Ugly Chair Project
(defvar makerbot-uglychair-dir)
(setq makerbot-uglychair-dir "/Users/Em/Dropbox/MakerBot/UglyChair")


;;; TMP
;;; NOTE Mobile downloads go here until sorted


;; TMP Directory
(defvar tmp-dir)
(setq tmp-dir "/Users/Em/Dropbox/TMP")


;;; TeXBot

;; TeXBot Directory
(defvar texbot-dir)
(setq texbot-dir "/Users/Em/Dropbox/TeXBot")

;; Templates Directory
;;; NOTE EXCEPTION =templates= directory name is lowercase to allow integration with TeX Writer ios app
(defvar texbot-templates-dir)
(setq texbot-templates-dir "/Users/Em/Dropbox/TeXBot/templates")


;;; WerXBot

;; WerXBot Directory
(defvar werxbot-dir)
(setq werxbot-dir "/Users/Em/Dropbox/WerXBot")

;; Freelance Directory
(defvar werxbot-freelance-dir)
(setq werxbot-freelance-dir "/Users/Em/Dropbox/WerXBot/Freelance")

;; Places Directory
(defvar werxbot-places-dir)
(setq werxbot-places-dir "/Users/Em/Dropbox/WerXBot/Places")

;; Profile Directory
(defvar werxbot-profile-dir)
(setq werxbot-profile-dir "/Users/Em/Dropbox/WerXBot/Profile")


;;; End Code:
(provide 'file-variables)
(message "File Variables Loaded!")
;;; file-variables.el ends here
