;;; todo-settings.el
(require 'org)

;;; Code:

(setq org-todo-keywords
  '((sequence "TODO(t)"
      "NEXT(n)"
      "INPROGRESS"
      "WAITING"
      "PURGATORY"
      "|"
      "DONE")
    (type "EVENT(e)"
          "MEETING"
          "APPOINTMENT"
          "SCHEDULE"
          "|"
          "DONE")
    (sequence "READLATER(r)"
              "|"
              "READ")
    (sequence "ANNOTATE(a)"
              "|"
              "ARCHIVED")
    (sequence "WATCHLATER"
              "|"
              "WATCHED")
    (type "LISTEN"
          "DOWNLOAD"
          "PLAYLIST"
          "PODCAST"
          "|"
          "DONE(d)")
    (type "LIST"
          "|"
          "ARCHIVED")
    (type "QUESTION(q)"
          "ANSWER"
          "COMMENT"
          "|"
          "ARCHIVED")
    (sequence "LOOKUPLATER(l)"
              "|"
              "DONE(d)")
    (sequence "NOTE(n)"
              "|"
              "DONE(d)")
    (sequence "VOICEMEMO(v)"
              "TRANSCRIBE"
              "|"
              "ARCHIVED")
    (sequence "LOG"
              "|"
              "LOGGED")
    (sequence "WerX(w)"
              "FD"
              "AUDIT"
              "|"
              "DONE(d)")
    (type "ISSUE(i)"
          "BUG"
          "|"
          "REPORTED")
    (type "REPO"
          "PULL"
          "PUSH"
          "REVIEW"
          "|"
          "LOGGED")
    (sequence "RECIPE"
              "COOKBOOK"
              "|"
              "DONE")
    (type "PACKAGE"
          "|"
          "LOGGED")
    (type "INCOME(c)"
          "EXPENSE"
          "GIFT"
          "TAX"
          "|"
          "LOGGED")
    (type "BILL(b)"
          "PAYMENT"
          "PURCHASE"
          "BUY"
          "|"
          "LOGGED")))

(setq org-use-fast-todo-selection t)

(provide 'todo-settings)
(message "ToDo Settings Loaded!")
;;; todo-settings.el ends here
