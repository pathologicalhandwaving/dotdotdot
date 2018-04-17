;;; ipretty-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ipretty" "ipretty.el" (0 0 0 0))
;;; Generated autoloads from ipretty.el

(autoload 'ipretty-last-sexp "ipretty" "\
Pretty-print the last sexp into the current buffer.\nWhen TRUNCATE is non-nil or with a prefix argument, long output\nis truncated. See the documentation of `eval-print-last-sexp' for\nmore information on what affects truncation.\n\n(fn &optional TRUNCATE)" t nil)

(autoload 'ipretty-last-sexp-other-buffer "ipretty" "\
Display the last sexp pretty-printed in other buffer.\nIf BUFFER-NAME (a string)is provided it will be used to name the\nbuffer, otherwise the default `*pp-display-expression*' is used.\n\n(fn &optional BUFFER-NAME)" t nil)

(defvar ipretty-mode nil "\
Non-nil if Ipretty mode is enabled.\nSee the `ipretty-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `ipretty-mode'.")

(custom-autoload 'ipretty-mode "ipretty" nil)

(autoload 'ipretty-mode "ipretty" "\
Toggle ipretty mode globally.\n   With no argument, this command toggles the mode.\n   Non-null prefix argument turns on the mode.\n   Null prefix argument turns off the mode.\n\n(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ipretty-autoloads.el ends here
