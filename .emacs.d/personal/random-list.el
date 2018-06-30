;;; random-list.el
(require 'org)
(require 'org-randomnote)
(require 'org-random-todo)
(add-to-list 'load-path "~/.emacs.d/elpa/alert")
(require 'alert)

;;; Commentary:
;;; This script chooses a random entry in =stay-awake-activities.org= and prints it to the screen


;;; Code:

(defvar stay-awake-file)
(setq stay-awake-file "/Users/Em/Documents/Dropbox/Werx/stay-awake-activities.org")

(setq alert-default-style 'libnotify)


(setq org-random-todo-how-often 1500)
(org-random-todo-mode 1)

(defcustom org-random-todo-files t
  "Which files to use."
  :group 'org-random-todo
  :type '(choice
          (repeat file)
          (file :tag "Store List in a File\n" :value stay-awake-file)))


(setq org-randomnote-candidates '(stay-awake-file))
(setq org-randomnote-open-behavior 'indirect-buffer)





(provide 'random-list)
(message "Random List Loaded!")
;;; random-list.el ends here
