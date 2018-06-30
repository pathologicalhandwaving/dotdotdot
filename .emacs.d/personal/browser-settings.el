;;; browser-settings.el
(require 'org-web-tools)




;;; Code:

(global-set-key (kbd "\C-c rw") 'org-web-tools--url-as-readable-org)

(provide 'browser-settings)
(message "Browser Settings Loaded!")
