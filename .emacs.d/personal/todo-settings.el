;;; todo-settings.el
(require 'org)

;;; Code:

(setq org-todo-keywords
  '((sequence "TODO(t)"
              "NEXT"
              "AFTER"
              "INPROGRESS"
              "WAITING"
              "HOLD"
              "|"
              "CANCELLED"
              "DONE")
    (sequence "PURGATORY"
              "|"
              "CANCELLED"
              "DONE")
    (type "CLIP"
          "REFILE"
          "NEW_FILE"
          "FILE"
          "|"
          "FILED")
    (type "EVENT(e)"
          "MEETING"
          "APPOINTMENT"
          "SCHEDULE"
          "ERRAND"
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
          "JOURNAL"
          "DIARY"
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
          "NOTE"
          "ANNOTATION"
          "|"
          "ARCHIVED")
    (type "RECORD"
          "MEDICAL_RECORD"
          "SYMPTOM_RECORD"
          "BEHAVIOR_RECORD"
          "|"
          "LOGGED")
    (type "NOTE(n)"
          "CLIP"
          "BOOK"
          "BOOK_MEMO"
          "|"
          "LOGGED")
    (sequence "INSPECT"
              "|"
              "INSPECTED"
              "LOGGED")
    (sequence "LOOKUPLATER(l)"
              "|"
              "LOGGED")
    (sequence "NOTE(n)"
              "|"
              "LOGGED")
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
              "THEOREM"
              "LAW"
              "UNIT"
              "|"
              "LOGGED")
    (type "CLIP"
          "|"
          "LOGGED")
    (type "ISSUE(i)"
          "BUG"
          "|"
          "REPORTED")
    (sequence "FIXME"
              "|"
              "FIXED")
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
          "SETTING"
          "|"
          "LOGGED")
    (type "ACCOUNT"
          "|"
          "LOGGED")
    (type "INCOME"
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
          "PAID")
    (sequence "REFILE"
              "|"
              "REFILED")
    (type "HomeBase(h)"
          "APARTMENT"
          "FIXME"
          "CLEAN"
          "TRASH"
          "GET"
          "|"
          "DONE")
    (type "LabBot"
          "SEQUENCE"
          "PROTOCOL"
          "METHOD"
          "ARGUMENT"
          "HYPOTHESIS"
          "PROCEDURE"
          "COMPONENT"
          "|"
          "LOGGED")
    (sequence "HABIT"
              "REPEAT"
              "|"
              "LOGGED")
    (type "Exile"
          "AudioBot"
          "AutoBot"
          "LibrarianBot"
          "HomeBase"
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
