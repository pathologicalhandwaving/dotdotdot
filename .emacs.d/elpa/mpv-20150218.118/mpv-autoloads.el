;;; mpv-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "mpv" "mpv.el" (0 0 0 0))
;;; Generated autoloads from mpv.el

(let ((loads (get 'mpv 'custom-loads))) (if (member '"mpv" loads) nil (put 'mpv 'custom-loads (cons '"mpv" loads))))

(autoload 'mpv-play "mpv" "\
Start an mpv process playing the file at PATH.\n\nYou can use this with `org-add-link-type' or `org-file-apps'.\nSee `mpv-start' if you need to pass further arguments and\n`mpv-default-options' for default options.\n\n(fn PATH)" t nil)

(autoload 'mpv-kill "mpv" "\
Kill the mpv process.\n\n(fn)" t nil)

(autoload 'mpv-pause "mpv" "\
Pause or unpause playback.\n\n(fn)" t nil)

(autoload 'mpv-insert-playback-position "mpv" "\
Insert the current playback position at point.\n\nWhen called with a non-nil ARG, insert a timer list item like `org-timer-item'.\n\n(fn &optional ARG)" t nil)

(autoload 'mpv-seek-to-position-at-point "mpv" "\
Jump to playback position as inserted by `mpv-insert-playback-position'.\n\nThis can be used with the `org-open-at-point-functions' hook.\n\n(fn)" t nil)

(autoload 'mpv-speed-set "mpv" "\
Set playback speed to FACTOR.\n\n(fn FACTOR)" t nil)

(autoload 'mpv-speed-increase "mpv" "\
Increase playback speed by STEPS factors of `mpv-speed-step'.\n\n(fn STEPS)" t nil)

(autoload 'mpv-speed-decrease "mpv" "\
Decrease playback speed by STEPS factors of `mpv-speed-step'.\n\n(fn STEPS)" t nil)

(autoload 'mpv-seek-forward "mpv" "\
Seek forward ARG seconds.\nIf ARG is numeric, it is used as the number of seconds.  Else each use\nof \\[universal-argument] will add another `mpv-seek-step' seconds.\n\n(fn ARG)" t nil)

(autoload 'mpv-seek-backward "mpv" "\
Seek backward ARG seconds.\nIf ARG is numeric, it is used as the number of seconds.  Else each use\nof \\[universal-argument] will add another `mpv-seek-step' seconds.\n\n(fn ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; mpv-autoloads.el ends here
