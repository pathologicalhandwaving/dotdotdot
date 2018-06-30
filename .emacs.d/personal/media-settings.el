;;; media-settings.el

;;; Commentary:
;; Settings for Media Player, Spotify, VoiceMemos, mp4, wav, mp3, etc.


(add-to-list 'load-path "~/.emacs.d/elpa/helm-spotify-plus")
(require 'helm-spotify-plus)

(add-to-list 'load-path "~/.emacs.d/elpa/audio-notes-mode")
(require 'audio-notes-mode)


;;; Code:

;;; Keybinds:

;; Search
(global-set-key (kbd "C-c s s") 'helm-spotify-plus)

;; Next
(global-set-key (kbd "C-c s f") 'helm-spotify-plus-next)

;; Back
(global-set-key (kbd "C-c s b") 'helm-spotify-plus-previous)

;; Play
(global-set-key (kbd "C-c s p") 'helm-spotify-plus-play)

;; Pause
(global-set-key (kbd "C-c s u") 'helm-spotify-plus-pause)

(global-set-key (kbd "C-c s a") 'audio-notes-mode)

;;; VoiceMemos

(setq anm/notes-directory "~/Documents/Dropbox/VoiceMemos/")
(setq anm/goto-file "~/Documents/Dropbox/Transcribed/transcribed-voicememos.org")





(provide 'media-settings)
(message "Media Settings Loaded!")
;;; media-settings.el ends here
