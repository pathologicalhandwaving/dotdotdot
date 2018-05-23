;;; exile-theme.el

(require 'nxml-mode)
;;; Code:

(require 'doom-themes)
;; City Lights
(load-theme 'doom-city-lights)


;; neotree
(require 'all-the-icons)
(require 'neotree)

(doom-themes-neotree-config)
(setq doom-neotree-file-icons t)
(setq doom-neotree-enable-folder-icons t)
(setq doom-neotree-enable-chevron-icons t)
(setq doom-neotree-enable-type-colors t)
(setq neo-theme 'arrow)
(setq neo-smart-open t)

(setq neo-dir-link-face '(:foreground "#51afef" :slant normal :height 100 :weight regular :family "Fantasque Sans Mono"))
(setq neo-file-link-face '(:foreground "#70E1E8" :slant normal :height 100 :weight bold :family "Fantasque Sans Mono"))
(setq neo-root-dir-face '(:foreground "#c678dd" :slant normal :height 120 :weight bold :family "Fantasque Sans Mono"))

(set-frame-font "Fantasque Sans Mono 12")


(provide 'exile-theme)
(message "Exile Theme Loaded!")
;;; exile-theme.el ends here
