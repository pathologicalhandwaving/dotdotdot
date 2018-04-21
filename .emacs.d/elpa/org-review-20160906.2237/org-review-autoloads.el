;;; org-review-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-review" "org-review.el" (0 0 0 0))
;;; Generated autoloads from org-review.el

(autoload 'org-review-last-review-prop "org-review" "\
Return the value of the last review property of the headline\nat position POS, or the current headline if POS is not given.\n\n(fn &optional POS)" nil nil)

(autoload 'org-review-next-review-prop "org-review" "\
Return the value of the review date property of the headline\nat position POS, or the current headline if POS is not given.\n\n(fn &optional POS)" nil nil)

(autoload 'org-review-insert-last-review "org-review" "\
Insert the current date as last review. If prefix argument:\nprompt the user for the date. If `org-review-sets-next-date' is\nset to `t', also insert a next review date.\n\n(fn &optional PROMPT)" t nil)

(autoload 'org-review-insert-next-review "org-review" "\
Prompt the user for the date of the next review, and insert\nit as a property of the headline.\n\n(fn)" t nil)

(autoload 'org-review-agenda-skip "org-review" "\
To be used as an argument of `org-agenda-skip-function' to\nskip entries that are not scheduled to be reviewed. This function\ndoes not move the point; it returns `nil' if the entry is to be\nkept, and the position to continue the search otherwise.\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-review" '("org-review-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-review-autoloads.el ends here
