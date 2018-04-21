;;; visual-fill-column-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "visual-fill-column" "visual-fill-column.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from visual-fill-column.el

(autoload 'visual-fill-column-mode "visual-fill-column" "\
Wrap lines according to `fill-column' in `visual-line-mode'.\n\n(fn &optional ARG)" t nil)

(defvar global-visual-fill-column-mode nil "\
Non-nil if Global Visual-Fill-Column mode is enabled.\nSee the `global-visual-fill-column-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `global-visual-fill-column-mode'.")

(custom-autoload 'global-visual-fill-column-mode "visual-fill-column" nil)

(autoload 'global-visual-fill-column-mode "visual-fill-column" "\
Toggle Visual-Fill-Column mode in all buffers.\nWith prefix ARG, enable Global Visual-Fill-Column mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nVisual-Fill-Column mode is enabled in all buffers where\n`turn-on-visual-fill-column-mode' would do it.\nSee `visual-fill-column-mode' for more information on Visual-Fill-Column mode.\n\n(fn &optional ARG)" t nil)

(autoload 'visual-fill-column-split-window-sensibly "visual-fill-column" "\
Split WINDOW sensibly, unsetting its margins first.\nThis function unsets the window margins and calls\n`split-window-sensibly'.\n\nBy default, `split-window-sensibly' does not split a window\nvertically if it has wide margins, even if there is enough space\nfor a vertical split.  This function can be used as the value of\n`split-window-preferred-function' to enable vertically splitting\nwindows with wide margins.\n\n(fn &optional WINDOW)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "visual-fill-column" '("visual-fill-column-" "turn-on-visual-fill-column-mode")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; visual-fill-column-autoloads.el ends here
