  (setq org-todo-keywords
  '((sequence "TODO"
      "MAYBE"
      "NEXT"
      "STARTED"
      "WAITING"
      "INPROGRESS"
      "DELEGATED"
      "|"
      "DONE"
      "DEFERRED"
      "CANCELLED"))
  '((sequence "EVENT"
              "WORK"
              "MEETING"
              "APPOINTMENT"
              "SESSION"
              "|"
              "RESCHEDULED"
              "CANCELLED"))
  )

  (setq org-todo-keyword-faces
    '(("PROJECT" :background "blue" :foreground "black" :weight bold :box (:line-width 2 :style none))
      ("TODO" :background "red1" :foreground "black" :weight bold :box (:line-width 2 :style none))
      ("NEXT" :background "OrangeRed1" :foreground "black" :weight bold :box (:line-width 2 :style none))
      ("STARTED" :background "DarkOrange2" :foreground "black" :weight bold :box (:line-width 2 :style none))
      ("WAITING" :background "SlateGray4" :foreground "black" :weight bold :box (:line-width 2 :style none))
      ("DEFERRED" :background "SlateGray3" :foreground "black" :weight bold :box (:line-width 2 :style none))
      ("DELEGATED" :background "SlateGray4" :foreground "black" :weight bold :box (:line-width 2 :style none))
      ("MAYBE" :background "pink3" :foreground "black" :weight bold :box (:line-width 2 :style none))
      ("APPOINTMENT" :background "CornflowerBlue" :foreground "black" :weight bold :box (:line-width 2 :style none))
      ("DONE" :foreground "thistle4" :weight bold :strike-through)
      ("CANCELLED" :background "thistle4" :foreground "black" :weight regular :strike-through)))

