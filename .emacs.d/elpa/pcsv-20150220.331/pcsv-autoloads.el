;;; pcsv-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pcsv" "pcsv.el" (0 0 0 0))
;;; Generated autoloads from pcsv.el

(autoload 'pcsv-parse-region "pcsv" "\
Parse region as a csv.\n\n(fn START END)" nil nil)

(autoload 'pcsv-parse-buffer "pcsv" "\
Parse a BUFFER as a csv. BUFFER defaults to `current-buffer'.\n\n(fn &optional BUFFER)" nil nil)

(autoload 'pcsv-parse-file "pcsv" "\
Parse FILE as a csv file with CODING-SYSTEM.\nTo handle huge file, please try `pcsv-file-parser' function.\n\n(fn FILE &optional CODING-SYSTEM)" nil nil)

(autoload 'pcsv-parser "pcsv" "\
Get a CSV parser to parse BUFFER.\nThis function supported only Emacs 24 or later.\n\n\nExample:\n(setq parser (pcsv-parser))\n(let (tmp)\n  (while (setq tmp (funcall parser))\n    (print tmp)))\n\n(fn &optional BUFFER)" nil nil)

(autoload 'pcsv-file-parser "pcsv" "\
Create a csv parser to read huge FILE.\nThis csv parser accept a optional arg.\n You must call this parser with optional non-nil arg to terminate the parser.\n\nOptional arg BLOCK-SIZE indicate bytes to read FILE each time.\n\nExample:\n(let ((parser (pcsv-file-parser \"/path/to/csv\")))\n  (unwind-protect\n      (let (tmp)\n        (while (setq tmp (funcall parser))\n          (print tmp)))\n    ;; Must close the parser\n    (funcall parser t)))\n\n(fn FILE &optional CODING-SYSTEM BLOCK-SIZE)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pcsv" '("pcsv-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pcsv-autoloads.el ends here
