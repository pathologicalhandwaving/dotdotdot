;;; exile-capture-templates.el
(require 'org)
(require 'org-capture)

(defvar exile-notes-file)
(setq exile-notes-file "/Volumes/JumpShip/Clouds/Dropbox/Exile/notes.org")

(defvar exile-appointments-file)
(setq exile-appointments-file "/Volumes/JumpShip/Clouds/Dropbox/Exile/appointments.org")

(defvar exile-ideas-file)
(setq exile-ideas-file "/Volumes/JumpShip/CaptainsLog/ideas.org")

(defvar exile-readlater-file)
(setq exile-readlater-file "/Volumes/JumpShip/Clouds/Dropbox/Library-Annex/readlater.org")

(defvar exile-fact-file)
(setq exile-fact-file "/Volumes/JumpShip/Clouds/Dropbox/Library-Annex/useful-facts.org")

(defvar exile-quotes-file)
(setq exile-quotes-file "/Volumes/JumpShip/Clouds/Dropbox/Library-Annex/quotes.org")

(defvar exile-questions-file)
(setq exile-questions-file "/Volumes/JumpShip/Clouds/Dropbox/Exile/questions.org")

(defvar werx-notes-file)
(setq werx-notes-file "/Volumes/JumpShip/Clouds/Dropbox/Werx/holidayinn-notes.org")

(defvar werx-personal-file)
(setq werx-personal-file "/Volumes/JumpShip/Clouds/Dropbox/Werx/holidayinn-personal.org")

(defvar werx-tasks-file)
(setq werx-tasks-file "/Volumes/JumpShip/Clouds/Dropbox/Werx/holidayinn-workflowy.org")

(defvar exile-tasks-file)
(setq exile-tasks-file "/Volumes/JumpShip/Clouds/Dropbox/Exile/tasks.org")



;; Initialize org-capture-templates list
(setq org-capture-templates '(("t" "Task"
                               entry
                               (file+headline exile-tasks-file "Tasks")
                               "* TODO %?\n  DATE_ADDED: %U\n"
                               :empty-lines 1)
                              ("n" "Note"
                               entry
                               (file+headline exile-notes-file "Notes")
                               "** NOTE %?\n"
                               :empty-lines 1)
                              ("a" "Appointment"
                               entry
                               (file+datetree exile-appointments-file)
                               "**** APPOINTMENT %?\n     :APPOINTMENT:\n     :APPT_TIME: %^{Appointment Time}\n     :APPT_DATE: %^{Appointment Date}\n     :LOC_NAME: %^{Place Name}\n     :CONTACT: %^{Contact}\n     :DURATION: %^{Length of Appointment}\n     :APPT_TYPE: %^{Type of Appointment}\n     :END:"
                               :empty-lines 1)
                              ("i" "Idea"
                               entry
                               (file+headline exile-ideas-file "Ideas")
                               "** IDEA %?\n   - Current File: %A"
                               :empty-lines 1)
                              ("r" "ReadLater"
                               entry
                               (file+headline exile-readlater-file "Read Later")
                               "** READLATER %?\n   :PROPERTIES:\n   :TITLE:%^{Title}\n   :AUTHOR: %^{Author}\n   :DATE_ACCESSED: %U\n   :URL: [[]]\n   :END:\n "
                               :empty-lines 1)
                              ("f" "Fact"
                               entry
                               (file+headline exile-fact-file "Useful Facts")
                               "** FACT %?\n   :PROPERTIES:\n   :SUBJECT: %{Subject}\n   :URL: [[%^{Link}]]\n   :END:\n"
                               :empty-lines 1)
                              ("q" "Question"
                               entry
                               (file+headline exile-questions-file "UnSorted")
                               "*** QUESTION %?\n    :PROPERTIES:\n    :SUBJECT: %^{Subject}\n    :DATE_ADDED: %T\n    :QUESTION_STATUS: %^{Open | Closed}\n    :END:\n")
                              ("u" "Quote"
                               entry
                               (file+headline exile-quotes-file "Quotations")
                               "** %^{Author}\n   :PROPERTIES:\n   :AUTHOR: %^{Author}\n   :ATTRIBUTION: %^{Attribution}\n   :URL: [[%^{Link}]]\n   :DATE_ADDED: %T\n   :END:\n\n   #+CAPTION: %^{Caption}\n   #+BEGIN_QUOTE\n     %^{Quote}\n   #+END_QUOTE\n"
                               :empty-lines 1)
                              ("w" "Werx Note"
                               entry
                               (file+headline werx-notes-file "Notes")
                               "** NOTE %?\n   :PROPERTIES:\n   :DATE_ADDED: %T\n   :END:\n"
                               :empty-lines 1)
                              ("wt" "Werx Task"
                               entry
                               (file+headline werx-tasks-file "Tasks")
                               "** TODO %?\n   :PROPERTIES:\n   :DATE_ADDED: %T\n   :REPEAT: %^{True|False}\n   :END:\n"
                               :empty-lines 1)
                              ("b" "Book Memo"
                               entry
                               (file "/Volumes/JumpShip/Library/book-memos.org")
                               "* %(helm-books)"
                               :empty-lines 1)))



(provide 'exile-capture-templates)
;;; exile-capture-templates.el ends here
