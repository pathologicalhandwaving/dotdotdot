;;; sml-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "sml-mode" "sml-mode.el" (0 0 0 0))
;;; Generated autoloads from sml-mode.el

(defalias 'run-sml 'sml-run)

(autoload 'sml-run "sml-mode" "\
Run the program CMD with given arguments ARG.\nThe command is run in buffer *CMD* using mode `inferior-sml-mode'.\nIf the buffer already exists and has a running process, then\njust go to this buffer.\n\nIf a prefix argument is used, the user is also prompted for a HOST\non which to run CMD using `remote-shell-program'.\n\n(Type \\[describe-mode] in the process's buffer for a list of commands.)\n\n(fn CMD ARG &optional HOST)" t nil)

(add-to-list 'auto-mode-alist '("\\.s\\(ml\\|ig\\)\\'" . sml-mode))

(autoload 'sml-mode "sml-mode" "\
\\<sml-mode-map>Major mode for editing Standard ML code.\nThis mode runs `sml-mode-hook' just before exiting.\nSee also (info \"(sml-mode)Top\").\n\\{sml-mode-map}\n\n(fn)" t nil)

(add-to-list 'completion-ignored-extensions ".cm/")

(add-to-list 'auto-mode-alist '("\\.cm\\'" . sml-cm-mode))

(autoload 'sml-cm-mode "sml-mode" "\
Major mode for SML/NJ's Compilation Manager configuration files.\n\n(fn)" t nil)

(autoload 'sml-lex-mode "sml-mode" "\
Major Mode for editing ML-Lex files.\n\n(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.grm\\'" . sml-yacc-mode))

(autoload 'sml-yacc-mode "sml-mode" "\
Major Mode for editing ML-Yacc files.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sml-mode" '("sml-" "inferior-sml-" "font-lock-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; sml-mode-autoloads.el ends here
