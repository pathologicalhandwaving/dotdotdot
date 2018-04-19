;; clock-settings.el
;; Personal clock config



;; clock settings
;; Save the running clock and all clock history when exiting Emacs, load it on startup
(setq org-clock-persistence-insinuate t)
(setq org-clock-persist t)
(setq org-clock-in-resume t)

;; Change task state to STARTED when clocking in
(setq org-clock-in-switch-to-state "STARTED")
;; Save clock data and notes in the LOGBOOK drawer
(setq org-clock-into-drawer t)
;; Removes clocked tasks with 0:00 duration
(setq org-clock-out-remove-zero-time-clocks t)

;; Show clock sums as hours and minutes, not "n days" etc.
(setq org-time-clocksum-format
      '(:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t))

;; Show the clocked-in task - if any - in the header line
(defun sanityinc/show-org-clock-in-header-line ()
  (setq-default header-line-format '((" " org-mode-line-string " "))))

(defun sanityinc/hide-org-clock-from-header-line ()
  (setq-default header-line-format nil))

(add-hook 'org-clock-in-hook #'sanityinc/show-org-clock-in-header-line)
(add-hook 'org-clock-out-hook #'sanityinc/hide-org-clock-from-header-line)
(add-hook 'org-clock-cancel-hook #'sanityinc/hide-org-clock-from-header-line)

(after-load 'org-clock
  (define-key org-clock-mode-line-map [header-line mouse-2] #'org-clock-goto)
  (define-key org-clock-mode-line-map [header-line mouse-1] #'org-clock-menu))


;; Pomidor 
(prelude-require-package 'pomidor)


(global-set-key (kbd "<f12>") #'pomidor)

;; Pomidor Timer Length
;; One hour is two tomatoes and two breaks
(setq pomidor-seconds (* 25 60))
(setq pomidor-break-seconds (* 5 60))

;; Configure Pomidor Sounds
(setq pomidor-sound-tick nil
      pomidor-sound-tack nil
      pomidor-sound-overwork (expand-file-name (concat pomidor-dir "slave.wav"))
      pomidor-sound-break-over (expand-file-name (concat  "degenerate.wav")))


;; Use if emacs wont play wav
;;(setq pomidor-play-sound-file
;;      (lambda (file)
;;        (start-process "my-pomidor-play-sound"
;;                       nil
;;                       "mplayer"
;;                       file)))


(setq alert-default-style 'libnotify)
(setq pomidor-alert (lambda () (alert "OMG!")))

(defun my-pomidor-update-hook ()
  (alert "Zzz"))

(add-hook 'pomidor-update-hook #'my-pomidor-update-hook)
(setq pomidor-update-interval 30)

(provide 'clock-settings)
(message "Clock Settings Loaded!")
;;; clock-settings.el ends here
