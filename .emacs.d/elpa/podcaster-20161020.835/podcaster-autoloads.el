;;; podcaster-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "podcaster" "podcaster.el" (0 0 0 0))
;;; Generated autoloads from podcaster.el

(autoload 'podcaster "podcaster" "\
Play podcasts.\n\n(fn)" t nil)

(autoload 'podcaster-stop "podcaster" "\
Stop the currently-playing podcast.\n\n(fn)" t nil)

(autoload 'podcaster-pause "podcaster" "\
\n\n(fn)" t nil)

(autoload 'podcaster-resume "podcaster" "\
Resume the currently-playing podcast.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "podcaster" '("podcaster-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; podcaster-autoloads.el ends here
