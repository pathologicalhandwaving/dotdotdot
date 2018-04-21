;;; auto-dictionary-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "auto-dictionary" "auto-dictionary.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from auto-dictionary.el

(autoload 'auto-dictionary-mode "auto-dictionary" "\
A minor mode that automatically sets `ispell-dictionary`.\n\n(fn &optional ARG)" t nil)

(autoload 'adict-guess-dictionary "auto-dictionary" "\
Automatically change ispell dictionary based on buffer language.\nCalls `ispell-change-dictionary' and runs `adict-change-dictionary-hook'.  If\nBUFFER is nil, the current buffer is used.  If IDLE-ONLY is set, abort\nwhen an input event occurs.\n\n(fn &optional IDLE-ONLY)" t nil)

(autoload 'adict-change-dictionary "auto-dictionary" "\
Set buffer language to LANG and stop detecting it automatically.\n\n(fn &optional LANG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "auto-dictionary" '("adict-" "switch-language-hook")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; auto-dictionary-autoloads.el ends here
