;;; folding-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "folding" "folding.el" (0 0 0 0))
;;; Generated autoloads from folding.el

(defvar folding-mode nil "\
When Non nil, Folding mode is active in the current buffer.")

(defvar folding-default-keys-function 'folding-bind-default-keys "\
*Function or list of functions used to define keys for Folding mode.\nPossible values are:\n  folding-bind-default-key\n        The standard keymap.\n\n  `folding-bind-backward-compatible-keys'\n        Keys used by older versions of Folding mode. This function\n        does not conform to Emacs 19.29 style conversions concerning\n        key bindings. The prefix key is C - c\n\n  `folding-bind-outline-compatible-keys'\n        Define keys compatible with Outline mode.\n\n  `folding-bind-foldout-compatible-keys'\n        Define some extra keys compatible with Foldout.\n\nAll except `folding-bind-backward-compatible-keys' used the value of\nthe variable `folding-mode-prefix-key' as prefix the key.\nThe default is C - c @")

(custom-autoload 'folding-default-keys-function "folding" t)

(defvar folding-default-mouse-keys-function 'folding-bind-default-mouse "\
*Function to bind default mouse keys to `folding-mode-map'.")

(custom-autoload 'folding-default-mouse-keys-function "folding" t)

(defvar folding-inside-mode-name "Fld" "\
*Mode line addition to show inside levels of 'fold' .")

(custom-autoload 'folding-inside-mode-name "folding" t)

(defvar folding-mode-string "Fld" "\
*The minor mode string displayed when mode is on.")

(custom-autoload 'folding-mode-string "folding" t)

(defvar folding-mode-hook-no-regexp "RMAIL" "\
*Regexp which disable automatic folding mode turn on for certain files.")

(custom-autoload 'folding-mode-hook-no-regexp "folding" t)

(defvar folding-mode-marks-alist nil "\
List of (major-mode . fold mark) default combinations to use.\nWhen Folding mode is started, the major mode is checked, and if there\nare fold marks for that major mode stored in `folding-mode-marks-alist',\nthose marks are used by default. If none are found, the default values\nof \"{{{ \" and \"}}}\" are used.\n\nUse function  `folding-add-to-marks-list' to add more fold marks. The function\nalso explains the alist use in details.\n\nUse function `folding-set-local-variables' if you change the current mode's\nfolding marks during the session.")

(autoload 'folding-uninstall-hooks "folding" "\
Remove hooks set by folding.\n\n(fn)" nil nil)

(autoload 'folding-install-hooks "folding" "\
Install folding hooks.\n\n(fn)" nil nil)

(autoload 'folding-keep-hooked "folding" "\
Make sure hooks are in their places.\n\n(fn)" nil nil)

(autoload 'folding-mode-add-find-file-hook "folding" "\
Append `folding-mode-find-file-hook' to the list `find-file-hooks'.\n\nThis has the effect that afterwards, when a folded file is visited, if\nappropriate Emacs local variable entries are recognized at the end of\nthe file, Folding mode is started automatically.\n\nIf `inhibit-local-variables' is non-nil, this will not happen regardless\nof the setting of `find-file-hooks'.\n\nTo declare a file to be folded, put `folded-file: t' in the file's\nlocal variables. eg., at the end of a C source file, put:\n\n/*\nLocal variables:\nfolded-file: t\n*/\n\nThe local variables can be inside a fold.\n\n(fn)" t nil)

(autoload 'turn-off-folding-mode "folding" "\
Turn off folding.\n\n(fn)" t nil)

(autoload 'turn-on-folding-mode "folding" "\
Turn on folding.\n\n(fn)" t nil)

(autoload 'folding-mode "folding" "\
A folding-editor-like minor mode. ARG INTER.\n\nThese are the basic commands that Folding mode provides:\n\n\\{folding-mode-map}\n\nKeys starting with `folding-mode-prefix-key'\n\n\\{folding-mode-prefix-map}\n\n     folding-convert-buffer-for-printing:\n     `\\[folding-convert-buffer-for-printing]'\n     Makes a ready-to-print, formatted, unfolded copy in another buffer.\n\n     Read the documentation for the above functions for more information.\n\nOverview\n\n    Folds are a way of hierarchically organizing the text in a file, so\n    that the text can be viewed and edited at different levels. It is\n    similar to Outline mode in that parts of the text can be hidden from\n    view. A fold is a region of text, surrounded by special \"fold marks\",\n    which act like brackets, grouping the text. Fold mark pairs can be\n    nested, and they can have titles. When a fold is folded, the text is\n    hidden from view, except for the first line, which acts like a title\n    for the fold.\n\n    Folding mode is a minor mode, designed to cooperate with many other\n    major modes, so that many types of text can be folded while they are\n    being edited (eg., plain text, program source code, Texinfo, etc.).\n\nFolding-mode function\n\n    If Folding mode is not called interactively (`(called-interactively-p 'interactive)' is nil),\n    and it is called with two or less arguments, all of which are nil, then\n    the point will not be altered if `folding-folding-on-startup' is set\n    and `folding-whole-buffer' is called. This is generally not a good\n    thing, as it can leave the point inside a hidden region of a fold, but\n    it is required if the local variables set \"mode: folding\" when the\n    file is first read (see `hack-local-variables').\n\n    Not that you should ever want to, but to call Folding mode from a\n    program with the default behavior (toggling the mode), call it with\n    something like `(folding-mode nil t)'.\n\nFold marks\n\n    For most types of folded file, lines representing folds have \"{{{\"\n    near the beginning. To enter a fold, move the point to the folded line\n    and type `\\[folding-shift-in]'. You should no longer be able to see\n    the rest of the file, just the contents of the fold, which you couldn't\n    see before. You can use `\\[folding-shift-out]' to leave a fold, and\n    you can enter and exit folds to move around the structure of the file.\n\n    All of the text is present in a folded file all of the time. It is just\n    hidden. Folded text shows up as a line (the top fold mark) with \"...\"\n    at the end. If you are in a fold, the mode line displays \"inside n\n    folds Narrow\", and because the buffer is narrowed you can't see outside\n    of the current fold's text.\n\n    By arranging sections of a large file in folds, and maybe subsections\n    in sub-folds, you can move around a file quickly and easily, and only\n    have to scroll through a couple of pages at a time. If you pick the\n    titles for the folds carefully, they can be a useful form of\n    documentation, and make moving though the file a lot easier. In\n    general, searching through a folded file for a particular item is much\n    easier than without folds.\n\nManaging folds\n\n    To make a new fold, set the mark at one end of the text you want in the\n    new fold, and move the point to the other end. Then type\n    `\\[folding-fold-region]'. The text you selected will be made into a\n    fold, and the fold will be entered. If you just want a new, empty fold,\n    set the mark where you want the fold, and then create a new fold there\n    without moving the point. Don't worry if the point is in the middle of\n    a line of text, `folding-fold-region' will not break text in the middle\n    of a line. After making a fold, the fold is entered and the point is\n    positioned ready to enter a title for the fold. Do not delete the fold\n    marks, which are usually something like \"{{{\" and \"}}}\". There may\n    also be a bit of fold mark which goes after the fold title.\n\n    If the fold markers get messed up, or you just want to see the whole\n    unfolded file, use `\\[folding-open-buffer]' to unfolded the whole\n    file, so you can see all the text and all the marks. This is useful for\n    checking/correcting unbalanced fold markers, and for searching for\n    things. Use `\\[folding-whole-file]' to fold the buffer again.\n\n    `folding-shift-out' will attempt to tidy the current fold just before\n    exiting it. It will remove any extra blank lines at the top and bottom,\n    (outside the fold marks). It will then ensure that fold marks exists,\n    and if they are not, will add them (after asking). Finally, the number\n    of blank lines between the fold marks and the contents of the fold is\n    set to 1 (by default).\n\nFolding package customizations\n\n    If the fold marks are not set on entry to Folding mode, they are set to\n    a default for current major mode, as defined by\n    `folding-mode-marks-alist' or to \"{{{ \" and \"}}}\" if none are\n    specified.\n\n    To bind different commands to keys in Folding mode, set the bindings in\n    the keymap `folding-mode-map'.\n\n    The hooks `folding-mode-hook' and `<major-mode-name>-folding-hook' are\n    called before folding the buffer and applying the key bindings in\n    `folding-mode-map'. This is a good hook to set extra or different key\n    bindings in `folding-mode-map'. Note that key bindings in\n    `folding-mode-map' are only examined just after calling these hooks;\n    new bindings in those maps only take effect when Folding mode is being\n    started. The hook `folding-load-hook' is called when Folding mode is\n    loaded into Emacs.\n\nMouse behavior\n\n    If you want folding to detect point of actual mouse click, please see\n    variable `folding-mouse-yank-at-p'.\n\n    To customise the mouse actions, look at `folding-behave-table'.\n\n(fn &optional ARG INTER)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "folding" '("fold")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; folding-autoloads.el ends here
