;;; brain-settings.el

(require 'org-brain)
(require 'all-the-icons)
(require 'ascii-art-to-unicode)
(require 'org-cliplink)
(require 'org-board)
(require 'helm-org-rifle)

;;; Code:

(setq org-brain-path "/Volumes/JumpShip/Brain")

(setq org-id-track-globally t)
(setq org-id-locations-file "/Users/Em/.emacs.d/.org-id-locations")


(setq org-brain-visualize-default-choices 'all)
(setq org-brain-title-max-length 13)



;; cliplink
(defun org-brain-cliplink-resource ()
  "Add a URL from the clipboard as an org-brain resource.
Suggest the URL title as a description for resource."
  (interactive)
  (let ((url (org-cliplink-clipboard-content)))
    (org-brain-add-resource
     url
     (org-cliplink-retrieve-title-synchronously url)
     t)))

(define-key org-brain-visualize-mode-map (kbd "L") #'org-brain-cliplink-resource)

(add-hook 'org-brain-visualize-text-hook #'enable-latex-preview)


;; Ascii-art-to-unicode
(defun aa2u-buffer ()
  (aa2u (point-min) (point-max)))

(add-hook 'org-brain-after-visualize-hook #'aa2u-buffer)


(defun helm-org-rifle-brain ()
  "Rifle files in `org-brain-path'."
  (interactive)
  (helm-org-rifle-directories (list org-brain-path)))


;; All the Icons
(defun org-brain-insert-resource-icon (link)
  "Insert an icon, based on content of org-mode LINK."
  (insert (format "%s "
                  (cond ((string-prefix-p "https" link)
                         (cond ((string-match "wikipedia\\.org" link)
                                (all-the-icons-faicon "wikipedia-w"))
                               ((string-match "github\\.com" link)
                                (all-the-icons-octicon "mark-github"))
                               ((string-match "vimeo\\.com" link)
                                (all-the-icons-faicon "vimeo"))
                               ((string-match "youtube\\.com" link)
                                (all-the-icons-faicon "youtube"))
                               (t
                                (all-the-icons-faicon "globe"))))
                        ((string-prefix-p "brain:" link)
                         (all-the-icons-fileicon "brain"))
                        (t
                         (all-the-icons-icon-for-file link))))))

(add-hook 'org-brain-after-resource-button-functions #'org-brain-insert-resource-icon)

(provide 'brain-settings)
(message "Brain Settings Loaded!")
;;; brain-settings.el ends here
