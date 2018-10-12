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
                              (file+headline exile-inbox "InBox")
                              "** TODO %^{Task}
:PROPERTIES:
:DATE_ADDED: %T
:END:
%?"
                              :empty-lines 1)
                              ("u" "Quote"
                               entry
                               (file librarianbot-quotes)
                               "** QUOTE %^{Author}
:PROPERTIES:
:AUTHOR: %^{Author}
:DATE_ADDED: %U
:END:
%x"
                               :empty-lines 1)
                              ("b" "Bib Entry"
                               entry
                               (file mega-default-bibliography-file)
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

