;;; zencoding-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "zencoding-mode" "zencoding-mode.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from zencoding-mode.el

(autoload 'zencoding-expand-line "zencoding-mode" "\
Replace the current line's zencode expression with the corresponding expansion.\nIf prefix ARG is given or region is visible call `zencoding-preview' to start an\ninteractive preview.\n\nOtherwise expand line directly.\n\nFor more information see `zencoding-mode'.\n\n(fn ARG)" t nil)

(autoload 'zencoding-mode "zencoding-mode" "\
Minor mode for writing HTML and CSS markup.\nWith zen coding for HTML and CSS you can write a line like\n\n  ul#name>li.item*2\n\nand have it expanded to\n\n  <ul id=\"name\">\n    <li class=\"item\"></li>\n    <li class=\"item\"></li>\n  </ul>\n\nThis minor mode defines keys for quick access:\n\n\\{zencoding-mode-keymap}\n\nHome page URL `http://www.emacswiki.org/emacs/ZenCoding'.\n\nSee also `zencoding-expand-line'.\n\n(fn &optional ARG)" t nil)

(autoload 'zencoding-expand-yas "zencoding-mode" "\
\n\n(fn)" t nil)

(autoload 'zencoding-preview "zencoding-mode" "\
Expand zencode between BEG and END interactively.\nThis will show a preview of the expanded zen code and you can\naccept it or skip it.\n\n(fn BEG END)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "zencoding-mode" '("zencoding-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; zencoding-mode-autoloads.el ends here
