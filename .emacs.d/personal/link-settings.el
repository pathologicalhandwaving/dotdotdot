;;; link-settings.el
(require 'org)
(require 'org-web-tools)
(require 'engine-mode)
(require 'org-protocol)

;;; Code:


;; Create ID for Every Headline on Save
;; If it does not exist already
(defun my/org-add-ids-to-headlines-in-file ()
  (interactive)
  (org-map-entries 'org-id-get-create))

(add-hook 'org-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'my/org-add-ids-to-headlines-in-file nil 'local)))


;; Copy ID to Clipboard

(defun my/copy-id-to-clipboard()
       (interactive)
       (when (eq major-mode 'org-mode)
         (setq mytmpid (funcall 'org-id-get-create))
         (kill-new mytmpid)
         (message "Copied %s to KillRing" mytmpid)))

(global-set-key (kbd "") 'my/copy-id-to-clipboard)


;; Copy ID Link to Clipboard



(defun my/copy-idlink-to-clipboard()
       (interactive)
       (when (eq major-mode 'org-agenda-mode)
         (org-agenda-show)
         (org-agenda-goto))
       (when (eq major-mode 'org-mode)
         (setq mytmphead (nth 4 (org-heading-components)))
         (setq mytmpid (funcall 'org-id-get-create))
         (setq mytmplink (format "[[id:%s][%s]]" mytmpid mytmphead))
         (kill-new mytmplink)
         (message "Copied %s to KillRing" mytmplink)))

(global-set-key (kbd "") 'my/copy-idlink-to-clipboard)



;; Generate  Random UUID
(defun insert-random-uuid ()
  (interactive)
  (shell-command "uuidgen" t))

(global-set-key (kbd "C-c r u") 'insert-random-uuid)


(provide 'link-settings)
(message "Link Settings Loaded!")
;;; link-settings.el ends here
