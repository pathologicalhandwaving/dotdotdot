;;; tabbar-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "tabbar" "tabbar.el" (0 0 0 0))
;;; Generated autoloads from tabbar.el

(autoload 'tabbar-backward "tabbar" "\
Select the previous available tab.\nDepend on the setting of the option `tabbar-cycle-scope'.\n\n(fn)" t nil)

(autoload 'tabbar-forward "tabbar" "\
Select the next available tab.\nDepend on the setting of the option `tabbar-cycle-scope'.\n\n(fn)" t nil)

(autoload 'tabbar-backward-group "tabbar" "\
Go to selected tab in the previous available group.\n\n(fn)" t nil)

(autoload 'tabbar-forward-group "tabbar" "\
Go to selected tab in the next available group.\n\n(fn)" t nil)

(autoload 'tabbar-backward-tab "tabbar" "\
Select the previous visible tab.\n\n(fn)" t nil)

(autoload 'tabbar-forward-tab "tabbar" "\
Select the next visible tab.\n\n(fn)" t nil)

(autoload 'tabbar-press-home "tabbar" "\
Press the tab bar home button.\nThat is, simulate a mouse click on that button.\nA numeric prefix ARG value of 2, or 3, respectively simulates a\nmouse-2, or mouse-3 click.  The default is a mouse-1 click.\n\n(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-left "tabbar" "\
Press the tab bar scroll-left button.\nThat is, simulate a mouse click on that button.\nA numeric prefix ARG value of 2, or 3, respectively simulates a\nmouse-2, or mouse-3 click.  The default is a mouse-1 click.\n\n(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-right "tabbar" "\
Press the tab bar scroll-right button.\nThat is, simulate a mouse click on that button.\nA numeric prefix ARG value of 2, or 3, respectively simulates a\nmouse-2, or mouse-3 click.  The default is a mouse-1 click.\n\n(fn &optional ARG)" t nil)

(autoload 'tabbar-mwheel-backward "tabbar" "\
Select the previous available tab.\nEVENT is the mouse event that triggered this command.\nMouse-enabled equivalent of the command `tabbar-backward'.\n\n(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward "tabbar" "\
Select the next available tab.\nEVENT is the mouse event that triggered this command.\nMouse-enabled equivalent of the command `tabbar-forward'.\n\n(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-group "tabbar" "\
Go to selected tab in the previous available group.\nIf there is only one group, select the previous visible tab.\nEVENT is the mouse event that triggered this command.\nMouse-enabled equivalent of the command `tabbar-backward-group'.\n\n(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-group "tabbar" "\
Go to selected tab in the next available group.\nIf there is only one group, select the next visible tab.\nEVENT is the mouse event that triggered this command.\nMouse-enabled equivalent of the command `tabbar-forward-group'.\n\n(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-tab "tabbar" "\
Select the previous visible tab.\nEVENT is the mouse event that triggered this command.\nMouse-enabled equivalent of the command `tabbar-backward-tab'.\n\n(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-tab "tabbar" "\
Select the next visible tab.\nEVENT is the mouse event that triggered this command.\nMouse-enabled equivalent of the command `tabbar-forward-tab'.\n\n(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-tab "tabbar" "\
Select the next or previous tab according to EVENT.\n\n(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-group "tabbar" "\
Select the next or previous group of tabs according to EVENT.\n\n(fn EVENT)" t nil)

(autoload 'tabbar-local-mode "tabbar" "\
Toggle local display of the tab bar.\nWith prefix argument ARG, turn on if positive, otherwise off.\nReturns non-nil if the new state is enabled.\nWhen turned on, if a local header line is shown, it is hidden to show\nthe tab bar.  The tab bar is locally hidden otherwise.  When turned\noff, if a local header line is hidden or the tab bar is locally\nhidden, it is shown again.  Signal an error if Tabbar mode is off.\n\n(fn &optional ARG)" t nil)

(defvar tabbar-mode nil "\
Non-nil if Tabbar mode is enabled.\nSee the `tabbar-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `tabbar-mode'.")

(custom-autoload 'tabbar-mode "tabbar" nil)

(autoload 'tabbar-mode "tabbar" "\
Toggle display of a tab bar in the header line.\nWith prefix argument ARG, turn on if positive, otherwise off.\nReturns non-nil if the new state is enabled.\n\n\\{tabbar-mode-map}\n\n(fn &optional ARG)" t nil)

(defvar tabbar-mwheel-mode nil "\
Non-nil if Tabbar-Mwheel mode is enabled.\nSee the `tabbar-mwheel-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `tabbar-mwheel-mode'.")

(custom-autoload 'tabbar-mwheel-mode "tabbar" nil)

(autoload 'tabbar-mwheel-mode "tabbar" "\
Toggle use of the mouse wheel to navigate through tabs or groups.\nWith prefix argument ARG, turn on if positive, otherwise off.\nReturns non-nil if the new state is enabled.\n\n\\{tabbar-mwheel-mode-map}\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tabbar" '("tabbar-")))

;;;***

;;;### (autoloads nil nil ("tabbar-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; tabbar-autoloads.el ends here
