;;; bog-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "bog" "bog.el" (0 0 0 0))
;;; Generated autoloads from bog.el

(autoload 'bog-find-citekey-file "bog" "\
Open citekey-associated file.\n\nThe citekey is taken from the text under point if it matches\n`bog-citekey-format' or from the current tree.\n\nWith prefix argument NO-CONTEXT, prompt with citekeys that have\nan associated file in `bog-file-directory'.  Do the same if\nlocating a citekey from context fails.\n\nIf the citekey prompt is slow to appear, consider enabling the\n`files' category in `bog-use-citekey-cache'.\n\n(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-dired-jump-to-citekey-file "bog" "\
Jump to citekey file in Dired.\n\nThe citekey is taken from the text under point if it matches\n`bog-citekey-format' or from the current tree.\n\nWith prefix argument NO-CONTEXT, prompt with citekeys that have\nan associated file in `bog-file-directory'.  Do the same if\nlocating a citekey from context fails.\n\nIf the citekey prompt is slow to appear, consider enabling the\n`files' category in `bog-use-citekey-cache'.\n\n(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-rename-staged-file-to-citekey "bog" "\
Rename citekey file in `bog-stage-directory' with `bog-file-renaming-func'.\n\nThe citekey is taken from the text under point if it matches\n`bog-citekey-format' or from the current tree.\n\nWith prefix argument NO-CONTEXT, prompt with citekeys present in\nany note file.  Do the same if locating a citekey from context\nfails.\n\nIf the citekey prompt is slow to appear, consider enabling the\n`files' category in `bog-use-citekey-cache'.\n\n(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-rename-citekey-file "bog" "\
Associate a citekey file with a new citekey.\n\nThis allows you to update a file's name if you change the\ncitekey.\n\nThe new citekey is taken from the text under point if it matches\n`bog-citekey-format' or from the current tree.\n\nWith prefix argument NO-CONTEXT, prompt with citekeys present in\nany note file.  Do the same if locating a citekey from context\nfails.\n\n(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-list-orphan-files "bog" "\
Find files in `bog-file-directory' without a citekey heading.\n\n(fn)" t nil)

(autoload 'bog-find-citekey-bib "bog" "\
Open BibTeX file for a citekey.\n\nThe citekey is taken from the text under point if it matches\n`bog-citekey-format' or from the current tree.\n\nThe variable `bog-find-citekey-bib-func' determines how the\ncitekey is found.\n\nWith prefix argument NO-CONTEXT, prompt with citekeys that have a\nBibTeX entry.  Do the same if locating a citekey from context\nfails.\n\nIf the citekey prompt is slow to appear, consider enabling the\n`bib' category in `bog-use-citekey-cache'.\n\n(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-clean-and-rename-staged-bibs "bog" "\
Clean and rename BibTeX files in `bog-stage-directory'.\n\nSearch for new BibTeX files in `bog-stage-directory', and run\n`bibtex-clean-entry' on each file before it is moved to\n`bog-bib-directory'/[<subdir>/]<citekey>.bib, where the optional\n<subdir> is determined by `bog-subdirectory-group'.\n\nThis function is only useful if you use the non-standard setup of\none entry per BibTeX file.\n\n(fn)" t nil)

(autoload 'bog-create-combined-bib "bog" "\
Create a buffer that has entries for a collection of citekeys.\nIf in Dired, collect citekeys from marked files.  Otherwise,\ncollect citekeys the current buffer.  With prefix argument ARG,\nreverse the meaning of `bog-combined-bib-ignore-not-found'.\n\n(fn &optional ARG)" t nil)

(autoload 'bog-list-orphan-bibs "bog" "\
Find bib citekeys that don't have a citekey heading.\n\n(fn)" t nil)

(autoload 'bog-search-citekey-on-web "bog" "\
Open browser and perform query based for a citekey.\n\nTake the URL from `bog-web-search-url'.\n\nThe citekey is split by groups in `bog-citekey-format' and joined by\n\"+\" to form the query string.\n\nThe citekey is taken from the text under point if it matches\n`bog-citekey-format' or from the current tree.\n\nWith prefix argument NO-CONTEXT, prompt with citekeys present in\nany note file.  Do the same if locating a citekey from context\nfails.\n\nIf the citekey file prompt is slow to appear, consider enabling\n`bog-use-citekey-cache'.\n\nIf the citekey prompt is slow to appear, consider enabling the\n`all-notes' category in `bog-use-citekey-cache'.\n\n(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-goto-citekey-heading-in-notes "bog" "\
Find citekey heading in notes.\n\nThe citekey is taken from the text under point if it matches\n`bog-citekey-format'.\n\nWhen the prefix argument NO-CONTEXT is given by a single\n\\[universal-argument], prompt with citekeys that have a heading\nin any note file.  Do the same if locating a citekey from context\nfails.  With a double \\[universal-argument], restrict the prompt\nto citekeys that have a heading in the current buffer.\n\nIf the citekey prompt is slow to appear, consider enabling the\n`heading' category in `bog-use-citekey-cache'.\n\nIf the heading is found outside any current narrowing of the\nbuffer, the narrowing is removed.\n\n(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-citekey-tree-to-indirect-buffer "bog" "\
Open subtree for citekey in an indirect buffer.\n\nUnless `bog-keep-indirect' is non-nil, replace the indirect\nbuffer from the previous call.\n\nThe citekey is taken from the text under point if it matches\n`bog-citekey-format'.\n\nWith prefix argument NO-CONTEXT, prompt with citekeys that have a\nheading in any note file.  Do the same if locating a citekey from\ncontext fails.\n\nIf the citekey prompt is slow to appear, consider enabling the\n`heading' category in `bog-use-citekey-cache'.\n\n(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-refile "bog" "\
Refile heading within notes.\nAll headings from Org files in `bog-note-directory' at or above\nlevel `bog-refile-maxlevel' are considered.\n\n(fn)" t nil)

(autoload 'bog-search-notes "bog" "\
Search notes using `org-search-view'.\nWith prefix argument TODO-ONLY, search only TODO entries.  If\nSTRING is non-nil, use it as the search term (instead of\nprompting for one).\n\n(fn &optional TODO-ONLY STRING)" t nil)

(autoload 'bog-search-notes-for-citekey "bog" "\
Search notes for citekey using `org-search-view'.\n\nWith prefix argument TODO-ONLY, search only TODO entries.\n\nThe citekey is taken from the text under point if it matches\n`bog-citekey-format' or from the current tree.  If a citekey is\nnot found, prompt with citekeys present in any note file.\n\nIf the citekey prompt is slow to appear, consider enabling the\n`all-notes' category in `bog-use-citekey-cache'.\n\n(fn &optional TODO-ONLY)" t nil)

(autoload 'bog-insert-heading-citekey "bog" "\
Select a citekey to insert at point.\nBy default, offer heading citekeys from all files.  With prefix\nargument CURRENT-BUFFER, limit to heading citekeys from the\ncurrent buffer.\n\n(fn &optional CURRENT-BUFFER)" t nil)

(autoload 'bog-open-citekey-link "bog" "\
Open a link for a citekey heading.\n\nIf FIRST is non-nil, open the first link under the heading.\nOtherwise, if there is more than one link under the heading,\nprompt with a list of links using the `org-open-at-point'\ninterface.\n\nThe citekey is taken from the text under point if it matches\n`bog-citekey-format' or from the current tree.\n\nWith prefix argument NO-CONTEXT, prompt with citekeys that have a\nheading in any note file.  Do the same if locating a citekey from\ncontext fails.\n\nIf the citekey prompt is slow to appear, consider enabling the\n`heading' category in `bog-use-citekey-cache'.\n\n(fn &optional NO-CONTEXT FIRST)" t nil)

(autoload 'bog-open-first-citekey-link "bog" "\
Open first link for a citekey heading.\n\nThe citekey is taken from the text under point if it matches\n`bog-citekey-format' or from the current tree.\n\nWith prefix argument NO-CONTEXT, prompt with citekeys that have a\nheading in any note file.  Do the same if locating a citekey from\ncontext fails.\n\n(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-next-non-heading-citekey "bog" "\
Move foward to next non-heading citekey.\nWith argument ARG, do it ARG times.\n\n(fn &optional ARG)" t nil)

(autoload 'bog-previous-non-heading-citekey "bog" "\
Move backward to previous non-heading citekey.\nWith argument ARG, do it ARG times.\n\n(fn &optional ARG)" t nil)

(autoload 'bog-jump-to-topic-heading "bog" "\
Jump to topic heading.\nTopic headings are determined by `bog-topic-heading-level'.\n\n(fn)" t nil)

(defvar bog-command-map (let ((map (make-sparse-keymap))) (define-key map "b" 'bog-find-citekey-bib) (define-key map "c" 'bog-search-notes-for-citekey) (define-key map "f" 'bog-find-citekey-file) (define-key map "F" 'bog-dired-jump-to-citekey-file) (define-key map "g" 'bog-search-citekey-on-web) (define-key map "h" 'bog-goto-citekey-heading-in-notes) (define-key map "i" 'bog-citekey-tree-to-indirect-buffer) (define-key map "j" 'bog-jump-to-topic-heading) (define-key map "l" 'bog-open-citekey-link) (define-key map "L" 'bog-open-first-citekey-link) (define-key map "n" 'bog-next-non-heading-citekey) (define-key map "p" 'bog-previous-non-heading-citekey) (define-key map "r" 'bog-rename-staged-file-to-citekey) (define-key map "s" 'bog-search-notes) (define-key map "w" 'bog-refile) (define-key map "v" 'bog-view-mode) (define-key map "y" 'bog-insert-heading-citekey) map) "\
Map for Bog commands.\nIn Bog mode, these are under `bog-keymap-prefix'.\n`bog-command-map' can also be bound to a key outside of Bog\nmode.")

(fset 'bog-command-map bog-command-map)

(autoload 'bog-mode "bog" "\
Toggle Bog in this buffer.\nWith a prefix argument ARG, enable `bog-mode' if ARG is positive,\nand disable it otherwise.  If called from Lisp, enable the mode\nif ARG is omitted or nil.\n\n\\{bog-mode-map}\n\n(fn &optional ARG)" t nil)

(autoload 'bog-view-mode "bog" "\
Toggle Bog View mode in this buffer.\n\nWith a prefix argument ARG, enable `bog-view-mode' if ARG is\npositive, and disable it otherwise.  If called from Lisp, enable\nthe mode if ARG is omitted or nil.\n\nTurning on Bog View mode sets the buffer to read-only and gives\nmany of the Bog commands a single-letter key binding.\n\n\\<bog-view-mode-map>To exit Bog View mode, type \\[bog-view-quit].\n\n\\{bog-view-mode-map}\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bog" '("bog-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bog-autoloads.el ends here
