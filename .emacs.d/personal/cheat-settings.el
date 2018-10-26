;;; cheat-settings.el
(require 'cheatsheet)

;;; Code:

(global-set-key (kbd "C-c C-s") 'cheatsheet-show)


(cheatsheet-add-group 'Cheatsheet
                      '(:key "C-q" :description "close cheat buffer")
                      '(:key "C-c C-s" :description "show cheatsheet"))

(cheatsheet-add-group 'CopyPaste
                      '(:key "M-w" :description "copy")
                      '(:key "C-y" :description "paste")
                      '(:key "C-w" :description "cut")
                      '(:key "M-del" :description "delete previous word")
                      '(:key "M-d" :description "delete next word")
                      '(:key "C-x h" :description "select whole buffer")
                      '(:key "C-SPX" :description "begin selection")
                      '(:key "C-G" :description "cancel selection")
                      '(:key "C-M-\" :description "indent))

(cheatsheet-add-group 'Movements
                      '(:key "C-a" :description "go to start of line")
                      '(:key "C-e" :description "go to end of line")
                      '(:key "M-<" :description "go to top of buffer")
                      '(:key "M->" :description "go to end of buffer")
                      '(:key "M-f" :description "move forward one word")
                      '(:key "M-b" :description "move backward one word")
                      '(:key "Mg-g <line-number>" :description "go to line number"))

(cheatsheet-add-group 'Restricted
                      '(:key "C-x n n" :description "narrow to selected text")
                      '(:key "C-x n w" :description "widen"))

(cheatsheet-add-group 'Windows
                      '(:key "C-x 1" :description "kill all other windows but this one")
                      '(:key "C-x 2" :description "split horizontally")
                      '(:key "C-x 3" :description "split vertically")
                      '(:key "C-x o" :description "switch window"))

(cheatsheet-add-group 'Bookmarks
                      '(:key "C-x r m" :description "Add bookmark to current buffer")
                      '(:key "C-x r b" :description "Open a bookmark")
                      '(:key "C-x r l" :description "List bookmarks"))

(cheatsheet-add-group 'Common
                      '(:key "C-x C-f" :description "find file")
                      '(:key "C-x k" :description "kill buffer")
                      '(:key "C-x i" :description "insert file")
                      '(:key "C-x b" :description "switch to buffer")
                      '(:key "C-x [right]" :description "next buffer")
                      '(:key "C-x [left]" :description "previous buffer"))

(cheatsheet-add-group 'OrgMode
                      '(:key "C-c c" :description "capture")
                      '(:key "C-c C-w" :description "refile")
                      '(:key "C-c C-x C-a" :description "archive"))

(cheatsheet-add-group 'Notes
                      '(:key "C-c C-n d" :description "open default notes file")
                      '(:key "C-c C-n l" :description "show notes list"))


(provide 'cheat-settings)
(message "Cheatsheet Loaded!")
;;; cheat-settings.el ends here
