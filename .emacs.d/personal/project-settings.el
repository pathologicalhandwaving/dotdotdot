;;; project-settings.el

(require 'projectile)
(require 'org-projectile)

(setq projectile-indexing-method 'native)
(setq projectile-enable-idle-timer t)
(setq projectile-require-project-root nil)




;; Overview Project Files
(defvar lab-projects-file)
(setq lab-projects-file "~/Dropbox/LabBot/projects-overview.org")
(defvar lab-tasks-file)
(setq lab-tasks-file "~/Dropbox/LabBot/lab-tasks.org")

(global-set-key (kbd "C-c n p") 'org-projectile-project-todo-completing-read)

;;; Code:

(setq org-projectile-projects-file "~/Dropbox/LabBot/lab-tasks.org")
(setq org-agenda-files (append org-agenda-files (org-projectile-todo-files)))

(provide 'project-settings)
(message "Project Settings Loaded!")
;;; project-settings.el ends here
