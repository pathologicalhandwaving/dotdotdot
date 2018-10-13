;;; mail-settings.el



;;; Code:

(setq user-mail-address "<kms.orgsync@gmail.com>"
      user-full-name "<KMS>")

(setq gnus-select-method
      '(nnimap "gmail"
	       (nnimap-address "imap.gmail.com")  
	       (nnimap-server-port "imaps")
	       (nnimap-stream ssl)))

(setq smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")

(add-to-list 'gnus-secondary-select-methods '(nnimap "gmail"
                                  (nnimap-address "imap.gmail.com")  
                                  (nnimap-server-port "imaps")
                                  (nnimap-stream ssl)
                                  (nnmail-expiry-target "nnimap+gmail:[Gmail]/Trash")  
                                  (nnmail-expiry-wait immediate))) 

(setq smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")


(provide 'mail-settings)
(message "Mail Settings Loaded!")
;;; mail-settings.el ends here