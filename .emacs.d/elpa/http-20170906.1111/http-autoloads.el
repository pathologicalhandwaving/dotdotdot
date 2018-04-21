;;; http-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "http" "http.el" (0 0 0 0))
;;; Generated autoloads from http.el

(defvar-local http-hostname nil "\
Default hostname used when url is an endpoint.")

(put 'http-hostname 'safe-local-variable #'stringp)

(autoload 'http-edit-body-indirect "http" "\
Edit body in a indirect buffer.\n\n(fn)" t nil)

(autoload 'http-curl-command "http" "\
Kill current http request as curl command.\n\n(fn)" t nil)

(autoload 'http-process "http" "\
Process a http request.\n\nIf SYNC is non-nil executes the request synchronously.\n\n(fn &optional SYNC)" t nil)

(autoload 'http-mode "http" "\
Major mode for HTTP client.\n\n\\{http-mode-map}\n\n(fn)" t nil)

(autoload 'http-response-mode "http" "\
Major mode for HTTP responses from `http-mode'\n\n\\{http-response-mode-map}\n\n(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.http\\'" . http-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "http" '("http-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; http-autoloads.el ends here
