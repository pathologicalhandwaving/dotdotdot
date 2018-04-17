;;; osx-browse-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "osx-browse" "osx-browse.el" (0 0 0 0))
;;; Generated autoloads from osx-browse.el

(let ((loads (get 'osx-browse 'custom-loads))) (if (member '"osx-browse" loads) nil (put 'osx-browse 'custom-loads (cons '"osx-browse" loads))))

(let ((loads (get 'osx-browse-keys 'custom-loads))) (if (member '"osx-browse" loads) nil (put 'osx-browse-keys 'custom-loads (cons '"osx-browse" loads))))

(defvar osx-browse-mode nil "\
Non-nil if Osx-Browse mode is enabled.\nSee the `osx-browse-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `osx-browse-mode'.")

(custom-autoload 'osx-browse-mode "osx-browse" nil)

(autoload 'osx-browse-mode "osx-browse" "\
Turn on `osx-browse-mode'.\n\nTurning on osx-browse-mode will direct `browse-url' to use this\npackage when opening external browsers, and activate keybindings\nas defined in `customize'.  It may also set up certain aliases\nwhen `osx-browse-install-aliases' is set.\n\nWhen called interactively with no prefix argument, this command\ntoggles the mode.  With a prefix argument, it enables the mode\nif the argument is positive and otherwise disables the mode.\n\nWhen called from Lisp, this command enables the mode if the\nargument is omitted or nil, and toggles the mode if the argument\nis 'toggle.\n\n(fn &optional ARG)" t nil)

(autoload 'osx-browse-url "osx-browse" "\
Open URL in an external browser on OS X.\n\nWhen called interactively, `browse-url-dwim-get-url' is used\nto detect URL from the edit context and prompt for user input\nas needed.\n\nOptional NEW-WINDOW is not currently respected.\n\nOptional BROWSER requests a specific browser, using an Apple\nbundle ID, eg \"com.apple.Safari\" or application name, eg\n\"Webkit.app\".  When BROWSER is not set, the customizable\nvariable `osx-browse-prefer-browser' is consulted, and if that\nvalue is nil, the system default is used.\n\nOptional FOCUS can be set to 'foreground or 'background to\ncontrol whether the external process changes the focus.  If\nBACKGROUND is not set, the customizable variable\n`osx-browse-prefer-background' is consulted.\n\nWhen called interactively, specifying a negative prefix argument\nis equivalent to setting FOCUS to 'background.  Any other prefix\nargument is equivalent to setting FOCUS to 'foreground.\n\n(fn URL &optional NEW-WINDOW BROWSER FOCUS)" t nil)

(autoload 'osx-browse-search "osx-browse" "\
Perform an Internet search for TEXT, or region, or interactive input.\n\nIf TEXT is a URL, browse to page directly.  Otherwise invoke an\nInternet search using TEXT.  When called interactively, TEXT may\nbe taken from the region or entered at a prompt.\n\nNEW-WINDOW, BROWSER, and FOCUS are as documented for\n`osx-browse-url'.\n\nOptional SEARCH-URL specifies the URL fragment used to construct\nthe search request.  If not specified, the customizable variable\n`browse-url-dwim-search-url' is consulted.\n\n(fn TEXT &optional NEW-WINDOW BROWSER FOCUS SEARCH-URL)" t nil)

(autoload 'osx-browse-guess "osx-browse" "\
Perform an Internet search or browses to URL according to context.\n\nIdentical to `osx-browse-url-search' except that an attempt will\nbe made to extract a URL from TEXT or edit context before\nprompting the user.\n\nWhen a region is not active and the point is on a probable URL,\nthat value will be used and the user will not be prompted.\n\nNEW-WINDOW, BROWSER, and FOCUS are as documented for\n`osx-browse-url'.\n\nOptional SEARCH-URL specifies the URL fragment used to construct\nthe search request.  If not specified, the customizable variable\n`browse-url-dwim-search-url' is consulted.\n\n(fn TEXT &optional NEW-WINDOW BROWSER FOCUS SEARCH-URL)" t nil)

(autoload 'osx-browse-url-safari "osx-browse" "\
Open URL in Safari on OS X.\n\nBROWSER defaults to \"com.apple.Safari\".\n\nURL, NEW-WINDOW, and FOCUS are as documented for\n`osx-browse-url'.\n\n(fn URL &optional NEW-WINDOW BROWSER FOCUS)" t nil)

(autoload 'osx-browse-url-chrome "osx-browse" "\
Open URL in Google Chrome on OS X.\n\nBROWSER defaults to \"com.google.Chrome\".\n\nURL, NEW-WINDOW, and FOCUS are as documented for\n`osx-browse-url'.\n\n(fn URL &optional NEW-WINDOW BROWSER FOCUS)" t nil)

(autoload 'osx-browse-url-firefox "osx-browse" "\
Open URL in Firefox on OS X.\n\nBROWSER defaults to \"org.mozilla.Firefox\".\n\nURL, NEW-WINDOW, and FOCUS are as documented for\n`osx-browse-url'.\n\n(fn URL &optional NEW-WINDOW BROWSER FOCUS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "osx-browse" '("osx-browse-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; osx-browse-autoloads.el ends here
