;;; org-static-blog-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-static-blog" "org-static-blog.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from org-static-blog.el

(autoload 'org-static-blog-publish "org-static-blog" "\
Render all blog posts, the index, archive, tags, and RSS feed.\nOnly blog posts that changed since the HTML was created are\nre-rendered.\n\n(fn)" t nil)

(autoload 'org-static-blog-publish-file "org-static-blog" "\
Publish a single POST-FILENAME.\nThe index, archive, tags, and RSS feed are not updated.\n\n(fn POST-FILENAME)" t nil)

(autoload 'org-static-blog-create-new-post "org-static-blog" "\
Creates a new blog post.\nPrompts for a title and proposes a file name. The file name is\nonly a suggestion; You can choose any other file name if you so\nchoose.\n\n(fn)" t nil)

(autoload 'org-static-blog-mode "org-static-blog" "\
Blogging with org-mode and emacs.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-static-blog" '("org-static-blog-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-static-blog-autoloads.el ends here
