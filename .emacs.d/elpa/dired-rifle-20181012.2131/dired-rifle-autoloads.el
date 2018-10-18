;;; dired-rifle-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "dired-rifle" "dired-rifle.el" (0 0 0 0))
;;; Generated autoloads from dired-rifle.el

(autoload 'dired-rifle "dired-rifle" "\
Call rifle(1) on the currently focused file in dired.

With `\\[universal-argument]' show the matching rifle rules for
manual selection.  The output is discarded.

With `\\[universal-argument] \\[universal-argument]' the output
is additionally saved to a buffer named *dired-rifle*.

With a numeric prefix argument ARG, run ARGth rifle rule instead
of the default one (0th).  The output is discarded.

\(fn ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dired-rifle" '("rifle-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dired-rifle-autoloads.el ends here
