;;; google-maps-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "google-maps" "google-maps.el" (0 0 0 0))
;;; Generated autoloads from google-maps.el

(autoload 'google-maps "google-maps" "\
Run Google Maps on LOCATION.\nIf NO-GEOCODING is t, then does not try to geocode the address\nand do not ask the user for a more precise location.\n\n(fn LOCATION &optional NO-GEOCODING)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-maps" '("google-maps-history")))

;;;***

;;;### (autoloads nil "google-maps-base" "google-maps-base.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from google-maps-base.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-maps-base" '("google-maps-" "mapconcat-if-not")))

;;;***

;;;### (autoloads nil "google-maps-geocode" "google-maps-geocode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from google-maps-geocode.el

(autoload 'google-maps-geocode-replace-region "google-maps-geocode" "\
Geocode region and replace it with a more accurate result.\n\n(fn BEG END)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-maps-geocode" '("google-maps-geocode-")))

;;;***

;;;### (autoloads nil "google-maps-static" "google-maps-static.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from google-maps-static.el

(autoload 'google-maps-static-mode "google-maps-static" "\
A major mode for Google Maps service\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-maps-static" '("google-maps-")))

;;;***

;;;### (autoloads nil "org-location-google-maps" "org-location-google-maps.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-location-google-maps.el

(autoload 'org-location-google-maps "org-location-google-maps" "\
Show Google Map for location of an Org entry in an org buffer.\nIf WITH-CURRENT-LOCATION prefix is set, add a marker with current\nlocation.\n\n(fn &optional WITH-CURRENT-LOCATION)" t nil)

(autoload 'org-agenda-location-google-maps "org-location-google-maps" "\
Show Google Map for location of an Org entry in an org-agenda buffer.\n\n(fn &optional WITH-CURRENT-LOCATION)" t nil)

(autoload 'org-address-google-geocode-set "org-location-google-maps" "\
Set address property to LOCATION address for current entry using Google Geocoding API.\n\n(fn LOCATION)" t nil)

(autoload 'org-coordinates-google-geocode-set "org-location-google-maps" "\
Set coordinates property to LOCATION coordinates for current entry using Google Geocoding API.\n\n(fn LOCATION)" t nil)

(autoload 'org-google-maps-key-bindings "org-location-google-maps" "\
\n\n(fn)" nil nil)

(autoload 'org-agenda-google-maps-key-bindings "org-location-google-maps" "\
\n\n(fn)" nil nil)

(eval-after-load 'org '(org-google-maps-key-bindings))

(eval-after-load 'org-agenda '(org-agenda-google-maps-key-bindings))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-location-google-maps" '("org-google-maps")))

;;;***

;;;### (autoloads nil nil ("google-maps-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; google-maps-autoloads.el ends here