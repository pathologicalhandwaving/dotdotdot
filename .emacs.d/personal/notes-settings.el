;;; notes-settings.el
(require 'headlong)

;;; See Also: org-notes-list.el

;;; Code:


;;; Keybind Notes
(global-set-key (kbd "C-c C-n d")
                (lambda () (interactive)
                  (find-file "/Users/Em/Dropbox/NotesBot/default-notes.org")))

(defconst em-notes-template-file "~/Dropbox/NotesBot/note-template.org")

;; Date as File Name
(defun em/date-as-file-name ()
  "Create org file with current datetime as name."
  (find-file (format-time-string "~/Dropbox/NotesBot/%Y%m%d-%H%M.org")))

;;; End Code
(provide 'notes-settings)
(message "Notes Settings Loaded!")
;;; notes-settings.el ends here
