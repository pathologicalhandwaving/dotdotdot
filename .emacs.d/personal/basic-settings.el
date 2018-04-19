;; basic-settings.el
;; Basic OrgMode Settings

;; Org-mode is default mode for .org .org_archive .txt
(add-to-list 'load-path (expand-file-name "~/git/org-mode/lisp"))
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org)

;; Where can I find the org files
;; In the Repos Dirs
(setq org-agenda-files (quote "/Users/Em/Repos"))
;; In the Dropbox dirs
(setq org-agenda-files (quote "/Users/Em/Documents/Dropbox"))
;; In JumpShip
(setq org-agenda-files (quote "/Volumes/JumpShip"))


;; Set state change triggers
(setq org-todo-state-tags-triggers
      (quote (("CANCELED" ("CANCELED" . t))
              ("WAIT" ("WAIT" . t))
              ("PURGATORY" ("WAIT") ("PURGATORY . t"))
              (done ("WAIT") ("PURGATORY"))
              ("TODO" ("WAIT") ("CANCELED") ("PURGATORY"))
              ("NEXT" ("WAIT") ("CANCELED") ("PURGATORY"))
              ("DONE" ("WAIT") ("CANCELED") ("PURGATORY")))))


