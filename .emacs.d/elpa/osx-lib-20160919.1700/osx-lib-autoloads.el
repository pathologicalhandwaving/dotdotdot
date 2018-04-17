;;; osx-lib-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "osx-lib" "osx-lib.el" (0 0 0 0))
;;; Generated autoloads from osx-lib.el

(autoload 'osx-lib-run-osascript "osx-lib" "\
Run an SCRIPT-CONTENT as AppleScript/osascipt.\n\n(fn SCRIPT-CONTENT)" t nil)

(autoload 'osx-lib-osx-version "osx-lib" "\
Get OS version.\n\n(fn)" t nil)

(autoload 'osx-lib-run-js "osx-lib" "\
Run an SCRIPT-CONTENT as JavaScript.\n\n(fn SCRIPT-CONTENT)" t nil)

(autoload 'osx-lib-do-beep "osx-lib" "\
Play beep sound.\n\n(fn)" nil nil)

(autoload 'osx-lib-notify2 "osx-lib" "\
Create a notification with title as TITLE and message as MESSAGE.\n\n(fn TITLE MESSAGE)" nil nil)

(autoload 'osx-lib-notify3 "osx-lib" "\
Create a notification with title as TITLE, subtitle as SUBTITLE and message as MESSAGE.\n\n(fn TITLE SUBTITLE MESSAGE)" nil nil)

(autoload 'osx-lib-copy-to-clipboard "osx-lib" "\
Copy the given TEXT to clipboard.\n\n(fn &optional TEXT)" t nil)

(autoload 'osx-lib-reveal-in-finder-as "osx-lib" "\
Reveal the supplied file FILE in Finder.\nThis function runs the actual AppleScript.\n\n(fn FILE)" nil nil)

(autoload 'osx-lib-reveal-in-finder "osx-lib" "\
Reveal the file associated with the current buffer in the OS X Finder.\nIn a dired buffer, it will open the current file.\n\n(fn)" t nil)

(autoload 'osx-lib-vpn-connect "osx-lib" "\
Connect to vpn using given VPN-NAME and PASSWORD.\n\n(fn VPN-NAME PASSWORD)" t nil)

(autoload 'osx-lib-vpn-disconnect "osx-lib" "\
Disconnect from VPN-NAME vpn.\n\n(fn VPN-NAME)" t nil)

(autoload 'osx-lib-say "osx-lib" "\
Speak the MESSAGE.\n\n(fn MESSAGE)" t nil)

(autoload 'osx-open-url-at-point "osx-lib" "\
Open URL at point using default browser.\n\n(fn URL)" t nil)

(autoload 'osx-lib-set-volume "osx-lib" "\
Set sound output volume to VOL(0-100).\n\n(fn VOL)" t nil)

(autoload 'osx-lib-get-volume "osx-lib" "\
Get sound output volume (0-100).\n\n(fn)" nil nil)

(autoload 'osx-lib-start-terminal "osx-lib" "\
Start terminal in DIR.\n\n(fn &optional DIR CMD-WITH-QUOTED-ARGS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "osx-lib" '("osx-l")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; osx-lib-autoloads.el ends here
