;;; timestamp-settings.el
;;; Commentary: Timestamp Settings
;;; Updated: Thu Oct 18 15:47:20 2018

;;; Code:

;;; Insert Inactive Timestamp
(defvar em/insert-inactive-timestamp t)

(defun em/toggle-insert-inactive-timestamp ()
  (interactive)
  (setq em/insert-inactive-timestamp (not em/insert-inactive-timestamp))
  (message "Heading timestamps are %s" (if em/insert-inactive-timestamp "ON" "OFF")))

(defun em/insert-inactive-timestamp ()
  (interactive)
  (org-time-stamp nil t t nil nil nil))

(defun em/insert-heading-inactive-timestamp ()
  (save-excursion
    (when em/insert-inactive-timestamp
      (org-return)
      (org-cycle)
      (em/insert-inactive-timestamp))))  

(add-hook 'org-insert-heading-hook 'em/insert-heading-inactive-timestamp 'append)

;;; End Code:

(provide 'timestamp-settings)
(message "Timestamp Settings Loaded!")
;;; timestamp-settings.el ends here
