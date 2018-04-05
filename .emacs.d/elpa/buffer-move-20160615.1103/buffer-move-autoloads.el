;;; buffer-move-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "buffer-move" "buffer-move.el" (0 0 0 0))
;;; Generated autoloads from buffer-move.el

(autoload 'buf-move-up "buffer-move" "\
Swap the current buffer and the buffer above the split.\n   If there is no split, ie now window above the current one, an\n   error is signaled.\n\n(fn)" t nil)

(autoload 'buf-move-down "buffer-move" "\
Swap the current buffer and the buffer under the split.\n   If there is no split, ie now window under the current one, an\n   error is signaled.\n\n(fn)" t nil)

(autoload 'buf-move-left "buffer-move" "\
Swap the current buffer and the buffer on the left of the split.\n   If there is no split, ie now window on the left of the current\n   one, an error is signaled.\n\n(fn)" t nil)

(autoload 'buf-move-right "buffer-move" "\
Swap the current buffer and the buffer on the right of the split.\n   If there is no split, ie now window on the right of the current\n   one, an error is signaled.\n\n(fn)" t nil)

(autoload 'buf-move "buffer-move" "\
Begin moving the current buffer to different windows.\n\nUse the arrow keys to move in the desired direction.  Pressing\nany other key exits this function.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "buffer-move" '("buf")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; buffer-move-autoloads.el ends here
