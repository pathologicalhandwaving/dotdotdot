;;; notes-settings.el
(require 'headlong)
(require 'helm-frame)

;;; Code:

(defvar notesbot-default)
(setq notesbot-default "/Users/Em/Dropbox/NotesBot/default-notes.org")

;;; Keybind Notes
(global-set-key (kbd "<f9> h")
                (lambda () (interactive)
                  (find-file "/Users/Em/Dropbox/NotesBot/default-notes.org")))




;;; End Code
(provide 'notes-settings)
(message "Notes Settings Loaded!")
;;; notes-settings.el ends here
