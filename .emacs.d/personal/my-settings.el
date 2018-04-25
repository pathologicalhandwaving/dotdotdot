;;; my-settings.el

;; Keybinds
;; --------------------------------------------------------------------------------------
(global-set-key (kbd "\C-c c") 'org-capture)
(define-key org-mode-map (kbd "<f9> t") 'insert-inactive-timestamp)
(define-key org-mode-map (kbd "<f8> t") 'insert-active-timestamp)
(define-key org-mode-map (kbd "<f9> T") 'toggle-insert-inactive-timestamp)
(define-key org-mode-map (kbd "<f8> T") 'toggle-insert-active-timestamp)

;; Pretty Pretty
;; --------------------------------------------------------------------------------------
;; utf-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))

;; --------------------------------------------------------------------------------------
;; all-the-icons
(require 'all-the-icons)

;; --------------------------------------------------------------------------
;; org-bullets
(require 'org-bullets)
;; enable in all org files
(defface org-bullets-face
  '((((class color) (background dark))
     (:foreground "#51afef" :weight bold ))
    (t (
        :foundry "PfEd"
                 :family "Font Awesome 5 Free"
                 :weight normal
                 :width normal
                 :sland normal
                 :height 1.25
                 )))
  "face font for org-bullets"
  :group 'org-faces)

(setq org-bullets-face-name (quote org-bullets-face))
(setq org-bullets-bullet-list
      (quote ("\uf445" "\uf43a" "\uf43f" "\uf447" "\uf441" "\uf443" "\uf3a5" "\uf004" "\uf186" "\uf005" "\uf185")))

(add-hook 'org-mode-hook 'org-bullets-mode)

;; Text indent to the level of the orgmode heading
;; Use with hide leading stars
(require 'org-indent)
(setq org-startup-indented t)
(diminish 'org-indent-mode)

;; Hide Leading Stars
(setq org-hide-leading-stars nil)

;; Show an empty line between trees if it exists
(setq org-cycle-separator-lines 2)

;; Formatting New Entries
(setq org-blank-before-new-entry '((heading)
                                   (plain-list-item . auto)))

;; Insert headings where I tell you to
(setq org-insert-heading-respect-content nil)

;; Store notes where I need them
(setq org-reverse-note-order nil)

;; When I unhide an entry show nearby as well
(setq org-show-following-heading t)
(setq org-show-hierarchy-above t)
(setq org-show-siblings '((default)))

;; Act on whole folds
;; Don't lose them
(setq org-special-ctrl-a/e t)
(setq org-special-ctrl-k t)
(setq org-yank-adjusted-subtrees t)


;; --------------------------------------------------------------------------


;; --------------------------------------------------------------------------
;; Archiving

;; Don't change state to DONE if a task is archived
(setq org-archive-mark-done nil)
(setq org-archive-location "%s_archive::* Archived Tasks")

;; --------------------------------------------------------------------------
;; Clock
(setq org-clock-in-switch-to-state 'clock-in-to-inprogress)
(defun clock-in-to-inprogress (kw)
  "Switch to a task from NEXT to INPROGRESS when clocking in.
Skips capture tasks, projects, and subprojects.
Switch projects and subprojects from NEXT back to TODO."
  (when (not (and (boundp 'org-capture-mode) org-capture-mode))
    (cond
     ((and (member (org-get-todo-state) (list "NEXT"))
           (is-task-p))
      "INPROGRESS")
     ((and (member (org-get-todo-state) (list "NEXT"))
           (is-project-p))
      "INPROGRESS"))))

;; Helper function to find a project task for a given task
(defun find-project-task ()
  "Move point to the parent project task if any"
  (save-restriction
    (widen)
    (let ((parent-task (save-excursion (org-back-to-heading 'invisible-ok) (point))))
      (while (org-up-heading-safe)
        (when (member (nth 2 (org-heading-components)) org-todo-keywords-1)
          (setq parent-task (point))))
      (goto-char parent-task)
      parent-task)))

;; Clock in to task given an ID
(require 'org-id)
(setq)

;; --------------------------------------------------------------------------
;; ToDo

;; Don't allow close on projects with incomplete tasks
(setq org-enforce-todo-dependencies t)

;; --------------------------------------------------------------------------
;; Agenda


;; --------------------------------------------------------------------------
;; Mail



(provide 'my-settings)
(message "Settings Loaded")
;;; my-settings.el ends here
