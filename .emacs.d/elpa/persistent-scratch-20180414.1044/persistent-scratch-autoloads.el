;;; persistent-scratch-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "persistent-scratch" "persistent-scratch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from persistent-scratch.el

(autoload 'persistent-scratch-save "persistent-scratch" "\
Save the current state of scratch buffers.\nWhen FILE is non-nil, the state is saved to FILE; when nil or when called\ninteractively, the state is saved to `persistent-scratch-save-file'.\nWhat state exactly is saved is determined by `persistent-scratch-what-to-save'.\n\nWhen FILE is nil and `persistent-scratch-backup-directory' is non-nil, a copy of\n`persistent-scratch-save-file' is stored in that directory, with a name\nrepresenting the time of the last `persistent-scratch-new-backup' call.\n\n(fn &optional FILE)" t nil)

(autoload 'persistent-scratch-save-to-file "persistent-scratch" "\
Save the current state of scratch buffers.\nThe state is saved to FILE.\n\nWhen called interactively, prompt for the file name, which is the only\ndifference between this function and `persistent-scratch-save'.\n\nSee `persistent-scratch-save'.\n\n(fn FILE)" t nil)

(autoload 'persistent-scratch-restore "persistent-scratch" "\
Restore the scratch buffers.\nLoad FILE and restore all saved buffers to their saved state.\n\nFILE is a file to restore scratch buffers from; when nil or when called\ninteractively, `persistent-scratch-save-file' is used.\n\nThis is a potentially destructive operation: if there's an open buffer with the\nsame name as a saved buffer, the contents of that buffer will be overwritten.\n\n(fn &optional FILE)" t nil)

(autoload 'persistent-scratch-restore-from-file "persistent-scratch" "\
Restore the scratch buffers from a file.\nFILE is a file storing saved scratch buffer state.\n\nWhen called interactively, prompt for the file name, which is the only\ndifference between this function and `persistent-scratch-restore'.\n\nSee `persistent-scratch-restore'.\n\n(fn FILE)" t nil)

(defvar persistent-scratch-autosave-mode nil "\
Non-nil if Persistent-Scratch-Autosave mode is enabled.\nSee the `persistent-scratch-autosave-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `persistent-scratch-autosave-mode'.")

(custom-autoload 'persistent-scratch-autosave-mode "persistent-scratch" nil)

(autoload 'persistent-scratch-autosave-mode "persistent-scratch" "\
Autosave scratch buffer state.\nEvery `persistent-scratch-autosave-interval' seconds and when Emacs quits, the\nstate of all active scratch buffers is saved.\nThis uses `persistent-scratch-save', which see.\n\nToggle Persistent-Scratch-Autosave mode on or off.\nWith a prefix argument ARG, enable Persistent-Scratch-Autosave mode if ARG is\npositive, and disable it otherwise. If called from Lisp, enable the mode if ARG\nis omitted or nil, and toggle it if ARG is `toggle'.\n\\{persistent-scratch-autosave-mode-map}\n\n(fn &optional ARG)" t nil)

(autoload 'persistent-scratch-new-backup "persistent-scratch" "\
Create a new scratch buffer save backup file.\nThe next time `persistent-scratch-save' is called, it will create a new backup\nfile and use that file from now on.\n\n(fn)" t nil)

(autoload 'persistent-scratch-setup-default "persistent-scratch" "\
Enable `persistent-scratch-autosave-mode' and restore the scratch buffers.\nWhen an error occurs while restoring the scratch buffers, it's demoted to a\nmessage.\n\n(fn)" nil nil)

(autoload 'persistent-scratch-keep-n-newest-backups "persistent-scratch" "\
Return a backup filter that keeps N newest backups.\nThe returned function is suitable for `persistent-scratch-backup-filter'.\n\nNote: this function assumes that increasing time values result in\nlexicographically increasing file names when formatted using\n`persistent-scratch-backup-file-name-format'.\n\n(fn N)" nil nil)

(autoload 'persistent-scratch-keep-backups-not-older-than "persistent-scratch" "\
Return a backup filter that keeps backups newer than DIFF.\nDIFF may be either a number representing the number of second, or a time value\nin the format returned by `current-time' or `seconds-to-time'.\nThe returned function is suitable for `persistent-scratch-backup-filter'.\n\nNote: this function assumes that increasing time values result in\nlexicographically increasing file names when formatted using\n`persistent-scratch-backup-file-name-format'.\n\n(fn DIFF)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "persistent-scratch" '("persistent-scratch-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; persistent-scratch-autoloads.el ends here
