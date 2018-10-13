;;; org-settings.el
(require 'org)
(require 'org-sticky-header)
(require 'org-make-toc)


;;; Code:

;;; osx clipboard
(osx-clipboard-mode +1)

;; TOC Hook
(add-hook 'org-mode-hook #'org-make-toc-mode)


;; Visual Line Mode
(visual-fill-column-mode)
(column-number-mode t)


;; Scrolling
;;(setq scroll-margin 0)
(setq scroll-conservatively 10000)
(setq scroll-preserve-screen-position t)

;; Sentences end with single period
(setq sentence-end-double-space nil)



;;; TODO: Replace me with better indirect buffer script


;; Tree View Buffer
(defun my/open-tree-view ()
  "Open a clone of the current buffer to the left, resize it to 30 columns, and bind <mouse-1> to jump to the same position in the base buffer."
  (interactive)
  (let ((new-buffer-name (concat "<tree>" (buffer-name))))
    ;; Create tree buffer
    (split-window-right 30)
    (if (get-buffer new-buffer-name)
        (switch-to-buffer new-buffer-name)  ; Use existing tree buffer
      ;; Make new tree buffer
      (progn  (clone-indirect-buffer new-buffer-name nil t)
              (switch-to-buffer new-buffer-name)
              (read-only-mode)
              (outline-hide-body)
              (toggle-truncate-lines)

              ;; Do this twice in case the point is in a hidden line
              (dotimes (_ 2 (forward-line 0)))

              ;; Map keys
              (use-local-map (copy-keymap outline-mode-map))
              (local-set-key (kbd "q") 'delete-window)
              (mapc (lambda (key) (local-set-key (kbd key) 'my/jump-to-point-and-show))
                    '("<mouse-1>" "RET"))))))

(defun my/jump-to-point-and-show ()
  "Switch to a cloned buffer's base buffer and move point to the cursor position in the clone."
  (interactive)
  (let ((buf (buffer-base-buffer)))
    (unless buf
      (error "You need to be in a cloned buffer!"))
    (let ((pos (point))
          (win (car (get-buffer-window-list buf))))
      (if win
          (select-window win)
        (other-window 1)
        (switch-to-buffer buf))
      (goto-char pos)
      (when (invisible-p (point))
        (outline-show-branches)))))

;;; Keybinds:
;; org-capture keybind
(define-key global-map "\C-cc" 'org-capture)




;; Act on Whole Folds
;; Don't Lose Them

(require 'nxml-mode)


(setq org-special-ctrl-a/e t)
(setq org-special-ctrl-k t)
(setq org-yank-adjusted-subtrees t)

;; Catch Invisible Edits
(setq org-catch-invisible-edits 'error)


;; Return Follows Link
(setq org-return-follows-link t)

;; Empty Lines
(setq org-blank-before-new-entry '((heading . t)
                                   (plain-list-item . nil)))


;; Ellipsis
(setq org-ellipsis " ⁛")

;; org directory
(setq org-directory "/Users/Em/Dropbox/")
(setq org-default-notes-file (concat org-directory "~/Dropbox/AgendaBot/notes.org"))


;; Startup
(setq org-startup-align-all-tables t)
(setq org-startup-folded t)
(setq org-startup-indented t)
(setq org-startup-with-beamer-mode t)
(setq org-startup-with-inline-images t)
(setq org-startup-with-latex-preview t)

;; Fontify
(setq org-src-fontify-natively t)

;; TAB
(setq org-src-tab-acts-natively t)

(setq org-edit-src-content-indentation 0)


;; Subscripts and SuperScripts
(setq org-use-sub-superscripts '{})
(setq org-export-with-sub-superscripts '{})


;; Wrap text at col 70
(setq-default fill-column 80)
                                                                                                    
;; Indentation
(require 'dtrt-indent)




(provide 'org-settings)
(message "Org Basic Settings Loaded!")
;;; org-settings.el ends here
