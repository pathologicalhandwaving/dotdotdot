;;; babel-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "babel" "babel.el" (0 0 0 0))
;;; Generated autoloads from babel.el

(autoload 'babel "babel" "\
Use a web translation service to translate the message MSG.\nDisplay the result in a buffer *babel* unless the optional argument\nNO-DISPLAY is nil.\n\nIf the output is short enough to display in the echo area (which is\ndetermined by the variables `resize-mini-windows' and\n`max-mini-window-height'), it is shown there, but it is nonetheless\navailable in buffer `*babel*' even though that buffer is not\nautomatically displayed.\n\n(fn MSG &optional NO-DISPLAY ACCEPT-DEFAULT-SETUP)" t nil)

(autoload 'babel-region "babel" "\
Use a web translation service to translate the current region.\nWith prefix argument, yank the translation to the kill-ring.\n\n(fn START END &optional ARG)" t nil)

(autoload 'babel-as-string "babel" "\
Use a web translation service to translate MSG, returning a string.\n\n(fn MSG)" t nil)

(autoload 'babel-buffer "babel" "\
Use a web translation service to translate the current buffer.\nDefault is to present the translated text in a *babel* buffer.\nWith a prefix argument, replace the current buffer contents by the\ntranslated text.\n\n(fn)" t nil)

(autoload 'babel-version "babel" "\
Show the version number of babel in the minibuffer.\nIf optional argument HERE is non-nil, insert version number at point.\n\n(fn &optional HERE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "babel" '("babel-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; babel-autoloads.el ends here
