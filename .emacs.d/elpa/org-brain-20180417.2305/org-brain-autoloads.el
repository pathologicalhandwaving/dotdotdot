;;; org-brain-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-brain" "org-brain.el" (0 0 0 0))
;;; Generated autoloads from org-brain.el

(autoload 'org-brain-update-id-locations "org-brain" "\
Scan `org-brain-files' using `org-id-update-id-locations'.\n\n(fn)" t nil)

(autoload 'org-brain-switch-brain "org-brain" "\
Choose another DIRECTORY to be your `org-brain-path'.\n\n(fn DIRECTORY)" t nil)

(autoload 'org-brain-add-child "org-brain" "\
Add external child to entry at point.\nIf chosen child entry doesn't exist, create it as a new file.\nSeveral children can be added, by using `org-brain-entry-separator'.\n\n(fn)" t nil)

(autoload 'org-brain-new-child "org-brain" "\
Create a new internal child headline to entry at point.\nSeveral children can be created, by using `org-brain-entry-separator'.\n\n(fn)" t nil)

(autoload 'org-brain-remove-child "org-brain" "\
Remove child from entry at point.\n\n(fn)" t nil)

(autoload 'org-brain-add-parent "org-brain" "\
Add external parent to entry at point.\nIf chosen parent entry doesn't exist, create it as a new file.\nSeveral parents can be added, by using `org-brain-entry-separator'.\n\n(fn)" t nil)

(autoload 'org-brain-remove-parent "org-brain" "\
Remove external parent from entry at point.\n\n(fn)" t nil)

(autoload 'org-brain-add-friendship "org-brain" "\
Add a new friend to entry at point.\nIf chosen friend entry doesn't exist, create it as a new file.\nSeveral friends can be added, by using `org-brain-entry-separator'.\n\n(fn)" t nil)

(autoload 'org-brain-remove-friendship "org-brain" "\
Remove friendship between ENTRY1 and ENTRY2.\nIf ONEWAY is t, then remove ENTRY2 as a friend of ENTRY1, but not vice versa.\n\nIf run interactively, use `org-brain-entry-at-pt' as ENTRY1 and prompt for ENTRY2.\n\n(fn ENTRY1 ENTRY2 &optional ONEWAY)" t nil)

(autoload 'org-brain-goto "org-brain" "\
Goto buffer and position of org-brain ENTRY.\nIf ENTRY isn't specified, ask for the ENTRY.\nUnless GOTO-FILE-FUNC is nil, use `pop-to-buffer-same-window' for opening the entry.\n\n(fn &optional ENTRY GOTO-FILE-FUNC)" t nil)

(autoload 'org-brain-goto-other-window "org-brain" "\
Goto buffer and position of org-brain ENTRY in other window.\nIf ENTRY isn't specified, ask for the ENTRY.\n\n(fn &optional ENTRY)" t nil)

(autoload 'org-brain-goto-end "org-brain" "\
Like `org-brain-goto', but visits the end of ENTRY.\nIf ENTRY isn't specified, ask for the ENTRY.\n\n(fn &optional ENTRY)" t nil)

(autoload 'org-brain-goto-current "org-brain" "\
Use `org-brain-goto' on `org-brain-entry-at-pt', in other window..\nIf run with `\\[universal-argument]', or SAME-WINDOW as t, use current window.\n\n(fn &optional SAME-WINDOW)" t nil)

(autoload 'org-brain-goto-child "org-brain" "\
Goto a child of ENTRY.\nIf run interactively, get ENTRY from context.\nIf ALL is nil, choose only between externally linked children.\n\n(fn ENTRY &optional ALL)" t nil)

(autoload 'org-brain-goto-parent "org-brain" "\
Goto a parent of ENTRY.\nIf run interactively, get ENTRY from context.\nIf ALL is nil, choose only between externally linked parents.\n\n(fn ENTRY &optional ALL)" t nil)

(autoload 'org-brain-goto-friend "org-brain" "\
Goto a friend of ENTRY.\nIf run interactively, get ENTRY from context.\n\n(fn ENTRY)" t nil)

(autoload 'org-brain-refile "org-brain" "\
Run `org-refile' to a heading in `org-brain-files', with set MAX-LEVEL.\nIf MAX-LEVEL isn't given, use `org-brain-refile-max-level'.\nAfter refiling, all headlines will be given an id.\n\n(fn MAX-LEVEL)" t nil)

(autoload 'org-brain-rename-file "org-brain" "\
Rename FILE-ENTRY to NEW-NAME.\nBoth arguments should be relative to `org-brain-path' and should\nnot contain `org-brain-files-extension'.\n\n(fn FILE-ENTRY NEW-NAME)" t nil)

(autoload 'org-brain-delete-entry "org-brain" "\
Delete ENTRY and all of its local children.\nIf run interactively, ask for the ENTRY.\nIf NOCONFIRM is nil, ask if we really want to delete.\n\n(fn ENTRY &optional NOCONFIRM)" t nil)

(autoload 'org-brain-pin "org-brain" "\
Change if ENTRY is pinned or not.\nIf run interactively, get ENTRY from context.\n\nIf STATUS is positive, pin the entry. If negative, remove the pin.\nIf STATUS is omitted, toggle between pinned / not pinned.\n\n(fn ENTRY &optional STATUS)" t nil)

(autoload 'org-brain-set-title "org-brain" "\
Set the name of ENTRY to TITLE.\nIf run interactively, get ENTRY from context and prompt for TITLE.\n\n(fn ENTRY TITLE)" t nil)

(autoload 'org-brain-set-tags "org-brain" "\
Modify the ENTRY tags.\nUse `org-set-tags' on headline ENTRY.\nInstead sets #+FILETAGS on file ENTRY.\nIf run interactively, get ENTRY from context.\n\n(fn ENTRY)" t nil)

(autoload 'org-brain-headline-to-file "org-brain" "\
Convert headline ENTRY to a file entry.\nPrompt for name of the new file.\nIf interactive, also prompt for ENTRY.\n\n(fn ENTRY)" t nil)

(autoload 'org-brain-agenda "org-brain" "\
Like `org-agenda', but only for `org-brain-files'.\n\n(fn)" t nil)

(autoload 'org-brain-create-relationships-from-links "org-brain" "\
Add relationships for brain: links in `org-brain-path'.\nOnly create relationships to other files, not to headline entries.\n\nThis function is meant to be used in order to convert old\norg-brain setups to the system introduced in version 0.4. Please\nmake a backup of your `org-brain-path' before running this\nfunction.\n\n(fn)" t nil)

(autoload 'org-brain-visualize "org-brain" "\
View a concept map with ENTRY at the center.\n\nWhen run interactively, prompt for ENTRY and suggest\n`org-brain-entry-at-pt'. By default, the choices presented is\ndetermined by `org-brain-visualize-default-choices': 'all will\nshow all entries, 'files will only show file entries and 'root\nwill only show files in the root of `org-brain-path'.\n\nYou can override `org-brain-visualize-default-choices':\n  `\\[universal-argument]' will use 'all.\n  `\\[universal-argument] \\[universal-argument]' will use 'files.\n  `\\[universal-argument] \\[universal-argument] \\[universal-argument]' will use 'root.\n\nUnless NOFOCUS is non-nil, the `org-brain-visualize' buffer will gain focus.\nUnless NOHISTORY is non-nil, add the entry to `org-brain--vis-history'.\nSetting NOFOCUS to t implies also having NOHISTORY as t.\nUnless WANDER is t, `org-brain-stop-wandering' will be run.\n\n(fn ENTRY &optional NOFOCUS NOHISTORY WANDER)" t nil)

(autoload 'org-brain-visualize-random "org-brain" "\
Run `org-brain-visualize' on a random org-brain entry.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-brain" '("org-brain-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-brain-autoloads.el ends here
