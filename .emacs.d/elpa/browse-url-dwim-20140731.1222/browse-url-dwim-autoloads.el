;;; browse-url-dwim-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "browse-url-dwim" "browse-url-dwim.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from browse-url-dwim.el

(let ((loads (get 'browse-url-dwim 'custom-loads))) (if (member '"browse-url-dwim" loads) nil (put 'browse-url-dwim 'custom-loads (cons '"browse-url-dwim" loads))))

(let ((loads (get 'browse-url-dwim-keys 'custom-loads))) (if (member '"browse-url-dwim" loads) nil (put 'browse-url-dwim-keys 'custom-loads (cons '"browse-url-dwim" loads))))

(defvar browse-url-dwim-mode nil "\
Non-nil if Browse-Url-Dwim mode is enabled.\nSee the `browse-url-dwim-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `browse-url-dwim-mode'.")

(custom-autoload 'browse-url-dwim-mode "browse-url-dwim" nil)

(autoload 'browse-url-dwim-mode "browse-url-dwim" "\
Turn on `browse-url-dwim-mode'.\n\nTurning on `browse-url-dwim' will activate keybindings as defined\nin `customize'.  It may also install a command alias for `browse'\nand `google' as controlled by `browse-url-dwim-install-aliases'.\n\nWhen called interactively with no prefix argument this command\ntoggles the mode.  With a prefix argument, it enables the mode\nif the argument is positive and otherwise disables the mode.\n\nWhen called from Lisp, this command enables the mode if the\nargument is omitted or nil, and toggles the mode if the argument\nis 'toggle.\n\n(fn &optional ARG)" t nil)

(autoload 'browse-url-dwim "browse-url-dwim" "\
Opens a URL in an external browser.\n\nWhen called interactively, `browse-url-dwim-get-url' will be\nused to find an appropriate URL.\n\nThe browser used is as configured for `browse-url'.\n\n(fn URL)" t nil)

(autoload 'browse-url-dwim-search "browse-url-dwim" "\
Perform an Internet search for TEXT, or region, or interactive input.\n\nIf TEXT is a URL, browse to page directly.  Otherwise\ninvoke an Internet search using TEXT.  When called interactively,\nTEXT may be taken from the region or entered at a prompt.\n\nOptional SEARCH-URL specifies the URL fragment used to construct\nthe search request.  If not specified, the customizable variable\n`browse-url-dwim-search-url' is used.\n\nIf GUESS is non-nil, an attempt will be made to extract a URL\nfrom the context around the point.  If successful, this command\nis equivalent to `browse-url-dwim'.\n\n(fn &optional TEXT SEARCH-URL GUESS)" t nil)

(autoload 'browse-url-dwim-guess "browse-url-dwim" "\
Perform Internet search or browse to URL under point, according to context.\n\nIdentical to calling `browse-url-dwim-search' with GUESS set\nto non-nil.\n\nOptional TEXT is a string to be submitted to the search\nengine.\n\nOptional SEARCH-URL overrides the default search engine\nURL.\n\n(fn &optional TEXT SEARCH-URL)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "browse-url-dwim" '("browse-url-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; browse-url-dwim-autoloads.el ends here
