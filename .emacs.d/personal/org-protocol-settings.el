;;; org-protocol-settings.el
(add-to-list 'load-path "/Users/Em/.emacs.d")
(require 'org-protocol)
(require 'edit-server)

(server-force-delete)
(edit-server-start)


(provide 'org-protocol-settings)
(message "Org-Protocol Settings Loaded!")
;;; org-protocol-settings.el ends here.
