;;; pixiv-novel-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pixiv-novel-mode" "pixiv-novel-mode.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from pixiv-novel-mode.el

(autoload 'pixiv-novel-mode "pixiv-novel-mode" "\
Major mode for pixiv novel

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.pxv\\(\\.txt\\)?\\'" . pixiv-novel-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pixiv-novel-mode" '("pixiv-novel")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pixiv-novel-mode-autoloads.el ends here
