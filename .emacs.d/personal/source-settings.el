;;; source-settings.el
(require 'org)
(require 'shell-pop)
;;; Code:

;; Babel
(setq python-shell-completion-native-enable nil)
(setq org-babel-python-command "python3")

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (emacs-lisp . t)
   (org . t)
   (shell . t)
   (python . t)
   (gnuplot . t)
   (octave . t)
   (R . t)
   (dot . t)
   (awk . t)))

(setq org-confirm-babel-evaluate nil)


;; Shell-Pop
(setq shell-pop-default-directory "/Users/Em/")

(setq shell-pop-term-shell "/bin/bash")

(setq shell-pop-window-size 30)
(setq shell-pop-full-span t)
(setq shell-pop-window-position "top")



(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)

(provide 'source-settings)
(message "Source Settings Loaded!")
;;; source-settings.el ends here
