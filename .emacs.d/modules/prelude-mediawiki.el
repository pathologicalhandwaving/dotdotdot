;;; prelude-mediawiki.el --- Emacs Prelude: mediawiki editing config
;;
;; Copyright © 2011-2017 Bozhidar Batsov
;;
;; Author: Bozhidar Batsov <bozhidar@batsov.com>
;; URL: https://github.com/bbatsov/prelude
;; Version: 1.0.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Basic configs for access to WikEmacs and Wikipedia.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(prelude-require-packages '(mediawiki))

(eval-after-load 'mediawiki
  '(progn
     (setq mediawiki-site-alist '(("Wikipedia" "http://en.wikipedia.org/w" "" "" "Main Page")
                                  ("WikEmacs" "http://wikemacs.org/w/" "" "" "Main Page")
                                  ("Wikitionary" "https://en.wiktionary.org/wiki/Wiktionary:Main_Page")
                                  ("Wikibooks" "https://en.wikibooks.org/wiki/Main_Page")
                                  ("Wikisource" "https://en.wikisource.org/wiki/Main_Page")
                                  ("Wikiquote" "https://en.wikiquote.org/wiki/Main_Page")
                                  ("Wikicommons" "https://commons.wikimedia.org/wiki/Main_Page")
                                  ("Wikidata" "https://www.wikidata.org/wiki/Wikidata:Main_Page")
                                  ("Wikinews" "https://en.wikinews.org/wiki/Main_Page")
                                  ("Complexity Zoo" "https://complexityzoo.uwaterloo.ca/Complexity_Zoo")
                                  ("Encyclopedia of Maths" "https://www.encyclopediaofmath.org/index.php/Main_Page")
                                  ("OEIS" "https://oeis.org/")
                                  ("MathWorld" "http://mathworld.wolfram.com/")))

     ;; Emacs users care more for WikEmacs than Wikipedia :-)
     (setq mediawiki-site-default "WikEmacs")))

(provide 'prelude-mediawiki)

;;; prelude-mediawiki.el ends here
