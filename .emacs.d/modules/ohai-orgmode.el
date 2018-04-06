;;; -*- lexical-binding: t -*-
;;; ohai-orgmode.el --- Your personal everything manager.

;; Copyright (C) 2015 Bodil Stokke

;; Author: Bodil Stokke <bodil@bodil.org>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(require 'ohai-package)

(use-package org
  :ensure org-plus-contrib
  :config
  ;; Stop org-mode from highjacking shift-cursor keys.
  (setq org-replace-disputed-keys t)
  ;; Always use visual-line-mode in org-mode, and wrap it at column 80.
  (add-hook
   'org-mode-hook
   (lambda ()
     (visual-line-mode 1)
     (set-visual-wrap-column 80)))
  ;; Fancy bullet rendering.
  (use-package org-bullets
    :config
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
  ;; Insert links from clipboard.
  (use-package org-cliplink
    :config
    (with-eval-after-load "org"
      (define-key org-mode-map (kbd "C-c M-l") 'org-cliplink))))
  ;; org-ref
  (use-package org-ref
    :config
    (setq org-ref-bibliography-notes "/Users/Em/Repos/ImInSpace/Library/Refs/refnotes.org"
          org-ref-default-bibliography '("/Users/Em/Repos/ImInSpace/Library/Refs/default.bib")
          org-ref-pdf-directory "/Users/Em/Repos/ImInSpace/Library/Refs/PDFs/")
    (require 'org-ref))
  ;; org-brain
  (use-package org-brain)
  ;; interleave
  (use-package interleave)
  :: org-mindmap
  ;;(usepackage org-mind-map
  ;;  :config
  ;;  (load "/Users/Em/.emacs.d/elpa/org-mind-map.el"))
  ;; pdf-tools
  (defun bjm/save-buffer-no-args ()
    (save-buffer))
  (use-package pdf-tools
    :pin manual
    :config
    (pdf-tools install)
    (add-hook 'pdf-view-mode-hook (lambda () (cua-mode 0)))
    (setq-default pdf-view-display-size 'fit-page)
    (setq pdf-view-resize-factor 1.1)
    (setq pdf-annot-activate-created-annotations t)
    (define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)
    (define-key pdf-view-mode-map (kbd "h") 'pdf-annot-add-highlight-markup-annotation)
    (define-key pdf-view-mode-map (kbd "t") 'pdf-annot-add-text-annotation)
    (define-key pdf-view-mode-map (kbd "D") 'pdf-annot-delete)
    (with-eval-after-load "pdf-annot"
      (define-key pdf-annot-edit-contents-minor-mode-map (kbd "<return>") 'pdf-annot-edit-contents-commit)
      (define-key pdf-annot-edit-contents-minor-mode-map (kbd "<S-return>") 'newline)
      (advice-add 'pdf-annot-edit-contents-commit :after 'bjm/save-buffer-no-args)))

  (provide 'ohai-orgmode)
