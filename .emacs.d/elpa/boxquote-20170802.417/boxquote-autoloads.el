;;; boxquote-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "boxquote" "boxquote.el" (0 0 0 0))
;;; Generated autoloads from boxquote.el

(autoload 'boxquote-title "boxquote" "\
Set the title of the current boxquote to TITLE.\n\nIf TITLE is an empty string the title is removed. Note that the title will\nbe formatted using `boxquote-title-format'.\n\n(fn TITLE)" t nil)

(autoload 'boxquote-region "boxquote" "\
Draw a box around the left hand side of a region bounding START and END.\n\n(fn START END)" t nil)

(autoload 'boxquote-buffer "boxquote" "\
Apply `boxquote-region' to a whole buffer.\n\n(fn)" t nil)

(autoload 'boxquote-insert-file "boxquote" "\
Insert the contents of a file, boxed with `boxquote-region'.\n\nIf `boxquote-title-files' is non-nil the boxquote will be given a title that\nis the result of applying `boxquote-file-title-function' to FILENAME.\n\n(fn FILENAME)" t nil)

(autoload 'boxquote-insert-buffer "boxquote" "\
Insert the contents of a buffer, boxes with `boxquote-region'.\n\nIf `boxquote-title-buffers' is non-nil the boxquote will be given a title that\nis the result of applying `boxquote-buffer-title-function' to BUFFER.\n\n(fn BUFFER)" t nil)

(autoload 'boxquote-kill-ring-save "boxquote" "\
Like `kill-ring-save' but remembers a title if possible.\n\nThe title is acquired by calling `boxquote-kill-ring-save-title'. The title\nwill be used by `boxquote-yank'.\n\n(fn)" t nil)

(autoload 'boxquote-yank "boxquote" "\
Do a `yank' and box it in with `boxquote-region'.\n\nIf the yanked entry was placed on the kill ring with\n`boxquote-kill-ring-save' the resulting boxquote will be titled with\nwhatever `boxquote-kill-ring-save-title' returned at the time.\n\n(fn)" t nil)

(autoload 'boxquote-defun "boxquote" "\
Apply `boxquote-region' the current defun.\n\n(fn)" t nil)

(autoload 'boxquote-paragraph "boxquote" "\
Apply `boxquote-region' to the current paragraph.\n\n(fn)" t nil)

(autoload 'boxquote-boxquote "boxquote" "\
Apply `boxquote-region' to the current boxquote.\n\n(fn)" t nil)

(autoload 'boxquote-describe-function "boxquote" "\
Call `describe-function' and boxquote the output into the current buffer.\n\nFUNCTION is the function to describe.\n\n(fn FUNCTION)" t nil)

(autoload 'boxquote-describe-variable "boxquote" "\
Call `describe-variable' and boxquote the output into the current buffer.\n\nVARIABLE is the variable to describe.\n\n(fn VARIABLE)" t nil)

(autoload 'boxquote-describe-key "boxquote" "\
Call `describe-key' on KEY and boxquote the output into the current buffer.\n\nIf the call to this command is prefixed with \\[universal-argument] you will also be\nprompted for a buffer. The key defintion used will be taken from that buffer.\n\n(fn KEY)" t nil)

(autoload 'boxquote-shell-command "boxquote" "\
Call `shell-command' with COMMAND and boxquote the output.\n\n(fn COMMAND)" t nil)

(autoload 'boxquote-where-is "boxquote" "\
Call `where-is' with DEFINITION and boxquote the result.\n\n(fn DEFINITION)" t nil)

(autoload 'boxquote-text "boxquote" "\
Insert TEXT, boxquoted.\n\n(fn TEXT)" t nil)

(autoload 'boxquote-narrow-to-boxquote "boxquote" "\
Narrow the buffer to the current boxquote.\n\n(fn)" t nil)

(autoload 'boxquote-narrow-to-boxquote-content "boxquote" "\
Narrow the buffer to the content of the current boxquote.\n\n(fn)" t nil)

(autoload 'boxquote-kill "boxquote" "\
Kill the boxquote and its contents.\n\n(fn)" t nil)

(autoload 'boxquote-fill-paragraph "boxquote" "\
Perform a `fill-paragraph' inside a boxquote.\n\n(fn ARG)" t nil)

(autoload 'boxquote-unbox-region "boxquote" "\
Remove a box created with `boxquote-region'.\n\n(fn START END)" t nil)

(autoload 'boxquote-unbox "boxquote" "\
Remove the boxquote that contains `point'.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "boxquote" '("boxquote-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; boxquote-autoloads.el ends here
