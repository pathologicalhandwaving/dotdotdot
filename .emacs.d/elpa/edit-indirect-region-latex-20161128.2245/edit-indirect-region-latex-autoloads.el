;;; edit-indirect-region-latex-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "edit-indirect-region-latex" "edit-indirect-region-latex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from edit-indirect-region-latex.el

(autoload 'edit-indirect-latex "edit-indirect-region-latex" "\
Edit the region S to E in a separate buffer.\nWhen no region selected, automaticaly select region around current point.\nThen the region pass to `edit-indirect-region-wrap-latex' .\n\n(fn S E)" t nil)

(autoload 'edit-indirect-region-latex "edit-indirect-region-latex" "\
Edit the region BEG to END in a separate buffer.\nThe arguments pass to `edit-indirect-region' (BEG END DISPLAY-BUFFER).\nBefore switch the edit mode, latex special expressions \nare translated to [number].\nAfter commit the edit, the translated words are backed to original.\n\n(fn BEG END &optional DISPLAY-BUFFER)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "edit-indirect-region-latex" '("edit-indirect-region-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; edit-indirect-region-latex-autoloads.el ends here
