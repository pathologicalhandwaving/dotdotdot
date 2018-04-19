;;; worf-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "worf" "worf.el" (0 0 0 0))
;;; Generated autoloads from worf.el

(autoload 'worf-mode "worf" "\
Minor mode for navigating and editing `org-mode' files.\n\nWhen `worf-mode' is on, various unprefixed keys call commands\nif the (looking-back \"^*+\") is true.\n\n\\{worf-mode-map}\n\n(fn &optional ARG)" t nil)

(autoload 'worf-archive "worf" "\
\n\n(fn)" t nil)

(autoload 'worf-archive-and-commit "worf" "\
\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "worf" '("worf-" "hydra-" "company-begin-commands" "ac-trigger-commands")))

;;;***

;;;### (autoloads nil nil ("elpa.el" "worf-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; worf-autoloads.el ends here
