;;; org-hacks.el ---                        -*- lexical-binding: t; -*-

;; Copyright (C) 2018  <KMS>

;; Author: <KMS> <<kms.werx@gmail.com>>
;; Keywords: Org Mode
(require 'org)

;;; Code:

;;; Promote All Items in Subtree
(defun exile-org-un-promote ()
  (interactive)
  (org-map-entries 'org-do-promote "LEVEL>1" 'tree)
  (org-cycle t))

;;; Turn Headline into Org-Mode Link
(defun exile-headline-to-link ()
  (interactive)
  (when (org-at-heading-p)
    (let ((hl-text (nth 4 (org-heading-components))))
      (unless (or (null hl-text)
                  (org-string-match-p "[ \t]*:[^:]+:$" hl-text))
        (beginning-of-line)
        (search-forward hl-text (point-at-eol))
        (replace-string
         hl-text
         (format "[[file:%s.org][%s]]"
                 (org-link-escape hl-text)
                 (org-link-escape hl-text '((?\] . "%5D") (?\[. "%5B"))))
         nil (- (point) (length hl-text)) (point))))))


;;; Transpose Paragraphs
(defun org-transpose-paragraphs (arg)
  (interactive)
  (when (and (not (or (org-at-table-p) (org-at-heading-p) (org-at-item-p)))
             (thing-at-point 'sentence))
    (transpose-paragraphs arg)
    (backward-paragraph)
    (re-search-forward "[[:graph:]]")
    (goto-char (match-beginning 0))
    t))

(add-to-list 'org-metaup-hook
             (lambda () (interactive) (org-transpose-paragraphs -1)))
(add-to-list 'org-metadown-hook
             (lambda () (interactive) (org-transpose-paragraphs 1)))


;;; Align All Tables in File
(defun my-align-all-tables ()
  (interactive)
  (org-table-map-tables 'org-table-align 'quietly))

;;; Preserve Archive Structure and Tags
(defun my-org-inherited-no-file-tags ()
  (let ((tags (org-entry-get nil "ALLTAGS" 'selective))
        (ltags (org-entry-get nil "TAGS")))
    (mapc (lambda (tag)
            (setq tags
                  (replace-regexp-in-string (concat tag ":") "" tags)))
          (append org-file-tags (when ltags (split-string ltags ":" t))))
    (if (string= ":" tags) nil tags)))

(defadvice org-archive-subtree (around my-org-archive-subtree-low-level activate)
  (let ((tags (my-org-inherited-no-file-tags))
        (org-archive-location
         (if (save-excursion (org-back-to-heading)
                             (> (org-outline-level) 1))
             (concat (car (split-string org-archive-location "::"))
                     "::* "
                     (car (org-get-outline-path)))
           org-archive-location)))
    ad-do-it
    (with-current-buffer (find-file-noselect (org-extract-archive-file))
      (save-excursion
        (while (org-up-heading-safe))
        (org-set-tags-to tags)))))


;; Group Task List by Property
(defvar org-agenda-group-by-property nil
  "Set this in org-mode agenda views to group tasks by property")

(defun org-group-bucket-items (prop items)
  (let ((buckets ()))
    (dolist (item items)
      (let* ((marker (get-text-property 0 'org-marker item))
             (pvalue (org-entry-get marker prop t))
             (cell (assoc pvalue buckets)))
        (if cell
            (setcdr cell (cons item (cdr cell)))
          (setq buckets (cons (cons pvalue (list item))
                              buckets)))))
    (setq buckets (mapcar (lambda (bucket)
                            (cons (car bucket)
                                  (reverse (cdr bucket))))
                          buckets))
    (sort buckets (lambda (i1 i2)
                    (string< (car i1) (car i2))))))

(defadvice org-finalize-agenda-entries (around org-group-agenda-finalize
                                               (list &optional nosort))
  "Prepare bucketed agenda entry lists"
  (if org-agenda-group-by-property
      ;; bucketed, handle appropriately
      (let ((text ""))
        (dolist (bucket (org-group-bucket-items
                         org-agenda-group-by-property
                         list))
          (let ((header (concat "Property "
                                org-agenda-group-by-property
                                " is "
                                (or (car bucket) "<nil>") ":\n")))
            (add-text-properties 0 (1- (length header))
                                 (list 'face 'org-agenda-structure)
                                 header)
            (setq text
                  (concat text header
                          ;; recursively process
                          (let ((org-agenda-group-by-property nil))
                            (org-finalize-agenda-entries
                             (cdr bucket) nosort))
                          "\n\n"))))
        (setq ad-return-value text))
    ad-do-it))
(ad-activate 'org-finalize-agenda-entries)


;;; Prompt for Note on Clock-outlet
(defun exile-check-for-clock-out-note()
  (interactive)
  (save-excursion
    (org-back-to-heading)
    (let ((tags (org-get-tags)))
      (and tags (message "tags: %s " tags)
           (when (member "clocknote" tags)
             (org-add-note))))))

(add-hook 'org-clock-out-hook 'exile-check-for-clock-out-note)


;;; Refresh Agenda View Regularly
(defun exile-org-agenda-redo-in-other-window ()
  "Call org-agenda-redo function even in the non-agenda buffer."
  (interactive)
  (let ((agenda-window (get-buffer-window org-agenda-buffer-name t)))
    (when agenda-window
      (with-selected-window agenda-window (org-agenda-redo)))))
(run-at-time nil 300 'exile-org-agenda-redo-in-other-window)

;;; CSV to Org Table
(defun exile-lisp-table-to-org-table (table &optional function)
  "Convert a lisp table to `org-mode' syntax, applying FUNCTION to each of its elements.
The elements should not have any more newlines in them after
applying FUNCTION ; the default converts them to spaces. Return
value is a string containg the unaligned `org-mode' table."
  (unless (functionp function)
    (setq function (lambda (x) (replace-regexp-in-string "\n" " " x))))
  (mapconcat (lambda (x)                ; x is a line.
               (concat "| " (mapconcat function x " | ") " |"))
             table "\n"))

(defun exile-csv-to-table (beg end)
  "Convert a csv file to an `org-mode' table."
  (interactive "r")
  (require 'pcsv)
  (insert (exile-lisp-table-to-org-table (pcsv-parse-region beg end)))
  (delete-region beg end)
  (org-table-align))


(provide 'org-hacks)
(message "Org Hacks Loaded!")
;;; org-hacks.el ends here
