;;; org-settings.el

;; org-bullets
(require 'org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)

(font-lock-add-keywords 'org-mode
                        '(("^ +\\([-*]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

;; End sentences with two spaces
(defun insert-two-spaces (N)
  (interactive "p")
  (when (looking-back "[!?.] " 2)
    (insert " ")))

(advice-add 'org-self-insert-command :after #'insert-two-spaces)

;; default notes file
(defvar org-default-notes-file "/Users/Em/Repos/ImInSpace/refile.org")


;; Literate Programming
(require 'org-babel)

(add-to-list 'org-src-lang-modes '("dot" . "graphviz-dot"))

(org-babel-do-load-languages 'org-babel-load-languages
                             '((shell      . t)
                               (js         . t)
                               (emacs-lisp . t)
                               (perl       . t)
                               (scala      . t)
                               (clojure    . t)
                               (python     . t)
                               (ruby       . t)
                               (dot        . t)
                               (css        . t)
                               (plantuml   . t)))

;; Fucking evaluate it and stop pestering me already
(setq org-confirm-babel-evaluate nil)

;; Fontify Code Blocks
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)

(provide 'org-settings)
(message "org-settings loaded")
;;; org-settings.el ends here
