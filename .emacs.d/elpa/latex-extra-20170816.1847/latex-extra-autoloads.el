;;; latex-extra-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "latex-extra" "latex-extra.el" (0 0 0 0))
;;; Generated autoloads from latex-extra.el

(autoload 'latex/setup-auto-fill "latex-extra" "\
Set the function used to fill a paragraph to `latex/auto-fill-function'.\n\n(fn)" t nil)

(autoload 'latex/setup-keybinds "latex-extra" "\
Obsolete function. Use (add-hook 'LaTeX-mode-hook #'latex-extra-mode) instead.\n\n(fn)" t nil)

(autoload 'latex-extra-mode "latex-extra" "\
Defines extra commands and keys for LaTeX-mode.\n\nTo activate just call\n    (add-hook 'LaTeX-mode-hook #'latex-extra-mode)\n\nThe additions of this package fall into the following three\ncategories:\n\n1-Key Compilation\n=================\n\nTired of hitting C-c C-c 4 times (latex, bibtex, latex, view) for\nthe document to compile? This defines a much needed command that does\n*everything* at once, and even handles compilation errors!\n\n  C-c C-a `latex/compile-commands-until-done'\n\nNavigation\n==========\n\nFive new keybindings are defined for navigating between\nsections/chapters. These are meant to be intuitive to people familiar\nwith `org-mode'.\n\n  C-c C-n `latex/next-section'\n    Goes forward to the next section-like command in the buffer (part,\n    chapter, (sub)section, or (sub)paragraph, whichever comes first).\n  C-c C-u `latex/up-section'\n    Goes backward to the previous section-like command containing this\n    one. For instance, if you're inside a subsection it goes up to the\n    section that contains it.\n  C-c C-f `latex/next-section-same-level'\n    Like next-section, except it skips anything that's \"lower-level\" then\n    the current one. For instance, if you're inside a subsection it finds\n    the next subsection (or higher), skipping any subsubsections or\n    paragraphs.\n  C-M-f `latex/forward-environment'\n    Skip over the next environment, or exit the current one, whichever\n    comes first.\n  C-M-e `latex/end-of-environment'\n    Exit the current environment, and skip over some whitespace\n    afterwards. (Like `LaTeX-find-matching-end', but a little more useful.)\n\n  C-M-b `latex/backward-environment'\n  C-M-a `latex/beginning-of-environment'\n  C-c C-p `latex/previous-section'\n  C-c C-b `latex/previous-section-same-level'\n    Same as above, but go backward.\n\nWhitespace Handling\n===================\n\n`latex-extra.el' improves `auto-fill-mode' so that it only applies to\ntext, not equations. To use this improvement, just activate\n`auto-fill-mode' as usual.\n\nIt also defines a new command:\n\n  C-c C-q `latex/clean-fill-indent-environment'\n    Completely cleans up the entire current environment. This involves:\n\n    1. Removing extraneous spaces and blank lines.\n    2. Filling text (and only text, not equations).\n    3. Indenting everything.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "latex-extra" '("latex")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; latex-extra-autoloads.el ends here
