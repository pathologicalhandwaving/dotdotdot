;;; popwin-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "popwin" "popwin.el" (0 0 0 0))
;;; Generated autoloads from popwin.el

(autoload 'popwin:popup-buffer "popwin" "\
Show BUFFER in a popup window and return the popup window. If\nNOSELECT is non-nil, the popup window will not be selected. If\nSTICK is non-nil, the popup window will be stuck. If TAIL is\nnon-nil, the popup window will show the last contents. Calling\n`popwin:popup-buffer' during `popwin:popup-buffer' is allowed. In\nthat case, the buffer of the popup window will be replaced with\nBUFFER.\n\n(fn BUFFER &key (width popwin:popup-window-width) (height popwin:popup-window-height) (position popwin:popup-window-position) NOSELECT DEDICATED STICK TAIL)" t nil)

(autoload 'popwin:display-buffer "popwin" "\
Display BUFFER-OR-NAME, if possible, in a popup window, or as\nusual. This function can be used as a value of\n`display-buffer-function'.\n\n(fn BUFFER-OR-NAME &optional NOT-THIS-WINDOW)" t nil)

(autoload 'popwin:pop-to-buffer "popwin" "\
Same as `pop-to-buffer' except that this function will use\n`popwin:display-buffer-1' instead of `display-buffer'.\n\n(fn BUFFER &optional OTHER-WINDOW NORECORD)" t nil)

(autoload 'popwin:universal-display "popwin" "\
Call the following command interactively with letting\n`popwin:special-display-config' be\n`popwin:universal-display-config'. This will be useful when\ndisplaying buffers in popup windows temporarily.\n\n(fn)" t nil)

(autoload 'popwin:one-window "popwin" "\
Delete other window than the popup window. C-g restores the\noriginal window configuration.\n\n(fn)" t nil)

(autoload 'popwin:popup-buffer-tail "popwin" "\
Same as `popwin:popup-buffer' except that the buffer will be\n`recenter'ed at the bottom.\n\n(fn &rest SAME-AS-POPWIN:POPUP-BUFFER)" t nil)

(autoload 'popwin:find-file "popwin" "\
Edit file FILENAME with popup window by `popwin:popup-buffer'.\n\n(fn FILENAME &optional WILDCARDS)" t nil)

(autoload 'popwin:find-file-tail "popwin" "\
Edit file FILENAME with popup window by\n`popwin:popup-buffer-tail'.\n\n(fn FILE &optional WILDCARD)" t nil)

(autoload 'popwin:messages "popwin" "\
Display *Messages* buffer in a popup window.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "popwin" '("popwin")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; popwin-autoloads.el ends here
