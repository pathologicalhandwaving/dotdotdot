;;; search-engines.el --- Custom Search Engines
;; Copyright (C) 2018  <KMS>

;; Author: <KMS> <<iminspace.org@gmail.com>>

;;; Code:

;;; Packages:
(require 'engine-mode)
(engine-mode t)


(setq engine/browser-function 'eww-browse-url)

;;; Engines:

;; CTAN
(defengine ctan
  "http://www.ctan.org/search/?x=1&PORTAL=on&phrase=%s"
  :docstring "Search the Comprehensive TeX Archive Network (ctan.org)")

;; Amazon
(defengine amazon
  "http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=%s")

;; DuckDuckGo
(defengine duckduckgo
  "https://duckduckgo.com/?q=%s"
  :keybinding "d")

;; GitHub
(defengine github
  "https://github.com/search?ref=simplesearch&q=%s")

;; Google
(defengine google
  "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s"
  :keybinding "g")

;; Google Images
(defengine google-images
  "http://www.google.com/images?hl=en&source=hp&biw=1440&bih=795&gbv=2&aq=f&aqi=&aql=&oq=&q=%s")

;; Google Maps
(defengine google-maps
  "http://maps.google.com/maps?q=%s"
  :docstring "Maps")

;; Project Gutenberg
(defengine project-gutenberg
  "http://www.gutenberg.org/ebooks/search/?query=%s")

;; RFCs
(defengine rfcs
  "http://pretty-rfc.herokuapp.com/search?q=%s")

;; StackOverflow
(defengine stack-overflow
  "https://stackoverflow.com/search?q=%s")

;; Twitter
(defengine twitter
  "https://twitter.com/search?q=%s")

;; Wikipedia
(defengine wikipedia
  "http://www.wikipedia.org/search-redirect.php?language=en&go=Go&search=%s"
  :keybinding "w"
  :docstring "Wiki Wormhole Go!")

;; Wikitionary
(defengine wiktionary
  "https://www.wikipedia.org/search-redirect.php?family=wiktionary&language=en&go=Go&search=%s")

;; Wolfram
(defengine wolfram-alpha
  "http://www.wolframalpha.com/input/?i=%s")

;; YouTube
(defengine youtube
  "http://www.youtube.com/results?aq=f&oq=&search_query=%s")



(provide 'search-engines)
(message "Search Engines Loaded!")
;;; search-engines.el ends here
