;;; svg-clock-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "svg-clock" "svg-clock.el" (0 0 0 0))
;;; Generated autoloads from svg-clock.el

(autoload 'svg-clock-insert "svg-clock" "\
Insert a self-updating image displaying an analog clock at point.\nOptional argument SIZE the size of the clock in pixels.\nOptional argument FOREGROUND the foreground color.\nOptional argument BACKGROUND the background color.\nOptional argument OFFSET the offset in seconds between current and displayed\ntime.\n\n(fn &optional SIZE FOREGROUND BACKGROUND OFFSET)" nil nil)

(autoload 'svg-clock "svg-clock" "\
Start/stop the svg clock.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "svg-clock" '("svg-clock-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; svg-clock-autoloads.el ends here
