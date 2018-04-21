;; journal-settings.el
;; inspired and or shamelessly appropriated from
                                        ;: https://github.com/howardabrams/dot-files/blob/master/emacs-org.org

(require 'org-journal)

;; Find location function
(defun org-journal-find-location ()
  (org-journal-new-entry t)
  (goto-char (point-min)))

;; journal dir
(setq org-journal-dir "/Volumes/JumpShip/CaptainsLog/Diary/")

;; journal-date-format
(setq org-journal-date-format "#+TITLE: %Y-%m-%d (%A)")
;; journal-time-format
(setq org-journal-time-format "%H:%M")

;; Load today and yesterdays entries
(defun get-journal-file-today()
  "Return filename for today's journal entry"
  (let ((daily-name (format-time-string "%Y%m%d")))
    (expand-file-name (concat org-journal-dir daily-name))))

;; Create and load today's file
(defun journal-file-today ()
  (interactive)
  (find-file (get-journal-file-today)))

;; keybind for today
(global-set-key (kbd "C-c jt") 'journal-file-today)

;; rewrite history if you forgot to write it yesterday
(defun get-journal-file-yesterday ()
  "Return filename for yesterday's entry"
  (let* ((yesterday (time-subtract (current-time) (days-to-time 1)))
         (daily-name (format-time-string "%Y%m%d" yesterday)))
    (expand-file-name (concat org-journal-dir daily-name))))

;; Create and load a file for yesterday
(defun journal-file-yesterday ()
  (interactive)
  (find-file (get-journal-file-yesterday)))

;; keybind yesterday's file
(global-set-key (kbd "C-c jy") 'journal-file-yesterday)

;; journal file template
;; insert a specific header
;; insert a date that matches the file's date not necessarily the current date
;; make checklists only if today's entry not yesterday's
;; Special dailies inserted based on day of week
(defun journal-file-insert ()
  "Insert journal heading based on file name"
  (interactive)
  (let* ((year (string-to-number (substring (buffer-name) 0 4)))
         (month (string-to-number (substring (buffer-name) 4 6)))
         (day (string-to-number (substring (buffer-name) 6 8)))
         (datim (encode-time 0 0 0 year month day)))
    (insert (format-time-string org-journal-date-format datim))
    (insert "\n\n $0\n") ;; start with blank separating line
    ;; insert-file-contents leaves the cursor at the beginning
    ;; so we insert the files in reverse order

    ;; if the entry being created matches today's date
    (when (equal (file-name-base (buffer-file-name))
                 (format-time-string "%Y%m%d"))
      (insert-file-contents "journal-dailies-end.org")
      ;; insert dailies that only happen once a week
      (let ((weekday-template (downcase
                               (format-time-string "journal-%a.org"))))
        (when (file-exists-p weekday-template)
          (insert-file-contents weekday-template)))
      (insert-file-contents "journal-dailies.org")
      (insert "$0")
      (let ((contents (buffer-string)))
        (delete-region (point-min) (point-max))
        (yas-expand-snippet contents (point-min) (point-max))))))

(define-auto-insert "/[0-9]\\{8\\}$" [journal-file-insert])

;; You need to make the following files
;; journal-dailies.org - contains the real dailies
;; journal-dailies-end.org - contains follow up notes
;; journal-mon.org additional text to be inserted on Mondays, Tuesdays, etc...

;; Read last years journal at this time
;; 365 days ago this day of the week more or less
(defun journal-last-year-file ()
  "Returns the string corresponding to the journal entry that
happened 'last year' at this same time (meaning on the same day
of the week)."
(let* ((last-year-seconds (- (float-time) (* 365 24 60 60)))
       (last-year (seconds-to-time last-year-seconds))
       (last-year-dow (nth 6 (decode-time last-year)))
       (this-year-dow (nth 6 (decode-time)))
       (difference (if (> this-year-dow last-year-dow)
                       (- this-year-dow last-year-dow)
                     (- last-year-dow this-year-dow)))
       (target-date-seconds (+ last-year-seconds (* difference 24 60 60)))
       (target-date (seconds-to-time target-date-seconds)))
  (format-time-string "%Y%m%d" target-date)))

(defun journal-last-year ()
  "Loads last year's journal entry, which is not necessary the
same day of the month, but will be the same day of the week."
  (interactive)
  (let ((journal-file (concat org-journal-dir (journal-last-year-file))))
    (find-file journal-file)))

  ;;(global-set-key (kbd "C-c f L") 'journal-last-year)


;; Meeting Notes

(defun meeting-notes ()
  "Call this after creating an org-mode heading for where the notes for the meeting
should be. After calling this function, call 'meeting-done' to reset the environment."
  (interactive)
  (outline-mark-subtree)                              ;; Select org-mode section
  (narrow-to-region (region-beginning) (region-end))  ;; Only show that region
  (deactivate-mark)
  (delete-other-windows)                              ;; Get rid of other windows
  (text-scale-set 2)                                  ;; Text is now readable by others
  (fringe-mode 0)
  (message "When finished taking your notes, run meeting-done."))

;;(defun meeting-done ()
;;  "Attempt to 'undo' the effects of taking meeting notes."
;;  (interactive)
;;  (widen)                                       ;; Opposite of narrow-to-region
;;  (text-scale-set 0)                            ;; Reset the font size increase
;;  (fringe-mode 1))




(provide 'journal-settings.el)
(message "journal settings loaded")
;;; journal-settings.el ends here