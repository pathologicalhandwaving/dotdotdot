;;; discover-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "discover" "discover.el" (0 0 0 0))
;;; Generated autoloads from discover.el

(autoload 'discover-show-context-menu "discover" "\
Shows a context menu GROUP-NAME\n\n(fn GROUP-NAME)" nil nil)

(autoload 'discover-get-context-symbol "discover" "\
Macro that returns the context menu symbol for GROUP-NAME\n\n(fn GROUP-NAME)" nil t)

(autoload 'discover-add-context-menu "discover" "\
Save a context menu to Discover and bind it to the correct keys.\n\n\nExample 1. Enable Discover in a mode:\n\n    (discover-add-context-menu\n       :context-menu (mygroup ... )\n       :mode 'dired-mode\n       :mode-hook 'dired-mode-hook\n       :bind \"?\")\n\nThis will bind a function named `dired-mode-turn-on-mygroup' to\nthe hook `dired-mode-hook' specified in :mode-hook. The name for\nthe function is `<foo>-turn-on-discover' where `<foo>' is the\n`car' symbol in :context-menu - better known as the name of the\ncontext menu.\n\nThe function will call `local-set-key' with the binding given\nin :bind.\n\n\nExample 2. Globalized Discover Support:\n\n    (discover-add-context-menu\n       :context-menu (mygroup ...)\n       :bind \"C-x r\")\n\nAs above, this will bind a function but this one is called\n`discover--turn-on-mygroup' and is set when `discover-mode' is\nset. This enables you to create \"global\" keybindings (that\nnevertheless only take effect when `discover-mode' or\n`global-discover-mode' is enabled) instead of local\nones. Omitting :mode and :mode-hook is all it takes.\n\nPList Definitions:\n\n:context-menu is a menu definition. See `discover-context-menus'.\n\n:mode is a major mode symbol where the key in :bind take\neffect. If major mode is `nil' then the key is defined against\n`discover-mode' and is thus in effect when `discover-mode' is\nenabled.\n\n:mode-hook is the name of the mode hook where the context menu\nkey gets bound. Usually it's `<name>-mode-hook'. This property is\nredundant if :mode is nil.\n\n:bind is a string, to be passed to `kbd', that the context menu\nwill be bound to.\n\nNotes:\n\nYou can only bind one menu per call to discover. The bound name\ngiven to the key group is taken from the `car' in the list passed\nto :context-menu. You can retrieve the command symbol for the\ncontext menu by calling `discover-get-context-menu-command-name'\nwith the symbol name of the context menu..\n\n(fn &rest PROPERTIES)" nil nil)

(autoload 'discover-mode "discover" "\
Helps you discover Emacs with interactive context menus.\n\nKey bindings:\n\\{discover-map}\n\n(fn &optional ARG)" t nil)

(defvar global-discover-mode nil "\
Non-nil if Global Discover mode is enabled.\nSee the `global-discover-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `global-discover-mode'.")

(custom-autoload 'global-discover-mode "discover" nil)

(autoload 'global-discover-mode "discover" "\
Toggle Discover mode in all buffers.\nWith prefix ARG, enable Global Discover mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nDiscover mode is enabled in all buffers where\n`discover-mode-turn-on' would do it.\nSee `discover-mode' for more information on Discover mode.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "discover" '("discover-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; discover-autoloads.el ends here
