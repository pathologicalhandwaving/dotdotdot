;;; auto-yasnippet-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "auto-yasnippet" "auto-yasnippet.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from auto-yasnippet.el

(autoload 'aya-create-one-line "auto-yasnippet" "\
A simplistic `aya-create' to create only one mirror.\nYou can still have as many instances of this mirror as you want.\nIt's less flexible than `aya-create', but faster.\nIt uses a different marker, which is `aya-marker-one-line'.\nYou can use it to quickly generate one-liners such as\nmenu.add_item(spamspamspam, \"spamspamspam\")\n\n(fn)" t nil)

(autoload 'aya-create "auto-yasnippet" "\
Works on either the current line, or, if `mark-active', the current region.\nRemoves `aya-marker' prefixes,\nwrites the corresponding snippet to `aya-current',\nwith words prefixed by `aya-marker' as fields, and mirrors properly set up.\n\n(fn)" t nil)

(autoload 'aya-expand "auto-yasnippet" "\
Insert the last yasnippet created by `aya-create'.\n\n(fn)" t nil)

(autoload 'aya-open-line "auto-yasnippet" "\
Call `open-line', unless there are abbrevs or snippets at point.\nIn that case expand them.  If there's a snippet expansion in progress,\nmove to the next field.  Call `open-line' if nothing else applies.\n\n(fn)" t nil)

(autoload 'aya-yank-snippet "auto-yasnippet" "\
Insert current snippet at point.\nTo save a snippet permanently, create an empty file and call this.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "auto-yasnippet" '("aya-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; auto-yasnippet-autoloads.el ends here
