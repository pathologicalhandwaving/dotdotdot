;;; emms-settings.el

(require 'emms)
(require 'emms-info-mediainfo)
(require 'helm-emms)
(require 'helm-spotify-plus)

(emms-all)
(emms-default-players)

;; After loaded
                                        ;(require 'emms-info-mediainfo)
                                        ;(add-to-list 'emms-info-functions 'emms-info-mediainfo)
(require 'emms-info-metaflac)
(add-to-list 'emms-info-functions 'emms-info-metaflac)

(require 'emms-player-simple)
(require 'emms-source-file)
(require 'emms-source-playlist)
(setq emms-source-file-default-directory "~/Music/")

;; Spotify
(global-set-key (kbd "\C-c ss") 'helm-spotify-plus)

(global-set-key (kbd "\C-c se") 'helm-emms)



(provide 'emms-settings)
(message "EMMS Settings Loaded!")
;;; emms-settings.el ends here
