;;; names-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "names" "names.el" (0 0 0 0))
;;; Generated autoloads from names.el

(defvar names--inside-make-autoload nil "\
Used in `make-autoload' to indicate we're making autoloads.")

(autoload 'define-namespace "names" "\
Inside the namespace NAME, execute BODY.\nNAME can be any symbol (not quoted), but it's highly recommended\nto use some form of separator (such as :, /, or -). For a\ncomplete description of this macro, please visit the frontpage\nwith \\[names-view-manual].\n\nIn summary, this macro has two main effects:\n\n1. Any definitions inside BODY will have NAME prepended to the\nsymbol given. Ex:\n\n    (define-namespace foo-\n    (defvar bar 1 \"docs\")\n    )\n\nexpands to\n\n    (defvar foo-bar 1 \"docs\")\n\n\n2. Any function calls and variable names get NAME prepended to\nthem if such a variable or function exists. Ex:\n\n    (define-namespace foo:\n    (defun message (x y) nil)\n    (message \"%s\" my-var)\n    )\n\nexpands to\n\n    (defun foo:message (x y) nil)\n    (foo:message \"%s\" my-var)\n\nNote how `message' is expanded to `foo:message' in the second\nform, because that function exists. Meanwhile, `bar' is left\nuntouched because `foo:bar' is not a known variable name.\n\n===============================\n\nAUTOLOAD\n\nIn order for `define-namespace' to work with \";;;###autoload\"\ncomments must replace all instances of \";;;###autoload\" inside\nyour `define-namespace' with `:autoload'.\nAfterwards, add an \";;;###autoload\" comment just above your\n`define-namespace'.\n\n===============================\n\nKEYWORDS\n\nImmediately after NAME you may add keywords which customize the\nbehaviour of `define-namespace'. For a list of possible keywords\nand a description of their effects, see the variable\n`names--keyword-list'.\n\n(fn NAME [KEYWORD ...] BODY)" nil t)

(function-put 'define-namespace 'lisp-indent-function '(lambda (&rest x) 0))

(eval-after-load 'find-func '(defadvice find-function-search-for-symbol (around names-around-find-function-search-for-symbol-advice (symbol type library) activate) "Make sure `find-function-search-for-symbol' understands namespaces." ad-do-it (ignore-errors (unless (cdr ad-return-value) (with-current-buffer (car ad-return-value) (search-forward-regexp "^(define-namespace\\_>") (skip-chars-forward "\15\n[:blank:]") (let* ((names--regexp (concat "\\`" (regexp-quote (symbol-name (read (current-buffer)))))) (short-symbol (let ((name (symbol-name symbol))) (when (string-match names--regexp name) (intern (replace-match "" nil nil name)))))) (when short-symbol (ad-set-arg 0 short-symbol) ad-do-it)))))))

(defadvice make-autoload (around names-before-make-autoload-advice (form file &optional expansion) activate) "\
Make sure `make-autoload' understands `define-namespace'.\nUse the `names--inside-make-autoload' variable to indicate to\n`define-namespace' that we're generating autoloads." (require 'names) (if (null (eq (car-safe form) 'define-namespace)) ad-do-it (setq names--inside-make-autoload t) (setq form (macroexpand form)) (setq names--inside-make-autoload nil) (if (version< emacs-version "24.3") (setq ad-return-value (cons 'progn (mapcar (lambda (x) (names--make-autoload-compat x file)) (cdr form)))) (ad-set-arg 2 'expansion) (ad-set-arg 0 form) ad-do-it)))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "names" '("names-")))

;;;***

;;;### (autoloads nil "names-dev" "names-dev.el" (0 0 0 0))
;;; Generated autoloads from names-dev.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "names-dev" '("names-" "find-function-read")))

;;;***

;;;### (autoloads nil nil ("names-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; names-autoloads.el ends here
