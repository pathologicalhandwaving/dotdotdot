;;; ag-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ag" "ag.el" (0 0 0 0))
;;; Generated autoloads from ag.el

(autoload 'ag "ag" "\
Search using ag in a given DIRECTORY for a given literal search STRING,\nwith STRING defaulting to the symbol under point.\n\nIf called with a prefix, prompts for flags to pass to ag.\n\n(fn STRING DIRECTORY)" t nil)

(autoload 'ag-files "ag" "\
Search using ag in a given DIRECTORY for a given literal search STRING,\nlimited to files that match FILE-TYPE. STRING defaults to the\nsymbol under point.\n\nIf called with a prefix, prompts for flags to pass to ag.\n\n(fn STRING FILE-TYPE DIRECTORY)" t nil)

(autoload 'ag-regexp "ag" "\
Search using ag in a given directory for a given regexp.\nThe regexp should be in PCRE syntax, not Emacs regexp syntax.\n\nIf called with a prefix, prompts for flags to pass to ag.\n\n(fn STRING DIRECTORY)" t nil)

(autoload 'ag-project "ag" "\
Guess the root of the current project and search it with ag\nfor the given literal search STRING.\n\nIf called with a prefix, prompts for flags to pass to ag.\n\n(fn STRING)" t nil)

(autoload 'ag-project-files "ag" "\
Search using ag for a given literal search STRING,\nlimited to files that match FILE-TYPE. STRING defaults to the\nsymbol under point.\n\nIf called with a prefix, prompts for flags to pass to ag.\n\n(fn STRING FILE-TYPE)" t nil)

(autoload 'ag-project-regexp "ag" "\
Guess the root of the current project and search it with ag\nfor the given regexp. The regexp should be in PCRE syntax, not\nEmacs regexp syntax.\n\nIf called with a prefix, prompts for flags to pass to ag.\n\n(fn REGEXP)" t nil)

(defalias 'ag-project-at-point 'ag-project)

(defalias 'ag-regexp-project-at-point 'ag-project-regexp)

(autoload 'ag-dired "ag" "\
Recursively find files in DIR matching literal search STRING.\n\nThe PATTERN is matched against the full path to the file, not\nonly against the file name.\n\nThe results are presented as a `dired-mode' buffer with\n`default-directory' being DIR.\n\nSee also `ag-dired-regexp'.\n\n(fn DIR STRING)" t nil)

(autoload 'ag-dired-regexp "ag" "\
Recursively find files in DIR matching REGEXP.\nREGEXP should be in PCRE syntax, not Emacs regexp syntax.\n\nThe REGEXP is matched against the full path to the file, not\nonly against the file name.\n\nResults are presented as a `dired-mode' buffer with\n`default-directory' being DIR.\n\nSee also `find-dired'.\n\n(fn DIR REGEXP)" t nil)

(autoload 'ag-project-dired "ag" "\
Recursively find files in current project matching PATTERN.\n\nSee also `ag-dired'.\n\n(fn PATTERN)" t nil)

(autoload 'ag-project-dired-regexp "ag" "\
Recursively find files in current project matching REGEXP.\n\nSee also `ag-dired-regexp'.\n\n(fn REGEXP)" t nil)

(autoload 'ag-kill-buffers "ag" "\
Kill all `ag-mode' buffers.\n\n(fn)" t nil)

(autoload 'ag-kill-other-buffers "ag" "\
Kill all `ag-mode' buffers other than the current buffer.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ag" '("ag-" "ag/")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ag-autoloads.el ends here
