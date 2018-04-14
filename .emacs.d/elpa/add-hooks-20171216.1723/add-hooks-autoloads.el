;;; add-hooks-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "add-hooks" "add-hooks.el" (0 0 0 0))
;;; Generated autoloads from add-hooks.el

(autoload 'add-hooks-pair "add-hooks" "\
Call `add-hook' for each combined pair of items in HOOKS and FUNCTIONS.\n\nHOOKS can be a symbol or a list of symbols representing hook\nvariables (the `-hook' suffix is implied).  FUNCTIONS can be a\nsymbol, a lambda, or a list of either representing hook\nfunctions.  If lists are used, a function can be added to\nmultiple hooks and/or multiple functions can be added to a hook.\n\nExample:\n\n  ELISP> (add-hooks-pair '(css-mode sgml-mode) 'emmet-mode)\n  nil\n  ELISP> css-mode-hook\n  (emmet-mode)\n  ELISP> sgml-mode-hook\n  (emmet-mode)\n\n(fn HOOKS FUNCTIONS)" nil nil)

(autoload 'add-hooks "add-hooks" "\
Call `add-hooks-pair' on each cons pair in PAIRS.\n\nEach pair has a `car' for setting hooks and a `cdr' for setting\nfunctions to add to those hooks.  Pair values are passed to the\nHOOKS and FUNCTIONS arguments of `add-hooks-pair', respectively.\n\nUsage:\n\n  (add-hooks ((HOOKS . FUNCTIONS)...))\n\nExample:\n\n  ELISP> (add-hooks '(((css-mode sgml-mode) . emmet-mode)))\n  nil\n  ELISP> css-mode-hook\n  (emmet-mode)\n  ELISP> sgml-mode-hook\n  (emmet-mode)\n\n(fn PAIRS)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "add-hooks" '("add-hooks-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; add-hooks-autoloads.el ends here
