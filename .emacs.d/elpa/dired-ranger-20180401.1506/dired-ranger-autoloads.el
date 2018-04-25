;;; dired-ranger-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "dired-ranger" "dired-ranger.el" (0 0 0 0))
;;; Generated autoloads from dired-ranger.el

(autoload 'dired-ranger-copy "dired-ranger" "\
Place the marked items in the copy ring.\n\nWith non-nil prefix argument, add the marked items to the current\nselection.  This allows you to gather files from multiple dired\nbuffers for a single paste.\n\n(fn ARG)" t nil)

(autoload 'dired-ranger-paste "dired-ranger" "\
Copy the items from copy ring to current directory.\n\nWith raw prefix argument \\[universal-argument], do not remove\nthe selection from the stack so it can be copied again.\n\nWith numeric prefix argument, copy the n-th selection from the\ncopy ring.\n\n(fn ARG)" t nil)

(autoload 'dired-ranger-move "dired-ranger" "\
Move the items from copy ring to current directory.\n\nThis behaves like `dired-ranger-paste' but moves the files\ninstead of copying them.\n\n(fn ARG)" t nil)

(autoload 'dired-ranger-bookmark "dired-ranger" "\
Bookmark current dired buffer.\n\nCHAR is a single character (a-zA-Z0-9) representing the bookmark.\nReusing a bookmark replaces the content.  These bookmarks are not\npersistent, they are used for quick jumping back and forth\nbetween currently used directories.\n\n(fn CHAR)" t nil)

(autoload 'dired-ranger-bookmark-visit "dired-ranger" "\
Visit bookmark CHAR.\n\nIf the associated dired buffer was killed, we try to reopen it\naccording to the setting `dired-ranger-bookmark-reopen'.\n\nThe special bookmark `dired-ranger-bookmark-LRU' always jumps to\nthe least recently visited dired buffer.\n\nSee also `dired-ranger-bookmark'.\n\n(fn CHAR)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dired-ranger" '("dired-ranger-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dired-ranger-autoloads.el ends here
