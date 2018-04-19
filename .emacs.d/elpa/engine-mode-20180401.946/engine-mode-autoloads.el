;;; engine-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "engine-mode" "engine-mode.el" (0 0 0 0))
;;; Generated autoloads from engine-mode.el

(defvar engine-mode nil "\
Non-nil if Engine mode is enabled.\nSee the `engine-mode' command\nfor a description of this minor mode.")

(custom-autoload 'engine-mode "engine-mode" nil)

(autoload 'engine-mode "engine-mode" "\
Minor mode for defining and querying search engines through Emacs.\n\n\\{engine-mode-map}\n\n(fn &optional ARG)" t nil)

(autoload 'defengine "engine-mode" "\
Define a custom search engine.\n\n`engine-name' is a symbol naming the engine.\n`search-engine-url' is the url to be queried, with a \"%s\"\nstanding in for the search term.\nThe optional keyword argument `docstring' assigns a docstring to\nthe generated function. A reasonably sensible docstring will be\ngenerated if a custom one isn't provided.\nThe optional keyword argument `browser` assigns the browser\nfunction to be used when opening the URL.\nThe optional keyword argument `term-transformation-hook' is a\nfunction that will be applied to the search term before it's\nsubstituted into `search-engine-url'. For example, if we wanted\nto always upcase our search terms, we might use:\n\n(defengine duckduckgo\n  \"https://duckduckgo.com/?q=%s\"\n  :term-transformation-hook 'upcase)\n\nIn this case, searching for \"foobar\" will hit the url\n\"https://duckduckgo.com/?q=FOOBAR\".\n\nThe optional keyword argument `keybinding' is a string describing\nthe key to bind the new function.\n\nKeybindings are in the `engine-mode-map', so they're prefixed.\n\nFor example, to search Wikipedia, use:\n\n  (defengine wikipedia\n    \"http://www.wikipedia.org/search-redirect.php?language=en&go=Go&search=%s\"\n    :keybinding \"w\"\n    :docstring \"Search Wikipedia!\")\n\nHitting \"C-x / w\" will be bound to the newly-defined\n`engine/search-wikipedia' function.\n\n(fn ENGINE-NAME SEARCH-ENGINE-URL &key KEYBINDING DOCSTRING (BROWSER \\='engine/browser-function) (TERM-TRANSFORMATION-HOOK \\='identity))" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "engine-mode" '("engine")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; engine-mode-autoloads.el ends here
