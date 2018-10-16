;;; exile-capture-templates.el
(require 'org)
(require 'org-capture)


;; Capture in Current File
;; Call with: C-0 C-c c
(defun org-capture-at-point ()
  "Insert an org capture template at point."
  (interactive)
  (org-capture 0))




(defun region-to-clocked-task (start end)
  "Copies the selected text to the currently clocked in org-mode task."
  (interactive "r")
  (org-capture-string (buffer-substring-no-properties start end) "C"))

(global-set-key (kbd "C-<F7>") 'region-to-clocked-task)


;; Initialize org-capture-templates list
(setq org-capture-templates '(("t" "Task"
                               entry
                               (file+headline exile-tasks-file "Tasks")
                               "* TODO %^{Heading}
:PROPERTIES:
:DATE_ADDED: %T
:END:
%?"
                               :empty-lines 1)
                               ("n" "Notes"
                               entry
                               (file+headline exile-notes-file "Notes")
                               "** NOTE %^{Heading}
:PROPERTIES:
:DATE_CREATED: %U
:END:\n
%?"
                               :empty-lines 1)
                               ("c" "Comment"
                                entry
                                (file+headline exile-comments-file "Comments Withheld")
                                "** COMMENT %^{Comment}
:PROPERTIES:
:DATE_ADDED: %U
:END:\n
%?"
                                :empty-lines 1)
                              ("Q" "Question"
                               entry
                               (file+headline labbot-questions-file "UnSorted")
                               "*** QUESTION %^{Question}
:PROPERTIES:
:SUBJECT: %^{Subject}
:DATE_ADDED: %U
:QUESTION_STATUS: %^{Open | Answered | Closed}
:TAGS: UNSORTED
:ANS_LINK: [[%^{Answer Link}]]
:END:\n
%?"
                               :empty-lines 1)
                              ("r" "ReadLater"
                               entry
                               (file+headline library-annex-readlater-file "Read Later")
                               "** READLATER %?
:PROPERTIES:
:TITLE:%^{Title}
:AUTHOR: %^{Author}
:DATE_ACCESSED: %T
:URL: [[%?]]
:END:
%?"
                               :empty-lines 1)
                              ("u" "Quote"
                               entry
                               (file+headline library-annex-quotes-file "Quotations")
                                "** %^{Author} -- %^{Topic}
:PROPERTIES:
:AUTHOR: %^{Author}
:ATTRIBUTION: %^{Attribution}
:URL: [[%^{Link}]]
:DATE_ADDED: %U
:END:\n\n
#+CAPTION: %^{Caption}
#+BEGIN_QUOTE
  %^{Quote}
#+END_QUOTE\n
%?"
                               :empty-lines 1)
                              ("m" "Book Memo"
                               entry
                               (file "Users/Em/Documents/Dropbox/Library-Annex/book-memos.org")
                                "* %(helm-books)"
                               :empty-lines 1)
                              ("a" "Bibliography Article Entry"
                               plain
                               (file mega-default-bibliography-file)
                                "@article{%^{Last Name}%^{Year},
  author     = {%^{Authors}},
  title      = {%^{Title}},
  day        = {%^{Day}},
  month      = {%^{Month}},
  year       = {%^{Year}},
  journal    = {%^{Journal}},
  issn       = {%^{ISSN}},
  doi        = [%^{doi}],
  volume     = {%^{Volume}},
  number     = {%^{Number}},
  pages      = {%^{Pages}},
  note       = {%^{Note}},
  keywords   = {%^{keywords}},
  abstract   = {%^{Abstract}}
}%?"
                                :empty-lines 1)
                              ("o" "Bibliography Book Entry"
                               plain
                               (file mega-default-bibliography-file)
                                "@book{%^{Last Name}%^{Year},
  author     = {%^{Authors}},
  editor     = {%^{Editor}},
  title      = {%^{Title}},
  publisher  = {%^{Publisher}},
  address    = {%^{Address}},
  day        = {%^{Day}},
  month      = {%^{Month}},
  year       = {%^{Year}},
  volume     = {%^{Volume}},
  edition    = {%^{Edition}},
  isbn       = {%^{ISBN}},
  lccn       = {%^{Library of Congress Call Number}},
  mrnumber   = {%^{MathSciNet Review Number}},
  note       = {%^{Note}},
  keywords   = {%^{keywords}}
}%?"
                                :empty-lines 1)
                              ("f" "Fact"
                               entry
                               (file+headline labbot-fact-file "Facts")
                               "** FACT %?
:PROPERTIES:
:FACT: %^{Fact}
:SUBJECT: %^{Subject}
:CONTEXT: %^{Context}
:CITEKEY: %^{CiteKey}
:URL: [[%^{Link}]]
:END:\n
%?"
                               :empty-lines 1)
                              ("i" "Idea"
                               entry
                               (file+headline labbot-ideas-file "Ideas")
                               "** IDEA %?
:PROPERTIES:
:DATE_CREATED: %T
:END:\n
%?"
                               :empty-lines 1)
                              ("1" "WerX Task"
                               entry
                               (file+headline werx-tasks-file "WerX Tasks Log")
                               "** TODO %?
:PROPERTIES:
:DATE_ADDED: %T
:STATUS: $^{Status}
:END:\n
%?"
                               :empty-lines 1)
                              ("2" "WerX Note"
                               entry
                               (file+headline werx-notes-file "WerX Notes")
                               "** NOTE %?
:PROPERTIES:
:DATE_ADDED: %U
:END:\n
%?"
                               :empty-lines 1)
                              ("3" "WerX Issue"
                               entry
                               (file+datetree werx-issues-file)
                               "** ISSUE %?
:PROPERTIES:
:DATE_ADDED: %T
:ISSUE_TYPE: %^{Complaint | Maintenance | Files | Other}
:ISSUE_LOC: %^{Location}
:ISSUE_PRIORITY: %^{Priority | Important | Moderate | Minor | Urgent}
:ISSUE_STATUS: %^{Open | Report | Closed}
:END:\n\n
*** DETAILS %^{Details}"
                               :empty-lines 1)
                              ("w" "Protocol Clip"
                               entry
                               (file exile-notes-file)
                               "** NOTE %^{Heading}
:PROPERTIES:
:DATE_ADDED: %U
:SUBJECT: %^{Subject}
:END:\n
%c"
                               :empty-lines 1)
                              ("x" "Protocol Link"
                               entry
                               (file library-annex-readlater-file)
                               "** READLATER [[%:link][%:description]]
:PROPERTIES:
:DATE_ADDED: %U
:SUBJECT: %^{Subject}
:DESCRIPTION: %:description
:URL: %:link
:END:\n
%?"
                               :empty-lines 1)
                              ("p" "Add Recipe"
                               entry
                               (file "/Users/Em/Documents/Dropbox/SwedishChef/cookbook.org")
                               "%(org-chef-get-recipe-from-url)"
                               :empty-lines 1)
                              ("z" "Crazy Ass Bullshit Log"
                               entry
                               (file "/Volumes/JumpShip/HomeBase/Family/crazy-log.org")
                               "** %^{Family Member}
:PROPERTIES:
:DATE_CREATED: %U
:BEHAVIOR: %^{Type of Crazy}
:SEVERITY: %^{Severity}
:DESCRIPTION: %?
:END:"
                               :empty-lines 1)))



(provide 'exile-capture-templates)
(message "Capture Templates Loaded!")
;;; exile-capture-templates.el ends here

