;;; wiki-summary-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "wiki-summary" "wiki-summary.el" (0 0 0 0))
;;; Generated autoloads from wiki-summary.el

(autoload 'wiki-summary/make-api-query "wiki-summary" "\
Given a wiki page title, generate the url for the API call\n   to get the page info\n\n(fn S)" nil nil)

(autoload 'wiki-summary/extract-summary "wiki-summary" "\
Given the JSON reponse from the webpage, grab the summary as a string\n\n(fn RESP)" nil nil)

(autoload 'wiki-summary/format-summary-in-buffer "wiki-summary" "\
Given a summary, stick it in the *wiki-summary* buffer and display the buffer\n\n(fn SUMMARY)" nil nil)

(autoload 'wiki-summary "wiki-summary" "\
Return the wikipedia page's summary for a term\n\n(fn S)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; wiki-summary-autoloads.el ends here
