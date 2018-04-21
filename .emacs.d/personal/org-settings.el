;;; org-settings.el

;; Archives see: modules prelude-org
;; Common global keybindings are in prelude-org
;; Custom global and local keybindings are here

;; Ship Register
;; -----------------------------------------------------------------------------
(set register ?s (cons 'file "/Volumes/JumpShip/ship.org"))


;; Main Files
;; -----------------------------------------------------------------------------

;; REFILE: default notes file
(defvar org-default-notes-file "/Volumes/JumpShip/Inbox/refile.org")
(global-set-key (kbd "\C-c r") (lambda () (interactive) (find-file 'org-default-notes-file)))

;; REFILE: Beorg default notes file
(defvar beorg-default-notes-file "/Documents/Dropbox/ToGo/togo.org")
(global-set-key (kbd "\C-c be") (lambda () (interactive) (find-file 'beorg-default-notes-file)))
(defvar beorg-default-directory "/Documents/Dropbox/ToGo/")

;; REFILE: SelfSpy default notes file
(defvar selfspy-default-notes-file "/Volumes/JumpShip/SelfSpy/selfspy.org")
(global-set-key (kbd "\C-c ss") (lambda () (interactive) (find-file 'selfspy-default-notes-file)))
(defvar selfspy-default-directory "/Volumes/JumpShip/SelfSpy/")

;; REFILE: Tutoring default notes file
(defvar tutor-default-notes-file "/Volumes/JumpShip/Work/Tutoring/tutor.org")
(global-set-key (kbd "\C-c tu") (lambda () (interactive) (find-file 'tutor-default-notes-file)))

;; tutor log file
(defvar tutor-log-file "Volumes/Jumpship/Tutoring/Logs/timelogs.org")
(global-set-key (kbd "\C-c tl") (lambda () (interactive) (find-file 'tutor-log-file)))

;; student directory
(defvar tutor-default-directory "/Volumes/JumpShip/Work/Tutoring/")
(defvar tutor-students-default-directory "/Volumes/Jumpship/Work/Tutoring/Students/")

;; -----------------------------------------------------------------------------

;; Refile Targets
;; -----------------------------------------------------------------------------
(setq org-refile-targets '((org-agenda-files . (:maxlevel . 9))))
;; Org-Agenda files are set in org-agenda-settings personal file



;; org-bullets
(require 'org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)
(font-lock-add-keywords 'org-mode
                        '(("^ +\\([-*]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))


;; End sentences with two spaces
(defun insert-two-spaces (N)
  (interactive "p")
  (when (looking-back "[!?.] " 2)
    (insert " ")))

(advice-add 'org-self-insert-command :after #'insert-two-spaces)


;; Babel
;; Language Modes
(add-to-list 'org-src-lang-modes '("dot" . "graphviz-dot"))

(org-babel-do-load-languages 'org-babel-load-languages
                             '((shell      . t)
                               (js         . t)
                               (emacs-lisp . t)
                               (perl       . t)
                               (scala      . t)
                               (clojure    . t)
                               (python     . t)
                               (ruby       . t)
                               (dot        . t)
                               (css        . t)
                               (plantuml   . t)))

;; Fucking evaluate it and stop pestering me already
(setq org-confirm-babel-evaluate nil)

;; Fontify Code Blocks
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)


(provide 'org-settings)
(message "org-settings loaded")
;;; org-settings.el ends here
