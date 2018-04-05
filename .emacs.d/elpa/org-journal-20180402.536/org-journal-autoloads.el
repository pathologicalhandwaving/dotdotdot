;;; org-journal-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-journal" "org-journal.el" (0 0 0 0))
;;; Generated autoloads from org-journal.el

(autoload 'org-journal-update-auto-mode-alist "org-journal" "\
Update auto-mode-alist to open journal files in\n  org-journal-mode\n\n(fn)" nil nil)

(add-hook 'org-mode-hook 'org-journal-update-auto-mode-alist)

(autoload 'org-journal-format-string->regex "org-journal" "\
Update org-journal-file-pattern with the current\n  org-journal-file-format\n\n(fn FORMAT-STRING)" nil nil)

(add-hook 'calendar-today-visible-hook 'org-journal-mark-entries)

(add-hook 'calendar-today-invisible-hook 'org-journal-mark-entries)

(autoload 'org-journal-mode "org-journal" "\
Mode for writing or viewing entries written in the journal\n\n(fn)" t nil)

(eval-after-load "calendar" '(progn (define-key calendar-mode-map "j" 'org-journal-read-entry) (define-key calendar-mode-map (kbd "C-j") 'org-journal-display-entry) (define-key calendar-mode-map "]" 'org-journal-next-entry) (define-key calendar-mode-map "[" 'org-journal-previous-entry) (define-key calendar-mode-map (kbd "i j") 'org-journal-new-date-entry) (define-key calendar-mode-map (kbd "f f") 'org-journal-search-forever) (define-key calendar-mode-map (kbd "f F") 'org-journal-search-future) (define-key calendar-mode-map (kbd "f w") 'org-journal-search-calendar-week) (define-key calendar-mode-map (kbd "f m") 'org-journal-search-calendar-month) (define-key calendar-mode-map (kbd "f y") 'org-journal-search-calendar-year)))

(global-set-key (kbd "C-c C-j") 'org-journal-new-entry)

(autoload 'org-journal-new-entry "org-journal" "\
Open today's journal file and start a new entry.\nGiving the command a PREFIX arg will just open a today's file,\nwithout adding an entry. If given a TIME, create an entry for the\ntime's day.\n\nWhenever a journal entry is created the\n`org-journal-after-entry-create-hook' hook is run\n\n(fn PREFIX &optional TIME)" t nil)

(autoload 'org-journal-new-date-entry "org-journal" "\
Open the journal for the date indicated by point and start a new entry.\nIf the date is not today, it won't be given a time heading. If a\nprefix is given, don't add a new heading.\nIf the date is in the future, create a schedule entry.\n\n(fn PREFIX &optional EVENT)" t nil)

(autoload 'org-journal-new-scheduled-entry "org-journal" "\
Create a new SCHEDULED TODO entry in the future.\n\n(fn PREFIX &optional SCHEDULED-TIME)" t nil)

(autoload 'org-journal-list-dates "org-journal" "\
Loads the list of files in the journal directory, and converts\n  it into a list of calendar DATE elements\n\n(fn)" nil nil)

(autoload 'org-journal-mark-entries "org-journal" "\
Mark days in the calendar for which a diary entry is present\n\n(fn)" nil nil)

(autoload 'org-journal-read-entry "org-journal" "\
Open journal entry for selected date for viewing\n\n(fn ARG &optional EVENT)" t nil)

(autoload 'org-journal-display-entry "org-journal" "\
Display journal entry for selected date in another\n  window (without switсhing to it)\n\n(fn ARG &optional EVENT)" t nil)

(autoload 'org-journal-read-or-display-entry "org-journal" "\
Read an entry for the TIME and either select the new\n  window (NOSELECT is nil) or avoid switching (NOSELECT is\n  non-nil.\n\n(fn TIME &optional NOSELECT)" nil nil)

(autoload 'org-journal-next-entry "org-journal" "\
Go to the next date with a journal entry\n\n(fn)" t nil)

(autoload 'org-journal-previous-entry "org-journal" "\
Go to the previous date with a journal entry\n\n(fn)" t nil)

(autoload 'org-journal-search "org-journal" "\
Search for a string in the journal within a given interval.\nSee `org-read-date` for information on ways to specify dates.\nIf a prefix argument is given, search all dates.\n\n(fn STR &optional PERIOD-NAME)" t nil)

(add-hook 'org-journal-mode-hook (lambda nil (org-add-hook org-journal-encrypt-on 'org-journal-encryption-hook nil t)))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-journal" '("org-journal-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-journal-autoloads.el ends here
