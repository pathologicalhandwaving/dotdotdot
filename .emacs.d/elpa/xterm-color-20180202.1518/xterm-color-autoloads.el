;;; xterm-color-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "xterm-color" "xterm-color.el" (0 0 0 0))
;;; Generated autoloads from xterm-color.el

(autoload 'xterm-color-filter "xterm-color" "\
Translate ANSI color sequences in STRING into text properties.\nReturns new STRING with text properties applied.\n\nThis function will check if `xterm-color-preserve-properties' is\nset to T and only call `xterm-color-filter-real' on substrings\nthat do not have text properties applied (passing through the rest\nunmodified).  Preserving properties in this fashion is really a hack\nand not very robust as there may be situations where text properties\nare applied on ANSI data, which will mess up the state machine.\nIt works fine with and is really meant for eshell though.\n\nThis can be inserted into `comint-preoutput-filter-functions'.\n\n(fn STRING)" nil nil)

(autoload 'xterm-color-colorize-buffer "xterm-color" "\
Apply `xterm-color-filter' to current buffer, and replace its contents.\n\n(fn)" t nil)

(autoload 'xterm-color-test "xterm-color" "\
Create and display a new buffer that contains ANSI control sequences.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "xterm-color" '("xterm-color-" "+xterm-color--")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; xterm-color-autoloads.el ends here
