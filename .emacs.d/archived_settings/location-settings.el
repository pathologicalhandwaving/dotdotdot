;;; location-settings.el

(require 'osx-location)

;;; Code:

(eval-after-load 'osx-location
  '(when (eq system-type 'darwin)
     (add-hook 'osx-location-changed-hook
               (lambda ()
                 (setq calendar-latitude osx-location-latitude
                       calendar-longitude osx-location-longitude
                       calendar-location-name (format "%s, %s" osx-location-latitude osx-location-longitude))))))


(provide 'location-settings)
(message "Location Settings Loaded!")
;;; location-settings.el ends here
