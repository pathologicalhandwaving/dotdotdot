(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(BibLaTeX-style-extensions '("bbx"))
 '(auto-image-file-mode t)
 '(bib-file "/Users/Em/Repos/ImInSpace/Library/Refs/default.bib.bib")
 '(bibtex-autokey-year-length 4)
 '(bibtex-file-path /Users/Em/Repos/ImInSpace/Library/Refs/)
 '(blink-cursor-mode nil)
 '(browse-url-browser-function 'eww-browse-url)
 '(browse-url-new-window-flag t)
 '(browse-url-save-file nil)
 '(browse-url-text-browser "w3m")
 '(calendar-latitude 0.0)
 '(calendar-longitude 0.0)
 '(column-number-mode t)
 '(company-minimum-prefix-length 2)
 '(custom-safe-themes
   '("e297f54d0dc0575a9271bb0b64dad2c05cff50b510a518f5144925f627bb5832" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "bc4b650c41b16b98166b35da94b366c6a9e1e7883bbf4937c897fb7bd05aa619" "bbb4a4d39ed6551f887b7a3b4b84d41a3377535ccccf901a3c08c7317fad7008" "83db918b06f0b1df1153f21c0d47250556c7ffb5b5e6906d21749f41737babb7" "dcb9fd142d390bb289fee1d1bb49cb67ab7422cd46baddf11f5c9b7ff756f64c" "0598de4cc260b7201120b02d580b8e03bd46e5d5350ed4523b297596a25f7403" "4e21fb654406f11ab2a628c47c1cbe53bab645d32f2c807ee2295436f09103c6" "c5d320f0b5b354b2be511882fc90def1d32ac5d38cccc8c68eab60a62d1621f2" "4597d1e9bbf1db2c11d7cf9a70204fa42ffc603a2ba5d80c504ca07b3e903770" "d6922c974e8a78378eacb01414183ce32bc8dbf2de78aabcc6ad8172547cb074" default))
 '(diary-file "/Users/Em/Repos/ImInSpace/CaptainsLog/diary")
 '(doc-view-image-width 400)
 '(expand-region-preferred-python-mode 'fgallina-python)
 '(fancy-splash-image "/Users/Em/Repos/ImInSpace/escape.png")
 '(global-anzu-mode t)
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-diff-hl-mode t)
 '(global-flycheck-mode t)
 '(global-hl-line-mode t)
 '(global-prettify-symbols-mode t)
 '(global-undo-tree-mode t)
 '(image-load-path
   '("/usr/local/Cellar/emacs-plus/HEAD-fbd025a/share/emacs/27.0.50/etc/images/" data-directory load-path "/Users/Em/Repos/" "/Users/Em/Pictures/"))
 '(mm-inline-large-images 'resize)
 '(nyan-mode t)
 '(org-agenda-category-icon-alist
   '(("CLOCK" "/Users/Em/Pictures/Icons/FlipClock.png" png nil nil)
     ("PAPERWORK" "/Users/Em/Pictures/Icons/Envelope.png" nil nil nil)))
 '(org-agenda-columns-add-appointments-to-effort-sum t)
 '(org-agenda-default-appointment-duration 120)
 '(org-agenda-diary-file "/Users/Em/Repos/ImInSpace/CaptainsLog/Diary/diary.org")
 '(org-agenda-files
   '("/Users/Em/Repos/ImInSpace/deck.org" "/Users/Em/Repos/ImInSpace/CaptainsLog/captainslog.org" "/Users/Em/Repos/ImInSpace/CaptainsLog/agenda.org" "/Users/Em/Repos/ImInSpace/Projects/projectslog.org" "/Users/Em/Repos/ImInSpace/HomeBase/homebase.org" "/Users/Em/Repos/ImInSpace/ExoCortex/Learn/learning.org" "/Users/Em/Repos/ImInSpace/Werx/schedule.org" "/Users/Em/Repos/ImInSpace/CaptainsLog/appointments.org" "/Users/Em/Documents/Dropbox/ToGo/togo.org" "/Users/Em/Repos/ImInSpace/Werx/Clients/clientlog.org"))
 '(org-agenda-include-diary t)
 '(org-agenda-insert-diary-extract-time t)
 '(org-agenda-log-mode-items '(closed clock state))
 '(org-agenda-mouse-1-follows-link t)
 '(org-agenda-persistent-marks t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-skip-unavailable-files t)
 '(org-agenda-span 'month)
 '(org-agenda-start-with-clockreport-mode t)
 '(org-agenda-start-with-entry-text-mode t)
 '(org-agenda-start-with-log-mode 'clockcheck)
 '(org-agenda-sticky t)
 '(org-agenda-text-search-extra-files nil)
 '(org-agenda-time-leading-zero t)
 '(org-agenda-view-columns-initially t)
 '(org-archive-location "/Users/Em/Repos/ImInSpace/Archives/%s_archive::")
 '(org-attach-auto-tag "ATTACHMENT")
 '(org-attach-directory "/Users/Em/Repos/ImInSpace/Attachments/")
 '(org-attach-method 'lns)
 '(org-attach-store-link-p t)
 '(org-capture-templates
   '(("c" "Captain's Log" entry
      (file+olp+datetree "/Users/Em/Repos/ImInSpace/CaptainsLog/captainslog.org")
      "* Log Entry: %U\n  - Item: %^{Activity}\n  - Details: %^{Details}\n  - Status: %^{Status}\n  - Follow Up: %^{Follow Up}\n  - Date Added: %T" :empty-lines-after 1 :tree-type week)
     ("t" "ToDo" entry
      (file+olp+datetree "/Users/Em/Documents/Dropbox/ToGo/togo.org")
      "* TODO %?\n  - Details: %^{Details}\n  - Date Added: %T" :empty-lines-after 1 :tree-type week)
     ("d" "Add Done" entry
      (file+function "/Users/Em/Documents/Dropbox/ToGo/togo.org" nil)
      "* DONE %^{Heading}\n  - Description: %^{Description}\n  - DATE_CLOSED: %^T" :empty-lines-after 1 :tree-type week)
     ("s" "Start Task" entry
      (file+olp+datetree "/Users/Em/Repos/ImInSpace/CaptainsLog/captainslog.org")
      "* INPROGRESS %^{Heading}\n  :PROPERTIES:\n  :CUSTOM_ID: %^{Custom ID}\n  :LOGGING: lognotedone\n  :DATE_ADDED: %U\n  :END:\n** Objective: %^{Objective}\n*** Proceedure [%]\n  - [ ] %^{Step 1}\n  - [ ] %^{Step 2}\n  - [ ] %^{Step 3} \n*** Current File: %f" :jump-to-captured t :empty-lines 1 :empty-lines-before 1 :empty-lines-after 1 :clock-in t :tree-type week)
     ("a" "Add Appointment" entry
      (file+olp+datetree "/Users/Em/Repos/ImInSpace/CaptainsLog/appointments.org")
      "* APPOINTMENT %?\n  :PROPERTIES:\n  :EVENT_TYPE: APPOINTMENT\n  :APPT_DATE: %^T\n  :PLACE_NAME: %^{Place Name}\n  :NOTE: %^{Note}\n  :END:" :jump-to-captured t :empty-lines-after 1 :time-prompt t :tree-type week)
     ("v" "Vital Signs" entry
      (file+olp+datetree "/Users/Em/Repos/ImInSpace/CaptainsLog/Health/tracking.org")
      "* %U : Vitals\n  - Energy Level: %?\n  - Blood Pressure\n    - Systolic: %^{Systolic}\n    - Diastolic: %^{Diastolic}\n  - Pulse: %^{Pulse}\n  - Temperature: %^{Temperature} ℉\n  - Symptoms: %^{Symptoms}\n  - Date Recorded: %U" :empty-lines-after 1 :tree-type week)
     ("u" "Tutoring" entry
      (file+olp+datetree "/Users/Em/Repos/ImInSpace/Werx/tutoringlogs.org")
      "* Tutoring Session %T\n  - Student: %^{Student|Jeremie}\n  - Subject: %^{Subject}\n  - Time Log\n    - Session Start: %^u\n    - Session End: %^u" :empty-lines-after 1 :time-prompt t :tree-type week)
     ("n" "Random Note" entry
      (file "/Users/Em/Repos/ImInSpace/Notes/notes.org")
      "* NOTE %^{Heading}\n  - Description: %^{Description}\n  - Date Added: %T\n  - Current File: %f" :empty-lines-after 1)
     ("r" "Research Diary Entry" entry
      (file+olp+datetree "/Users/Em/Repos/ImInSpace/ExoCortex/ELN/researchdiary.org")
      "* %U %^{Heading}\n  - Description: %^{Description}\n  - Action: %^{Action}\n  - Do Next: %^{Next}\n  - Current File: %f" :jump-to-captured t :empty-lines-after 1 :tree-type week)
     ("i" "Idea" entry
      (file+olp+datetree "/Users/Em/Repos/ImInSpace/ExoCortex/Ideas/ideas.org" "* Ideas")
      "* %T %^{Idea Heading}\n  - Description: %^{Description}\n  - Keywords: %^{Keywords}\n  - Current File: %f\n  - Date Added: %U" :immediate-finish t :empty-lines-after 1)
     ("w" "Web Capture" entry
      (file+olp "/Users/Em/Repos/ImInSpace/Notes/notes.org" "Web Captures")
      "* %U -  %:description\n  %i\n  \n  Link: %c" :jump-to-captured t :empty-lines-before 1 :empty-lines-after 1)))
 '(org-clock-in-switch-to-state "INPROGRESS")
 '(org-clock-into-drawer "LOGBOOK")
 '(org-closed-keep-when-no-todo t)
 '(org-coderef-label-format "[ref:%s]")
 '(org-columns-ellipses ">")
 '(org-custom-properties
   '("SELFSPY" "DESCRIPTION" "CLASS" "REPO" "SUBJECT" "PROJECT" "ELN_PAGE" "PROTOCOL" "METHOD" "ALGORITHM" "LANGUAGE" "HEALTH" "RESOURCE" "ARRAY" "YEAR" "MONTH" "WEEK" "DAY" "LOCATION" "CLIENT" "STUDENTID" "DATE_ADDED" "DATE_MODIFIED" "CITEKEY" "URL" "METRIC" "DATATYPE" "LOG_CLASS" "SELFSPY_VAR" "CITY" "STATE" "STREET" "PLACE_NAME" "POSTALCODE" "COUNTRY"))
 '(org-datetree-add-timestamp 'inactive)
 '(org-default-notes-file "/Users/Em/Repos/ImInSpace/Notes/notes.org")
 '(org-default-priority 67)
 '(org-directory "/Users/Em/Repos/ImInSpace/")
 '(org-edit-src-turn-on-auto-save t)
 '(org-ellipsis " ")
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-enforce-todo-dependencies t)
 '(org-export-backends
   '(ascii beamer html icalendar latex md odt org freemind koma-letter))
 '(org-export-with-sub-superscripts '{})
 '(org-file-apps
   '((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . default)
     (auto-mode . "\\.org\\'")))
 '(org-fontify-done-headline t)
 '(org-fontify-quote-and-verse-blocks t)
 '(org-footnote-auto-adjust 'renumber)
 '(org-footnote-fill-after-inline-note-extraction t)
 '(org-global-properties
   '(("DESCRIPTION" . "")
     ("DATE_ADDED" . "%U")
     ("DATE_CREATED" . "%U")
     ("DATE_MODIFIED" . "%U")
     ("URL" . "")
     ("YEAR" . "")
     ("MONTH" . "")
     ("WEEK" . "")
     ("DAY" . "")
     ("PROJECT" . "")
     ("SUBJECT" . "")))
 '(org-habit-completed-glyph 10019)
 '(org-habit-today-glyph 9100)
 '(org-hide-block-startup t)
 '(org-hide-emphasis-markers t)
 '(org-hide-leading-stars t)
 '(org-icalendar-combined-agenda-file "/.emacs.d/org.ics")
 '(org-image-actual-width nil)
 '(org-indent-mode-turns-off-org-adapt-indentation nil)
 '(org-insert-heading-respect-content t)
 '(org-keep-stored-link-after-insertion t)
 '(org-latex-default-packages-alist
   '(("AUTO" "inputenc" t
      ("pdflatex"))
     ("T1" "fontenc" t
      ("pdflatex"))
     ("" "graphicx" t nil)
     ("" "grffile" t nil)
     ("" "longtable" nil nil)
     ("" "wrapfig" nil nil)
     ("" "rotating" nil nil)
     ("normalem" "ulem" t nil)
     ("" "amsmath" t nil)
     ("" "textcomp" t nil)
     ("" "amssymb" t nil)
     ("" "capt-of" nil nil)
     ("" "hyperref" nil nil)
     ("" "glossaries-extra" nil nil)
     ("dvipsnames" "xcolor" nil nil)
     ("none" "hyphenat" nil nil)
     ("parfill" "parskip" nil nil)
     ("" "url" nil nil)
     ("" "stmaryrd" nil nil)))
 '(org-latex-hyperref-template
   "\\hypersetup{\n pdfauthor={%a},\n pdftitle={%t},\n pdfkeywords={%k},\n pdfsubject={%d},\n pdfcreator={%c}, \n pdflang={%L}}")
 '(org-latex-image-default-height "3in")
 '(org-latex-tables-booktabs t)
 '(org-log-done 'time)
 '(org-log-into-drawer t)
 '(org-log-note-clock-out t)
 '(org-log-note-headings
   '((done . "CLOSED: %U")
     (state . "STATE_CHANGED: %-12s from %-12S %U")
     (note . "DATE_ADDED: %U")
     (reschedule . "RESCHEDULED: from %S on %T")
     (delschedule . "CANCELED: %S on %U")
     (redeadline . "DEADLINE_CHANGED: from %S on %T")
     (deldeadline . "DEADLINE_CANCELED: from %S on %T")
     (refile . "DATE_REFILED: %U")
     (clock-out . "TIME_OUT: %U")))
 '(org-log-redeadline 'time)
 '(org-log-refile 'time)
 '(org-log-reschedule 'time)
 '(org-lowest-priority 69)
 '(org-mobile-agendas 'all)
 '(org-mobile-allpriorities "A B C D E")
 '(org-mobile-directory "/Users/Em/Documents/Dropbox/Apps/ToGo")
 '(org-mobile-files
   '(org-agenda-files org-agenda-text-search-extra-files "/Users/Em/Documents/Dropbox/ToGo/togo.org"))
 '(org-mobile-inbox-for-pull "/Users/Em/Repos/ImInSpace/CaptainsLog/inbox.org")
 '(org-mobile-index-file "/Users/Em/Documents/Dropbox/ToGo/togo.org")
 '(org-mobile-sync-mode nil)
 '(org-modules
   '(org-bbdb org-bibtex org-docview org-eww org-gnus org-habit org-id org-info org-irc org-mhe org-mouse org-protocol org-rmail org-w3m org-annotate-file org-bookmark org-checklist org-choose org-collector org-drill org-eshell org-eval-light org-eval org-expiry org-favtable org-git-link org-invoice org-mac-iCal org-mac-link org-man org-panel org-registry org-secretary org-toc org-vm))
 '(org-open-non-existing-files t)
 '(org-pretty-entities t)
 '(org-priority-faces
   '((65 . "red")
     (66 . "orange")
     (67 . "yellow")
     (68 . "green")
     (69 . "blue")))
 '(org-protocol-default-template-key "w")
 '(org-return-follows-link t)
 '(org-src-lang-modes
   '(("ocaml" . tuareg)
     ("elisp" . emacs-lisp)
     ("ditaa" . artist)
     ("asymptote" . asy)
     ("dot" . fundamental)
     ("sqlite" . sql)
     ("calc" . fundamental)
     ("C" . c)
     ("cpp" . c++)
     ("C++" . c++)
     ("screen" . shell-script)
     ("shell" . sh)
     ("bash" . sh)
     ("python" . py)))
 '(org-startup-align-all-tables t)
 '(org-startup-with-beamer-mode t)
 '(org-startup-with-inline-images t)
 '(org-startup-with-latex-preview t)
 '(org-table-fix-formulas-confirm 'y-or-n-p)
 '(org-time-stamp-custom-formats '("<%y-%m-%d %H:%M>" . "<%y-%m-%d %a %H:%M>"))
 '(org-timer-default-timer "00:25:00")
 '(org-todo-keywords
   '((sequence "TODO" "NEXT" "PLAN" "INPROGRESS" "PAUSED" "RESUME" "WAITING" "DELEGATED" "ASSIGNED" "PURGATORY" "DONE")
     (type "READNEXT" "READLATER" "WATCHNEXT" "WATCHLATER" "LISTEN")
     (sequence "IDEA" "DEFINE" "LOOKUP" "RESEARCH" "FEEDBACK" "REVIEW" "REFACTOR" "VERIFY" "DOCUMENT")
     (type "APPOINTMENT" "SESSION" "MEETING" "CALL" "SKYPE" "ERRAND")
     (type "INSTALL" "CONFIGURE" "MAKE" "ANALYZE" "DELETE" "REFILE" "DOWNLOAD" "MOVE" "COPY")
     (type "TOOL" "SERVICE" "APPLICATION" "SCRIPT" "PDF" "EPUB" "WEBPAGE" "SLIDES" "VIDEO")
     (type "DOC" "REF" "MANUAL" "READING_ALGORITHM")
     (type "READING_ALGO" "ANNOTATE_ALGO" "SEARCH_ALGO" "FILING_ALGO" "CLASSIFY_ALGO ")
     (sequence "INIT_DOC" "VERIFY_DOC" "AGGREGATE_PASS" "ANALYSIS_PASS" "SUMMARY_PASS" "CLOSE_DOC ")
     (type "QUESTION" "PARTIAL_ANSWER" "SHORT_ANSWER" "COMPLETE_ANSWER" "ANSWER")
     (type "THEOREM" "LEMMA" "COROLLARY" "PROOF" "CONJECTURE" "PREMISE" "CONCLUSION" "REASONING" "CONSTRAINT")
     (type "ELN_ENTRY" "PROTOCOL" "METHOD" "RESULT" "DATA" "FIGURE" "ANALYSIS" "CALCULATION" "INVENTORY" "NOTEBOOK" "COMMENT" "PHASE" "COMPONENT" "STRUCTURE")
     (sequence "SYSTEM" "SCHEMA" "MODEL" "TYPE" "BEHAVIOR" "COMPONENT" "LOG")))
 '(org-todo-state-tags-triggers nil)
 '(org-track-ordered-property-with-tag t)
 '(org-treat-insert-todo-heading-as-state-change t)
 '(org-use-property-inheritance t)
 '(org-use-sub-superscripts '{})
 '(package-selected-packages
   '(helm-bibtex-with-local-bibliography helm-bibtexkey use-package angry-police-captain osx-trash osx-pseudo-daemon osx-plist osx-location osx-lib osx-dictionary osx-clipboard osx-browse counsel-osx-app sx helm-orgcard helm-org-rifle org-dropbox org-preview-html org-journal org-brain mpv emms-player-mpv-jp-radios emms-player-mpv draft-mode dot-mode blackboard-bold-mode chef-mode edit-server-htmlize reveal-in-osx-finder google-maps applescript-mode apples-mode defproject map-progress captain capture org-category-capture private-diary tagedit turing-machine hl-anything achievements org-context exiftool shell-current-directory download-region org-linkany orglink link org-cliplink toc-org outline-toc otama imapfilter ivy-feedwrangler writegood-mode csv-mode parse-csv csv tblui orgtbl-show-header orgtbl-join orgtbl-ascii-plot orgtbl-aggregate xkcd wotd list-utils minimap miniedit gnuplot gnuplot-mode all-the-icons-gnus edit-list popup-edit-menu popup-imenu char-menu imenu-list imenus tiny-menu auto-complete-rst macro-math graphql-mode elpy bart-mode prop-menu gruvbox-theme boxquote checkbox org-table-sticky-header org-sticky-header state magit-org-todos edit-indirect-region-latex gitignore-templates latex-pretty-symbols add-hooks add-node-modules-path nodejs-repl search-web web-beautify fastdef wiki-summary jedi python-cell importmagic python-x sound-wav zone-rainbow rainbow-blocks auto-complete-sage empos bog ein-mumamo audio-notes-mode calfw-org bbdb2erc bbdb-ext helm-bbdb bbdb-vcard bbdb-csv-import bbdb- offlineimap company-coq company-pollen company-dict ac-math auto-complete-auctex color-theme-sanityinc-solarized ibuffer-sidebar anybar org-autolist code-library org-tracktable org-time-budgets org-web-tools org-random-todo org-noter org-beautify-theme org-bookmark-heading org-alert org-agenda-property html2org org-review homebrew-mode hackernews auctex-latexmk yatemplate latexdiff latex-preview-pane magic-latex-buffer latex-extra google-translate math-symbol-lists latex-math-preview company-bibtex gscholar-bibtex annotate ebib shell-here shell-command eval-in-repl fireplace babel-repl ox-epub pynt svg-clock osx-org-clock-menubar org-clock-today graphviz-dot-mode protocols labburn-theme ob-http ob-diagrams ob-blockdiag ob-cypher ob-browser yasnippet-snippets ipython-shell-send org-super-agenda 0blayout org-easy-img-insert org-capture-pop-frame org-babel-eval-in-repl org-pomodoro apache-mode edit-server org-dashboard dashboard org-board arjen-grey-theme challenger-deep-theme academic-phrases read-aloud readability bibslurp bibretrieve bibtex-utils focus sunshine highlight org-index org-edit-latex ialign podcaster org-download auto-yasnippet interleave org-ref org-randomnote ob-sml ob-sagemath ob-applescript ob-ipython nyan-mode org-pdfview pdf-tools ereader org-chef org-bullets org-mobile-sync neotree all-the-icons-ivy doom-themes cyberpunk-theme yaml-mode web-mode geiser yari inf-ruby company-anaconda anaconda-mode company-auctex cdlatex auctex json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters coffee-mode company helm-ag helm-descbinds helm-projectile helm counsel swiper ivy smex ido-completing-read+ flx-ido vkill exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree smartrep smartparens smart-mode-line operate-on-number move-text magit projectile ov imenu-anywhere guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major dash crux browse-kill-ring beacon anzu ace-window))
 '(pdf-info-log t)
 '(pdf-view-resize-factor 0.75)
 '(pdf-view-use-imagemagick t)
 '(pdf-view-use-scaling t)
 '(pdf-virtual-global-minor-mode t)
 '(prelude-global-mode t)
 '(recentf-menu-title "Recent Files")
 '(remember-annotation-functions '(org-remember-annotation buffer-file-name))
 '(remember-data-directory "~/Repos/ImInSpace/Meta/remember")
 '(remember-notes-buffer-name "*remember*")
 '(remember-run-all-annotation-functions-flag t)
 '(scroll-bar-mode nil)
 '(show-smartparens-global-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(unread-bib-file "/Users/Em/Repos/ImInSpace/Library/Refs/unread.bib")
 '(whitespace-global-modes nil)
 '(yas-buffer-local-condition 'always)
 '(yas-global-mode t)
 '(yas-snippet-dirs '("/Users/Em/.emacs.d/snippets" yasnippet-snippets-dir))
 '(yas-use-menu 'full))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(nxml-outline-ellipsis ((t (:weight light))))
 '(org-agenda-calendar-event ((t (:inherit default :background "SpringGreen4" :distant-foreground "DarkSlateGray1" :foreground "DarkSlateGray1" :box (:line-width 2 :color "SpringGreen4") :weight normal))))
 '(org-agenda-date-weekend ((t (:inherit org-agenda-date :weight semi-light))))
 '(org-agenda-diary ((t (:inherit default :foreground "PaleTurquoise3" :weight normal))))
 '(org-agenda-done ((t (:foreground "gray51" :strike-through "gray51" :weight light))))
 '(org-agenda-filter-effort ((t (:background "SkyBlue3" :distant-foreground "black" :foreground "cornflower blue"))))
 '(org-checkbox ((t (:inherit default :background "SlateGray3" :foreground "gray13" :box (:line-width 1 :color "SlateGray3")))))
 '(org-checkbox-statistics-done ((t (:inherit org-done :weight semi-light))))
 '(org-checkbox-statistics-todo ((t (:inherit org-todo :weight semi-light))))
 '(org-clock-overlay ((t (:foreground "MediumPurple3"))))
 '(org-code ((t (:inherit shadow :foreground "SeaGreen2"))))
 '(org-column ((t (:background "#DarkSlateGray4" :foreground "DarkSlateGray1"))))
 '(org-document-title ((t (:foreground "gray37" :weight bold :height 1.0))))
 '(org-drawer ((t (:foreground "LightSkyBlue4"))))
 '(org-ellipsis ((t (:foreground "LightBlue4" :weight light))))
 '(org-footnote ((t (:foreground "gray60" :weight light))))
 '(org-formula ((t (:foreground "SkyBlue2" :weight semi-light))))
 '(org-habit-alert-face ((t (:foreground "tomato" :weight normal))))
 '(org-habit-alert-future-face ((t (:foreground "salmon" :weight normal))))
 '(org-habit-clear-face ((t (:foreground "LightSteelBlue4" :weight normal))))
 '(org-habit-clear-future-face ((t (:foreground "LightSteelBlue4" :weight normal))))
 '(org-habit-overdue-face ((t (:foreground "tomato3" :weight normal))))
 '(org-habit-overdue-future-face ((t (:foreground "tomato2" :weight normal))))
 '(org-habit-ready-face ((t (:foreground "SpringGreen2" :weight normal))))
 '(org-habit-ready-future-face ((t (:foreground "#3b7191" :weight normal))))
 '(org-headline-done ((t (:foreground "gray51" :box (:line-width 2 :color "grey51" :style pressed-button) :strike-through "gray51"))))
 '(org-latex-and-related ((t (:foreground "SteelBlue2" :weight normal))))
 '(org-level-1 ((t (:foreground "VioletRed1" :weight semi-light :height 1.25))))
 '(org-level-2 ((t (:foreground "deep sky blue" :weight semi-light :height 1.1))))
 '(org-level-3 ((t (:foreground "SeaGreen1" :weight semi-light :height 1.0))))
 '(org-level-4 ((t (:foreground "SlateBlue2" :weight semi-light))))
 '(org-level-5 ((t (:foreground "tomato1" :weight semi-light))))
 '(org-level-6 ((t (:foreground "yellow2" :weight semi-light))))
 '(org-level-7 ((t (:foreground "orange1" :weight semi-light))))
 '(org-level-8 ((t (:foreground "HotPink1" :weight semi-light))))
 '(org-link ((t (:foreground "cyan3" :underline nil :weight semi-light))))
 '(org-list-dt ((t (:foreground "steel blue" :weight semi-light))))
 '(org-meta-line ((t (:foreground "DarkSlateGray4" :weight semi-light))))
 '(org-mode-line-clock ((t (:background "steel blue" :foreground "LightSteelBlue1" :box (:line-width 2 :color "steel blue") :weight light))))
 '(org-property-value ((t (:foreground "LightBlue4" :slant oblique :weight semi-light))) t)
 '(org-quote ((t (:inherit org-block :foreground "LightBlue3" :slant italic :weight semi-light))))
 '(org-scheduled ((t (:background "PaleGreen" :foreground "SkyBlue4" :box (:line-width 2 :color "PaleGreen") :weight semi-light))))
 '(org-scheduled-previously ((t (:background "chocolate1" :foreground "gray18" :box (:line-width 2 :color "chocolate1") :weight semi-light))))
 '(org-scheduled-today ((t (:background "SpringGreen1" :foreground "gray11" :box (:line-width 2 :color "SpringGreen1") :weight semi-light))))
 '(org-sexp-date ((t (:foreground "CadetBlue3" :weight light))))
 '(org-special-keyword ((t (:inherit font-lock-keyword-face :background "DarkSlateGray4" :foreground "black" :box (:line-width 2 :color "DarkSlateGray4") :weight semi-light))))
 '(org-tag ((t (:foreground "HotPink2" :weight semi-light))))
 '(org-target ((t (:underline t))))
 '(org-time-grid ((t (:foreground "SpringGreen2"))))
 '(org-todo ((t (:foreground "HotPink2" :box (:line-width 1 :style none) :weight bold))))
 '(org-upcoming-deadline ((t (:foreground "chocolate1" :box (:line-width 2 :color "chocolate1" :style pressed-button)))))
 '(org-verbatim ((t (:foreground "SeaGreen1" :weight normal))))
 '(org-warning ((t (:background "OrangeRed1" :foreground "gray0" :weight normal)))))
