;;; turing-machine-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "turing-machine" "turing-machine.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from turing-machine.el

(autoload 'turing-machine-mode "turing-machine" "\
Major mode for editing turing machine code.\n\n(fn)" t nil)

(autoload 'turing-machine-execute "turing-machine" "\
Run the turing machine.\n\nInitial state will come from a comment like:\n\n  ;; INITIAL: 11_11\n\nin the code buffer. If no such comment exists, a minibuffer\nprompt will ask for the initial state. With prefix argument ARG,\nalways prompt for initial state.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "turing-machine" '("turing-machine-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; turing-machine-autoloads.el ends here
