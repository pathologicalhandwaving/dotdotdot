;;; my-dashboard.el

(require 'dashboard)
(dashboard-setup-startup-hook)

;; Title
(setq dashboard-banner-logo-title "CyberWar4Eva!")

;; startup banner
(setq dashboard-startup-banner "/Volumes/JumpShip/Attachments/Logos/CyberSquirrel1-250.png")

;; Add agenda items to dashboard
(add-to-list 'dashboard-items '(agenda) t)

;; widgets
(setq dashboard-items '((agenda . 3)
                        (bookmarks . 5)
                        (recents . 5)))

(provide 'my-dashboard)
(message "Dashboard Loaded")
;;; my-dashboard.el ends here
