;;; org-board-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-board" "org-board.el" (0 0 0 0))
;;; Generated autoloads from org-board.el

(defvar org-board-keymap (let ((keymap (make-sparse-keymap))) (define-key keymap "a" 'org-board-archive) (define-key keymap "r" 'org-board-archive-dry-run) (define-key keymap "n" 'org-board-new) (define-key keymap "k" 'org-board-delete-all) (define-key keymap "o" 'org-board-open) (define-key keymap "d" 'org-board-diff) (define-key keymap "3" 'org-board-diff3) (define-key keymap "c" 'org-board-cancel) (define-key keymap "x" 'org-board-run-after-archive-function) (define-key keymap "O" 'org-attach-reveal-in-emacs) keymap) "\
Keymap for org-board usage.")

(autoload 'org-board-archive "org-board" "\
Archive the URL given by the current entry's `URL' property.\n\nThe attachment directory and the unique ID are created if not\nalready present.  See the docstring of `org-attach-dir'.\n\nEvery snapshot is stored in its own timestamped folder, and is\nadded as a link in the `ARCHIVED_AT' property.\n\n(fn)" t nil)

(autoload 'org-board-archive-dry-run "org-board" "\
Show the `wget' invocation that will be run, in the echo area.\n\nThis command takes into account the current options.  It also\ncreates an `org-attach' directory and property if not already\npresent.\n\n(fn)" t nil)

(autoload 'org-board-expand-regexp-alist "org-board" "\
Add to `WGET_OPTIONS' w.r.t. `org-board-domain-regexp-alist'.\n\n(fn)" nil nil)

(autoload 'org-board-make-timestamp "org-board" "\
Return a timestamp suitable for the native operating system.\n\nSee also `org-board-archive-date-format'.\n\n(fn)" nil nil)

(autoload 'org-board-options-handler "org-board" "\
Expand `WGET_OPTIONS' w.r.t. `org-board-agent-header-alist'.\n\n(fn WGET-OPTIONS)" nil nil)

(autoload 'org-board-delete-all "org-board" "\
Delete all archives for the entry at point.\n\nThe parent attachment directory is not removed.  Note that ALL\nattachments to the entry are deleted.\n\n(fn)" t nil)

(autoload 'org-board-open "org-board" "\
Open the archived page pointed to by the `URL' property.\n\nWith prefix argument, temporarily flip the value of\n`org-board-default-browser' and open there instead.\n\nIf that does not work, open a list of HTML files from the\nmost recent archive, in Dired.\n\n(fn ARG)" t nil)

(autoload 'org-board-open-with "org-board" "\
Open visited file in default external program, return exit code.\n\n(fn FILENAME-STRING ARG)" nil nil)

(autoload 'org-board-extend-default-path "org-board" "\
Extend a filename to end in `/index.html'.\n\nExamples: `aurox.ch'  => `aurox.ch/index.html'\n          `aurox.ch/' => `aurox.ch/index.html'.\n\n(fn FILENAME-STRING)" nil nil)

(autoload 'org-board-new "org-board" "\
Ask for a URL, create a property with it, and archive it.\n\n(fn URL)" t nil)

(autoload 'org-board-diff "org-board" "\
Recursively diff two archives from the same entry.\n\n(fn ARCHIVE1 ARCHIVE2)" t nil)

(autoload 'org-board-diff3 "org-board" "\
Recursively diff three archives from the same entry.\n\n(fn ARCHIVE1 ARCHIVE2 ARCHIVE3)" t nil)

(autoload 'org-board-cancel "org-board" "\
Cancel the current org-board archival process.\n\nLeave the output buffer intact.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-board" '("org-board-" "pcomplete/org-mode/org-board/wget")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-board-autoloads.el ends here
