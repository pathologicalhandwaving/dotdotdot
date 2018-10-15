;;; exile-theme.el
(require 'doom-themes)
(require 'org-bullets)
(require 'all-the-icons)
(require 'neotree)
(require 'nxml-mode)
;;; Code:


;; City Lights
;;(load-theme 'doom-city-lights)

;;(defvar exile-dark-theme 'doom-city-lights)
(defvar exile-light-theme 'solarized-light)
(defvar exile-dark-theme 'doom-challenger-deep)

;; Currently Active Theme
(defvar exile-current-theme exile-dark-theme)

;; Challenger Deep Settings
;;(doom-challenger-deep-brighter-modeline t)
;;(doom-challenger-deep-brighter-comments t)


;; neotree

(doom-themes-neotree-config)
(setq doom-neotree-file-icons t)
(setq doom-neotree-enable-folder-icons t)
(setq doom-neotree-enable-chevron-icons t)
(setq doom-neotree-enable-type-colors t)
(setq neo-theme 'arrow)
(setq neo-smart-open t)

(setq neo-dir-link-face '(:foreground "#c991e1" :slant normal :height 100 :weight regular :family "Fantasque Sans Mono"))
(setq neo-file-link-face '(:foreground "#906cff" :slant normal :height 100 :weight bold :family "Fantasque Sans Mono"))
(setq neo-root-dir-face '(:foreground "#62d196" :slant normal :height 110 :weight bold :family "Fantasque Sans Mono"))

(set-frame-font "Fantasque Sans Mono 12")


(provide 'exile-theme)
(message "Exile Theme Loaded!")
;;; exile-theme.el ends here
