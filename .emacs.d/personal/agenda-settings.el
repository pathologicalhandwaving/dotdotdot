;;; agenda-settings.el
(require 'org)
(require 'org-agenda)
(require 'org-super-agenda)
(require 'org-fancy-priorities)
(require 'org-journal)
(require 'org-review)
(require 'bog)


;;; org-agenda-files:
(setq org-agenda-files '("~/Documents/Dropbox/Exile/tasks.org"
                         "~/Documents/Dropbox/Exile/appointments.org"
                         "~/Documents/Dropbox/Exile/habits.org"
                         "~/Documents/Dropbox/Exile/accounts.org"
                         "~/Documents/Dropbox/Monopoly/bills-list.org"
                         "~/Documents/Dropbox/Library-Annex/readlater.org"
                         "~/Documents/Dropbox/AudioBot/audiobot-index.org"
                         "~/Documents/Dropbox/Monopoly/budget.org"
                         "~/Documents/Dropbox/Werx/holidayinn-issues.org"
                         "~/Documents/Dropbox/Werx/holidayinn-notes.org"
                         "~/Documents/Dropbox/LessonsLearned/lessonslearned-default.org"))


;; If file name is only numbers it is an org-mode file
;;(add-to-list 'auto-mode-alist '(".*/[0-9]*$" . org-mode))


;;; Code:


;; Time Grid
(setq org-agenda-time-grid '((daily today require-timed)
                             ""
                             (0100 0300 0500 0700 0900 1100 1300 1500 1700 1900 2100 2300)))


;;; Custom Views:
(setq org-agenda-custom-commands
      '(("s" "Simple Agenda View"
         ((tags "PRIORITY=\"A\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "High-priority Unfinished Tasks:")))
          (agenda "")
          (alltodo ""
                   ((org-agenda-skip-function
                     '(or (exile-org-skip-subtree-if-priority ?A)
                          (org-agenda-skip-if nil '(scheduled deadline))))
                    (org-agenda-overriding-header "ALL Normal Priority Tasks:"))))
         ((org-agenda-compact-blocks t)))
        ("R" "Review Projects" tags-todo "-CANCELLED/"
         ((org-agenda-overriding-header "Reviews Scheduled")
          (org-agenda-skip-function 'org-review-agenda-skip)
          (org-agenda-cmp-user-defined 'org-review-compare)
          (org-agenda-sorting-strategy '(user-defined-down))))))
(add-hook 'org-agenda-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-r") 'org-review-insert-last-review)))





;;; Filtering:

;; Eventually Filtering

(defun exile-org-skip-subtree-if-priority (priority)
  "Skip an agenda subtree if it has a priority of PRIORITY."
  (let ((subtree-end (save-excursion (org-end-of-subtree t)))
        (pri-value (* 1000 (- org-lowest-priority priority)))
        (pri-current (org-get-priority (thing-at-point 'line t))))
    (if (= pri-value pri-current)
        subtree-end
      nil)))


;; Habit Filtering
(defun exile-org-skip-subtree-if-habit ()
  "Skip an agenda entry if it has a STYLE property equal to \"habit\"."
  (let ((subtree-end (save-excursion (org-end-of-subtree t))))
    (if (string= (org-entry-get nil "STYLE") "habit")
        subtree-end
      nil)))


;;; Priority:

(setq org-highest-priority ?A)
(setq org-default-priority ?C)
(setq org-lowest-priority ?F)

(org-fancy-priorities-mode +1)

(setq org-fancy-priorities-list '((?A . "《A》")
                                  (?B . "《B》")
                                  (?C . "《C》")
                                  (?D . "《D》")
                                  (?E . "《E》")
                                  (?F . "《F》")))

(setq org-priority-faces '((?A :foreground "red" (:background dark))
                           (?B :foreground "DarkOrange1" (:background dark))
                           (?C :foreground "yellow1" (:background dark))
                           (?D :foreground "green" (:background dark))
                           (?E :foreground "cyan2" (:background dark))
                           (?F :foreground "BlueViolet" (:background dark))))


;; Keep tasks with dates on the global todo lists
(setq org-agenda-todo-ignore-with-date nil)

;; Keep tasks with deadlines on the global todo lists
(setq org-agenda-todo-ignore-deadlines nil)

;; Keep tasks with scheduled dates on the global todo lists
(setq org-agenda-todo-ignore-scheduled nil)

;; Keep tasks with timestamps on the global todo lists
(setq org-agenda-todo-ignore-timestamp nil)

;; Remove completed deadline tasks from the agenda view
(setq org-agenda-skip-deadline-if-done t)

;; Remove completed scheduled tasks from the agenda view
(setq org-agenda-skip-scheduled-if-done t)

;; Remove completed items from search results
(setq org-agenda-skip-timestamp-if-done t)

;; INC Deadline
(set-face-attribute 'org-upcoming-deadline nil :foreground "OrangeRed")


;;; Diary:

(setq org-agenda-include-diary t)

(setq org-agenda-diary-file "/Users/Em/Dropbox/AgendaBot/diary.org")

(setq org-agenda-insert-diary-extract-time t)

;;; Journal:

;; Insert File
(defun journal-file-insert ()
  "Insert's the journal heading based on the file's name."
  (interactive)
  (when (string-match "\\(20[0-9][0-9]\\)\\([0-9][0-9]\\)\\([0-9][0-9]\\)"
                      (buffer-name))
    (let ((year  (string-to-number (match-string 1 (buffer-name))))
          (month (string-to-number (match-string 2 (buffer-name))))
          (day   (string-to-number (match-string 3 (buffer-name))))
          (datim nil))
      (setq datim (encode-time 0 0 0 day month year))
      (insert (format-time-string
               "#+TITLE: Captain's Log - %Y-%m-%d (%A)\n\n" datim)))))

(add-hook 'find-file-hook 'auto-insert)



;; Get today's journal file
(defun get-journal-file-today ()
  "Return filename for today's journal entry."
  (let ((daily-name (format-time-string "%Y%m%d")))
    (expand-file-name (concat org-journal-dir daily-name))))


;; Today's Journal
(defun journal-file-today ()
  "Create and load a journal file based on today's date."
  (interactive)
  (find-file (get-journal-file-today)))

(global-set-key (kbd "C-c f j") 'journal-file-today)


;; Get Yesterday's File
(defun get-journal-file-yesterday ()
  "Gets filename for yesterday's journal entry."
  (let* ((yesterday (time-subtract (current-time) (days-to-time 1)))
         (daily-name (format-time-string "%Y%m%d" yesterday)))
    (expand-file-name (concat org-journal-dir daily-name))))

;; Make Previous Day
(defun journal-file-yesterday ()
  "Creates and load a file based on yesterday's date."
  (interactive)
  (find-file (get-journal-file-yesterday)))



;; org-journal options
(setq org-journal-date-format "%Y-%m-%d (%A)")

(setq org-journal-dir "/Users/Em/Documents/Dropbox/Diary/JournalEntries/")
(setq org-journal-enable-encryption nil)
(setq org-journal-file-format "%Y%m%d.org")
(setq org-journal-time-format "%H:%M")
(setq org-journal-time-prefix nil)
(setq org-journal-carryover-items "-TODO=\"DONE\"")
(setq org-journal-enable-agenda-integration t)




;; Capture Helper
(defun org-journal-find-location ()
  ;; Open today's journal, but specify a non-nil prefix argument in order to
  ;; inhibit inserting the heading; org-capture will insert the heading.
  (org-journal-new-entry t)
  ;; Position point on the journal's top-level heading so that org-capture
  ;; will add the new entry as a child entry.
  (goto-char (point-min)))



;;; Bog Settings
(defvar bog-notes-dir)
(defvar bog-bib-dir)
(defvar bog-file-dir)
(defvar bog-stage-dir)

(setq bog-notes-dir "/Users/Em/Documents/Dropbox/Diary/Bog/")
(setq bog-bib-dir "/Users/Em/Documents/MEGA/MEGAsync/Library-Archive/Bibliography/")
(setq bog-file-dir "/Volumes/JumpShip/Lab/Bog/")
(setq bog-stage-dir "/Volumes/JumpShip/Lab/Bog/stage/")

(setq bibtex-autokey-year-length 4
      bibtex-autokey-titleword-length 'infty
      bibtex-autokey-titlewords-stretch 0
      bibtex-autokey-titlewords 0
      bibtex-autokey-year-title-separator "")




;;; Code Ending:
(provide 'agenda-settings)
(message "Agenda Settings Loaded!")
;;; agenda-settings.el ends here
