;;; todo-settings.el
(require 'org)

;;; Code:

(setq org-todo-keywords
  '((sequence "TODO(t)"
      "NEXT(n)"
      "INPROGRESS"
      "WAITING"
      "HOLD"
      "|"
      "DONE")
    (type "PURGATORY"
          "|"
          "ACTIVE")
    (type "CLIP"
          "REFILE"
          "NEW_FILE"
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
          "AUDIOBOOK"
          "|"
          "DONE(d)")
    (type "Captain's Log"
          "|"
          "ARCHIVED")
    (type "LIST"
          "|"
          "ARCHIVED")
    (type "QUESTION(q)"
          "ANSWER"
          "|"
          "ARCHIVED")
    (type "CLIP"
          "QUOTE"
          "SCRAPED"
          "|"
          "ARCHIVED")
    (type "RECORD"
          "MEDICAL_RECORD"
          "SYMPTOM_RECORD"
          "BEHAVIOR_RECORD"
          "|"
          "LOGGED")
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
    (sequence "DEFINITION"
              "|"
              "LOGGED")
    (type "CLIP"
          "|"
          "LOGGED")
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
          "TOOL"
          "|"
          "LOGGED")
    (type "ACCOUNT"
          "|"
          "LOGGED")
    (type "INCOME(c)"
          "EXPENSE"
          "GIFT"
          "TAX"
          "|"
          "LOGGED")
    (type "PROJECT"
          "PROJECT_LOG"
          "|"
          "DONE")
    (type "BILL(b)"
          "PAYMENT"
          "PURCHASE"
          "BUY"
          "|"
          "LOGGED")
    (sequence "REFILE"
              "|"
              "REFILED")
    (type "Exile"
          "AudioBot"
          "LibrarianBot"
          "Monopoly"
          "Ship"
          "LabBot"
          "Docs"
          "Diary"
          "Journal"
          "Archive"
          "SpaceBot"
          "SwedishChef"
          "TeXBot"
          "|"
          "LOGGED")))

(setq org-use-fast-todo-selection t)

(provide 'todo-settings)
(message "ToDo Settings Loaded!")
;;; todo-settings.el ends here
