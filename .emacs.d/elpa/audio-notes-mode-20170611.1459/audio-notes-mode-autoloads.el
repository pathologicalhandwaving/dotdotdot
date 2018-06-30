;;; audio-notes-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "audio-notes-mode" "audio-notes-mode.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from audio-notes-mode.el

(autoload 'anm/display-on-modeline "audio-notes-mode" "\
Interactive: toggle displaying number of audio notes on the modeline.
Noninteractive: deactivate with a nil argument, activate otherwise.

If T-OR-NIL-OR-COLOR is a string, also sets it as the color to
use for displaying (default is ForestGreen).

\(fn T-OR-NIL-OR-COLOR)" t nil)

(defadvice org-mobile-pull (after anm/after-org-mobile-pull-advice activate) "\
Check for audio notes after every org-pull." (when (and anm/hook-into-org-pull (anm/list-files)) (audio-notes-mode 1)))

(defvar audio-notes-mode nil "\
Non-nil if Audio-Notes mode is enabled.
See the `audio-notes-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `audio-notes-mode'.")

(custom-autoload 'audio-notes-mode "audio-notes-mode" nil)

(autoload 'audio-notes-mode "audio-notes-mode" "\
`audio-notes-mode' is a way to manage small audio recordings that you make in order to record thoughts.

When you activate it, it will play the first audio note in a
specific directory and wait for you to write it down. Once you're
finished, just call the next note with C-c C-j.
When you do this, `audio-notes-mode' will DELETE the note which
was already played and start playing the next one. Once you've
gone through all of them, `audio-notes-mode' deactivates itself.

\\{audio-notes-mode-map}

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "audio-notes-mode" '("anm/")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; audio-notes-mode-autoloads.el ends here
