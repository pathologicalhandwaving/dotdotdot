;;; cdlatex-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "cdlatex" "cdlatex.el" (0 0 0 0))
;;; Generated autoloads from cdlatex.el

(autoload 'turn-on-cdlatex "cdlatex" "\
Turn on CDLaTeX minor mode.\n\n(fn)" nil nil)

(autoload 'cdlatex-mode "cdlatex" "\
Minor mode for editing scientific LaTeX documents.  Here is a\nlist of features: \\<cdlatex-mode-map>\n\n                           KEYWORD COMMANDS\n                           ----------------\nMany CDLaTeX commands are activated with an abbrev-like mechanism.\nWhen a keyword is typed followed `\\[cdlatex-tab]', the keyword is deleted\nfrom the buffer and a command is executed.  You can get a full list\nof these commands with `\\[cdlatex-command-help]'.\nFor example, when you type `fr<TAB>', CDLaTeX will insert `\\frac{}{}'.\n\nWhen inserting templates like '\\frac{}{}', the cursor is positioned\nproperly.  Use `\\[cdlatex-tab]' to move through templates.  `\\[cdlatex-tab]' also kills\nunnecessary braces around subscripts and superscripts at point.\n\n                     MATH CHARACTERS AND ACCENTS\n                     ---------------------------\n\\[cdlatex-math-symbol]  followed by any character inserts a LaTeX math character\n      e.g. \\[cdlatex-math-symbol]e   => \\epsilon\n\\[cdlatex-math-symbol]\\[cdlatex-math-symbol] followed by any character inserts other LaTeX math character\n      e.g. \\[cdlatex-math-symbol]\\[cdlatex-math-symbol]e  => \\varepsilon\n\\[cdlatex-math-modify]  followed by character puts a math accent on a letter or symbol\n      e.g. \\[cdlatex-math-symbol]a\\[cdlatex-math-modify]~ => \\tilde{\\alpha}\n\nCDLaTeX is aware of the math environments in LaTeX and modifies the\nworkings of some functions according to the current status.\n\n                             ONLINE HELP\n                             -----------\nAfter pressing \\[cdlatex-math-symbol] or \\[cdlatex-math-modify], CDLaTeX waits for a short time for the second character.\nIf that does not come, it will pop up a window displaying the available\ncharacters and their meanings.\n\n                             KEY BINDINGS\n                             ------------\n\\{cdlatex-mode-map}\n\nUnder X, many functions will be available also in a menu on the menu bar.\n\nEntering cdlatex-mode calls the hook cdlatex-mode-hook.\n------------------------------------------------------------------------------\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cdlatex" '("cdlatex-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cdlatex-autoloads.el ends here
