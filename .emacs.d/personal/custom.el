(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(BibLaTeX-style-extensions '("bbx"))
 '(bibtex-autokey-year-length 4)
 '(bibtex-file-path /Users/Em/Repos/ImInSpace/Library/Refs/)
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(company-minimum-prefix-length 2)
 '(custom-safe-themes
   '("0598de4cc260b7201120b02d580b8e03bd46e5d5350ed4523b297596a25f7403" "4e21fb654406f11ab2a628c47c1cbe53bab645d32f2c807ee2295436f09103c6" "c5d320f0b5b354b2be511882fc90def1d32ac5d38cccc8c68eab60a62d1621f2" "4597d1e9bbf1db2c11d7cf9a70204fa42ffc603a2ba5d80c504ca07b3e903770" "d6922c974e8a78378eacb01414183ce32bc8dbf2de78aabcc6ad8172547cb074" default))
 '(expand-region-preferred-python-mode 'fgallina-python)
 '(org-agenda-diary-file "/Users/Em/Repos/ImInSpace/CaptainsLog/captainslog.org")
 '(org-agenda-files
   '("/Users/Em/Repos/ImInSpace/deck.org" "/Users/Em/Repos/ImInSpace/CaptainsLog/captainslog.org" "/Users/Em/Repos/ImInSpace/CaptainsLog/agenda.org" "/Users/Em/Repos/ImInSpace/Projects/projectslog.org" "/Users/Em/Repos/ImInSpace/HomeBase/homebase.org" "/Users/Em/Repos/ImInSpace/ExoCortex/Learn/learning.org" "/Users/Em/Repos/ImInSpace/Werx/schedule.org" "/Users/Em/Repos/ImInSpace/CaptainsLog/appointments.org" "/Users/Em/Repos/ImInSpace/CaptainsLog/todos.org" "/Users/Em/Repos/ImInSpace/Werx/Clients/clientlog.org" "/Users/Em/Repos/ImInSpace/ToGo/agenda-refiler.org"))
 '(org-agenda-mouse-1-follows-link t)
 '(org-archive-location "/Users/Em/Repos/ImInSpace/Archives/%s_archive::")
 '(org-attach-store-link-p t)
 '(org-capture-templates
   '(("l" "Captain's Log" entry
      (file+olp+datetree "/Users/Em/Repos/ImInSpace/CaptainsLog/captainslog.org")
      "* Log Entry: %?\\n\\n %i\\n\\n From: %a" :empty-lines-after 1 :tree-type week)
     ("t" "ToDo" entry
      (file+olp+datetree "/Users/Em/Repos/ImInSpace/CaptainsLog/todos.org")
      "* TODO %?\\n\\n  Details: %^{details}" :empty-lines-after 1 :tree-type week)
     ("a" "Appointments" entry
      (file+olp+datetree "/Users/Em/Repos/ImInSpace/CaptainsLog/appointments.org")
      "* APPOINTMENT %^{withwhom}\\n  - Date: %^{appointmentdate}\\n  - Time: %^{appointmenttime}\\n  - Location: %^{location}" :empty-lines-after 1 :tree-type week)))
 '(org-clock-into-drawer "LOGBOOK")
 '(org-closed-keep-when-no-todo t)
 '(org-default-notes-file "/Users/Em/Repos/ImInSpace/Notes/notes.org")
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-enforce-todo-dependencies t)
 '(org-file-apps
   '((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . default)
     (auto-mode . "\\.org\\'")))
 '(org-habit-completed-glyph 10019)
 '(org-habit-today-glyph 9100)
 '(org-icalendar-combined-agenda-file "/.emacs.d/org.ics")
 '(org-log-done 'time)
 '(org-log-into-drawer t)
 '(org-log-note-clock-out t)
 '(org-log-note-headings
   '((done . "CLOSED: %T")
     (state . "State %-12s from %-12S %T")
     (note . "Note Added: %T")
     (reschedule . "Rescheduled from %S on %T")
     (delschedule . "Canceled from %S on %T")
     (redeadline . "Revised Deadline from %S on %T")
     (deldeadline . "Canceled Deadline from %S on %T")
     (refile . "Refiled: %T")
     (clock-out . "Clocked Out: %T")))
 '(org-log-redeadline 'time)
 '(org-log-refile 'time)
 '(org-log-reschedule 'time)
 '(org-mobile-files '(org-agenda-files org-agenda-text-search-extra-files))
 '(org-mobile-index-file "/Users/Em/Repos/ImInSpace/ToGo/index.org")
 '(org-modules
   '(org-bbdb org-bibtex org-docview org-eww org-gnus org-habit org-id org-info org-irc org-mhe org-mouse org-protocol org-rmail org-w3m org-annotate-file org-bookmark org-checklist org-choose org-collector org-drill org-eshell org-eval-light org-eval org-expiry org-favtable org-git-link org-invoice org-mac-iCal org-mac-link org-man org-panel org-registry org-secretary org-toc))
 '(org-open-non-existing-files t)
 '(org-return-follows-link t)
 '(org-time-stamp-custom-formats '("<%y-%m-%d %a>" . "<%y-%m-%d %a %H:%M>"))
 '(org-timer-default-timer "00:25:00")
 '(org-todo-keywords
   '((sequence "TODO" "PLAN" "INPROGRESS" "REVIEW" "FEEDBACK" "REFACTOR" "VERIFY" "DONE" "DELEGATED" "ASSIGNED" "PURGATORY" "WAITING")))
 '(org-treat-insert-todo-heading-as-state-change t)
 '(package-selected-packages
   '(org-bullets org-mobile-sync neotree all-the-icons-ivy doom-themes cyberpunk-theme yaml-mode web-mode geiser yari inf-ruby company-anaconda anaconda-mode company-auctex cdlatex auctex json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters coffee-mode company helm-ag helm-descbinds helm-projectile helm counsel swiper ivy smex ido-completing-read+ flx-ido vkill exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree smartrep smartparens smart-mode-line operate-on-number move-text magit projectile ov imenu-anywhere guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major dash crux browse-kill-ring beacon anzu ace-window))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-habit-alert-face ((t (:foreground "gold1" :weight bold))))
 '(org-habit-alert-future-face ((t (:foreground "#816e53" :weight bold))))
 '(org-habit-clear-face ((t (:foreground "#181E24" :weight bold))))
 '(org-habit-clear-future-face ((t (:foreground "#181E24" :weight bold))))
 '(org-habit-overdue-face ((t (:foreground "#783846" :weight bold))))
 '(org-habit-overdue-future-face ((t (:foreground "#783846" :weight bold))))
 '(org-habit-ready-face ((t (:foreground "SpringGreen2" :weight bold))))
 '(org-habit-ready-future-face ((t (:foreground "#3b7191" :weight bold)))))
