;;; graphviz-dot-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "graphviz-dot-mode" "graphviz-dot-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from graphviz-dot-mode.el

(autoload 'graphviz-dot-mode "graphviz-dot-mode" "\
Major mode for the dot language. \\<graphviz-dot-mode-map>\nTAB indents for graph lines.\n\n\\[graphviz-dot-indent-graph]	- Indentation function.\n\\[graphviz-dot-preview]	- Previews graph in a buffer.\n\\[graphviz-dot-view]	- Views graph in an external viewer.\n\\[graphviz-dot-indent-line]	- Indents current line of code.\n\\[graphviz-dot-complete-word]	- Completes the current word.\n\\[electric-graphviz-dot-terminate-line]	- Electric newline.\n\\[electric-graphviz-dot-open-brace]	- Electric open braces.\n\\[electric-graphviz-dot-close-brace]	- Electric close braces.\n\\[electric-graphviz-dot-semi]	- Electric semi colons.\n\nVariables specific to this mode:\n\n  graphviz-dot-dot-program            (default `dot')\n       Location of the dot program.\n  graphviz-dot-view-command           (default `doted %s')\n       Command to run when `graphviz-dot-view' is executed.\n  graphviz-dot-view-edit-command      (default nil)\n       If the user should be asked to edit the view command.\n  graphviz-dot-save-before-view       (default t)\n       Automatically save current buffer berore `graphviz-dot-view'.\n  graphviz-dot-preview-extension      (default `png')\n       File type to use for `graphviz-dot-preview'.\n  graphviz-dot-auto-indent-on-newline (default t)\n       Whether to run `electric-graphviz-dot-terminate-line' when\n       newline is entered.\n  graphviz-dot-auto-indent-on-braces (default t)\n       Whether to run `electric-graphviz-dot-open-brace' and\n       `electric-graphviz-dot-close-brace' when braces are\n       entered.\n  graphviz-dot-auto-indent-on-semi (default t)\n       Whether to run `electric-graphviz-dot-semi' when semi colon\n       is typed.\n  graphviz-dot-toggle-completions  (default nil)\n       If completions should be displayed in the buffer instead of a\n       completion buffer when \\[graphviz-dot-complete-word] is\n       pressed repeatedly.\n\nThis mode can be customized by running \\[graphviz-dot-customize].\n\nTurning on Graphviz Dot mode calls the value of the variable\n`graphviz-dot-mode-hook' with no args, if that value is non-nil.\n\n(fn)" t nil)

(autoload 'graphviz-dot-preview "graphviz-dot-mode" "\
\n\n(fn)" t nil)

(autoload 'graphviz-turn-on-live-preview "graphviz-dot-mode" "\
Turns on live preview on save.\n\n(fn)" t nil)

(autoload 'graphviz-turn-off-live-preview "graphviz-dot-mode" "\
Turns off live preview on save.\n\n(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.dot\\'" . graphviz-dot-mode))

(add-to-list 'auto-mode-alist '("\\.gv\\'" . graphviz-dot-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "graphviz-dot-mode" '("graphviz-" "electric-graphviz-dot-" "dot-menu")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; graphviz-dot-mode-autoloads.el ends here
