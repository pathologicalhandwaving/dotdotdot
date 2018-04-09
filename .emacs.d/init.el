;; init.el

;; loads precompiled config file
;; or tangles and loads literate org config file

;; Dont try to find/apply special file handlers for files loaded at startup

(let ((file-name-handler-alist nil))

  ;; If config pre-compiled then load it
  (if (file-exists-p (expand-file-name "emacs.elc" user-emacs-directory))
      (load-file (expand-file-name "emacs.elc" user-emacs-directory))
  ;; Otherwise use org-babel to tangle and load config
  (require 'org)
  (org-babel-load-file (expand-file-name "emacs.org" user-emacs-directory))))

;; end init.el
