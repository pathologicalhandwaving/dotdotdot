;;; exile-capture-templates.el
(require 'org)
(require 'org-capture)
(require 'osx-clipboard)

;; Capture in Current File
;; Call with: C-c p
(defun org-capture-at-point ()
  "Insert an org capture template at point."
  (interactive)
  (org-capture 0))

;; Keybind
(global-set-key (kbd "C-c p")
                (lambda () (interactive) (org-capture nil "0")))



(defun region-to-clocked-task (start end)
  "Copies the selected text to the currently clocked in org-mode task."
  (interactive "r")
  (org-capture-string (buffer-substring-no-properties start end) "C"))

(global-set-key (kbd "C-<F7>") 'region-to-clocked-task)


;; Initialize org-capture-templates list
(setq org-capture-templates '(("t" "ToDo"
                              entry
                              (file+headline agendabot-tasks "Tasks")
                              "** TODO %^{Task}
   DATE_ADDED: %U
   NOTE: %?"
                              :empty-lines 1)
                              ("n" "Note"
                               entry
                               (file+headline "Notes")
                               "** NOTE %^{Content}
DATE_ADDED: %U"
                               :empty-lines 1)
                              ("a" "Add to Agenda"
                               entry
                               (file+datetree agendabot-default)
                               "%U - %^{Activity}"
                               :empty-lines 1)
                              ("l" "Add Log Entry"
                               entry
                               (file+datetree agendabot-logs)
                               "%U - %^{Activity}
STATUS: %^{Status}"
                               :empty-lines 1)
                              ("c" "Calendar"
                               entry
                               (file+datetree agendabot-calendar)
                               "**** %^{Event}
DATE_ADDED: %U"
                               :empty-lines 1)
                              ("d" "Add Done"
                               entry
                               (file+datetree agendabot-default)
                               "*** DONE %^{Completed}"
                               :empty-lines 1)
                              ("u" "Quote"
                               entry
                               (file+headline librarianbot-quotes "Quotations")
                               "** QUOTE %^{Author}
:PROPERTIES:
:AUTHOR: %^{Author}
:DATE_ADDED: %U
:END:
#+BEGIN_QUOTE
  %x
#+END_QUOTE"
                               :empty-lines 1)
                              ("b" "Bib Entry"
                               entry
                               (file librarianbot-default-bib)
                               "@article{%^{Author Last Name}%^{Year},
  title={%^{Title}},
  author={%^{Authors}}
  year={%^{Year}},
  month={%^{Month}},
  day={%^{Day}},
  journal={%^{Journal}},
  volume={%^{Volume}},
  number={%^{Number}},
  pages={%^{Pages}},
  doi={%^{Url}},
  keywords={%^{Keywords}},
  note={%^{Note}}
}"
                               :empty-lines 1)))



(provide 'exile-capture-templates)
(message "Capture Templates Loaded!")
;;; exile-capture-templates.el ends here

