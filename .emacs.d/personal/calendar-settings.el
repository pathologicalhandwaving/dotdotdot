;;; calendar-settings.el

(require 'org)
(require 'calfw)
(require 'calfw-ical)
(require 'calfw-org)
(require 'calfw-cal)
(require 'org-gcal)

(add-to-list 'org-modules 'org-mac-iCal)

;;; Code:
(setq org-gcal-client-id "927743856-p5g8e2h3o01pepqn0njhc5rnktvpr945.apps.googleusercontent.com"
      org-gcal-client-secret "i_jv-qWpRDjRXpKn1QJ5CsZI"
      org-gcal-file-alist '(("kms.werx@gmail.com" . "/Volumes/JumpShip/Inbox/Clouds/Dropbox/Werx/schedule.org")))


(setq cfw:org-agenda-schedule-args '(:timestamp))


(setq org-agenda-custom-commands
      '(( "I" "Import Diary from iCal" agenda ""
          ((org-agenda-mode-hook
            (lambda ()
              (org-mac-iCal)))))))

(add-hook 'org-agenda-cleanup-fancy-diary-hook
          (lambda ()
            (goto-char (point-min))
            (save-excursion
              (while (re-search-forward "^[a-z]" nil t)
                (goto-char (match-beginning 0))
                (insert "0:00-24:00 ")))
            (while (re-search-forward "^ [a-z]" nil t)
              (goto-char (match-beginning 0))
              (save-excursion
                (re-search-backward "^[0-9]+:[0-9]+-[0-9]+:[0-9]+ " nil t))
              (insert (match-string 0)))))

;; Status-bar App
(add-hook 'org-clock-in-hook (lambda () (call-process "/usr/bin/osascript" nil 0 nil "-e" (concat "tell application \"org-clock-statusbar\" to clock in \"" (replace-regexp-in-string "\"" "\\\\\"" org-clock-current-task) "\""))))
(add-hook 'org-clock-out-hook (lambda () (call-process "/usr/bin/osascript" nil 0 nil "-e" "tell application \"org-clock-statusbar\" to clock out")))



(provide 'calendar-settings)
(message "Calendar Settings Loaded!")
;;; calendar-settings.el ends here
