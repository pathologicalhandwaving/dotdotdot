;;; symbol-settings.el
(require 'org)


;;; Code:

(global-prettify-symbols-mode)

(setq org-pretty-entities t)
(setq org-pretty-entities-include-sub-superscripts t)

(provide 'symbol-settings)
(message "Symbol Settings Loaded!")
;;; symbol-settings.el ends here
