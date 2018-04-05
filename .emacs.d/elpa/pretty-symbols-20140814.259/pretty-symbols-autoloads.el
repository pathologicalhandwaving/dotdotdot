;;; pretty-symbols-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pretty-symbols" "pretty-symbols.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from pretty-symbols.el

(autoload 'pretty-symbols-mode "pretty-symbols" "\
Draw multi-character tokens as Unicode glyphs.\nFor example, in lisp modes draw λ instead of the characters\nl a m b d a. The on-disk file keeps the original characters.\n\nThis may sound like a neat trick, but be extra careful: it\nchanges the line length and can thus lead to surprises with\nrespect to alignment and layout.\n\nTo enable, add to the hooks of the major modes you want pretty\nsymbols in: (add-hook 'emacs-lisp-mode-hook 'pretty-symbols-mode).\n\n(fn &optional ARG)" t nil)

(defvar pretty-symbol-patterns (let ((lisps '(emacs-lisp-mode inferior-lisp-mode inferior-emacs-lisp-mode lisp-mode scheme-mode)) (c-like '(c-mode c++-mode go-mode java-mode js-mode perl-mode cperl-mode ruby-mode python-mode inferior-python-mode))) `((955 lambda "\\<lambda\\>" (,@lisps python-mode inferior-python-mode)) (402 lambda "\\<function\\>" (js-mode)) (8800 relational "!=" (,@c-like)) (8800 relational "/=" (,@lisps)) (8805 relational ">=" (,@c-like ,@lisps)) (8804 relational "<=" (,@c-like ,@lisps)) (8743 logical "&&" (,@c-like)) (8743 logical "\\<and\\>" (,@lisps)) (8744 logical "||" (,@c-like)) (8744 logical "\\<or\\>" (,@lisps)) (172 logical "\\<not\\>" (,@lisps)) (8709 nil "\\<nil\\>" (,@lisps)))) "\
A list of ((character category pattern major-modes) ...).\nFor each entry in the list, if the buffer's major mode (or one of\nits parent modes) is listed in MAJOR-MODES, occurrences of\nPATTERN will be shown as CHARACTER instead.\n\nThe replacement will only happen if CATEGORY is present in\n`pretty-symbol-categories' before this mode is enabled.\n\nNote that a major mode's presence in this list doesn't turn on\npretty-symbols-mode; you have to do so in the major mode's hook.")

(custom-autoload 'pretty-symbol-patterns "pretty-symbols" t)

(defvar pretty-symbol-categories (list 'lambda) "\
A list of the categories in `pretty-symbol-patterns' to enable.\n\nBy default, only lambdas (and the equivalents in other languages)\nare prettified, so that users can use this minor mode to add their\nown patterns, without being saddled with a whole lot of confusing\nsymbols.\n\nThis must be set before `pretty-symbols-mode' is enabled.\n\nThe available symbols are:\n\nlambda          Prettify the keyword for lambdas (anonymous functions).\nrelational      Relational operators: ≠ ≤ ≥\nlogical         Logical operators: ∧ ∨ ¬\n\nTo set this list from your init file:\n(setq pretty-symbol-categories '(lambda relational logical))\n")

(custom-autoload 'pretty-symbol-categories "pretty-symbols" t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pretty-symbols" '("pretty-symbol-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pretty-symbols-autoloads.el ends here
