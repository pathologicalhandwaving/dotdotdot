;;; org-noter-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-noter" "org-noter.el" (0 0 0 0))
;;; Generated autoloads from org-noter.el

(autoload 'org-noter "org-noter" "\
Start `org-noter' session.\n\nThere are two modes of operation. You may create the session from:\n- The Org notes file\n- The document to be annotated (PDF, EPUB, ...)\n\n- Creating the session from notes file -----------------------------------------\nThis will open a session for taking your notes, with indirect\nbuffers to the document and the notes side by side. Your current\nwindow configuration won't be changed, because this opens in a\nnew frame.\n\nYou only need to run this command inside a heading (which will\nhold the notes for this document). If no document path property is found,\nthis command will ask you for the target file.\n\nWith a prefix universal argument ARG, only check for the property\nin the current heading, don't inherit from parents.\n\nWith a prefix number ARG, only open the document like `find-file'\nwould if ARG >= 0, or open the folder containing the document\nwhen ARG < 0.\n\n- Creating the session from the document ---------------------------------------\nThis will try to find a notes file in any of the parent folders.\nThe names it will search for are defined in `org-noter-default-notes-file-names'.\nIt will also try to find a notes file with the same name as the\ndocument, giving it the maximum priority.\n\nWhen it doesn't find anything, it will interactively ask you what\nyou want it to do. The target notes file must be in a parent\nfolder (direct or otherwise) of the document.\n\nYou may pass a prefix ARG in order to make it let you choose the\nnotes file, even if it finds one.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-noter" '("org-noter-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-noter-autoloads.el ends here
