;;; timerfunctions-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "timerfunctions" "timerfunctions.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from timerfunctions.el

(autoload 'timerfunctions-introduction "timerfunctions" "\
Provides electric help from variable `timerfunctions-introduction'.\n\n(fn)" t nil)

(autoload 'tf-time-difference "timerfunctions" "\
Gives the time in seconds elaspsed from TIMESUB to TIMEPLUS.\nAlmost like (- TIMEPLUS TIMESUB ).\n\n(fn TIMEPLUS TIMESUB)" nil nil)

(autoload 'tf-run-with-idle-timer "timerfunctions" "\
Similar to `run-with-idle-timer', except that provides more options.\n\nSuppose you want Emacs to run an action every REDOSECS for as\nlong as Emacs remains idle.  Think you can do it with Emacs's\n`run-with-idle-timer'? Think again.. :)   That function will\nperform the action exactly once every time Emacs goes idle.\nThis function *will* allow you to keep performing an action as\nlong as Emacs remains idle.\n\nSECS is the number of seconds to wait once Emacs has first gone\nidle. It can really be any expression whose at runtime yields a\nnumber..  Note that the way `run-with-idle-timer' is defined, SECS will\nunfortunately be evalled immediately after you call this function, but\nredosecs will be *every* time Emacs *remains* idle..yay..\n\nIf REDOREPEAT is non-nil, the action is repeated as long Emacs remains\nidle.  REDOSECS is the number of additional seconds (after the action\nhas been done) to wait if Emacs remains idle before performing the\naction again.  Again, redosecs does not have to be a number, it can be\nany expression whose eval yields to a number...\n\nIf INCLUDERUNTIME is non-nil, REDOSECS is the number of\nadditional seconds to wait after the action has been invoked (not\nfinished).\n\nIf REPEAT is nonnil, the entire cycle is repeated every time Emacs\nnext goes idle.. (as in the default `run-with-idle-timer').\n\n(fn SECS REPEAT REDOSECS REDOREPEAT INCLUDERUNTIME FUNCTION &rest ARGS)" nil nil)

(autoload 'tf-with-timeout "timerfunctions" "\
Like `with-timeout' but provide ability to inhibit timeout during\nparts of the body.  Note that most of the time, you may not need this\nfunctionality at all unless you want to be very 'clean' about\nthings---you could get by with the regular `with-timeout' and not using\nsit-for's in the body.  Or with the regular `with-timeout' and using\n`unwind-protect'.\n\n\nTO DECIDE: IN VIEW OF THE UNWIND-PROTECT, DO WE NEED THIS FUNCTION AT ALL??\n\nRun BODY, but if it doesn't finish in SECONDS seconds, give up.\nIf we give up, we run the TIMEOUT-FORMS which are contained in TLIST\nand return the value of the last one.\nThe call should look like:\n (tf-with-timeout quoted-expr (SECONDS TIMEOUT-FORMS...) BODY...)\n\nThe timeout is checked whenever Emacs waits for some kind of external\nevent (such as keyboard input, input from subprocesses, or a certain time);\nif the program loops without waiting in any way, the timeout will not\nbe detected.  Furthermore:\n\nDuring the execution of the body, we SHALL NOT time out when INHIBITP\nevals to non-nil.  Thus, for example, you might initially setq a\nvariable my-var as nil, supply inhibitp as 'my-var, and then you may\nsetq my-var to t or nil within the body of tf-with-timeout to enable\nor disable timeout.  The best use of this functionality is to setq\ninhibitp to t when during parts of loops where you do not want the\nbody broken within certain parts of the loop.  (Of course, if that\npart of the loop does not contain any sit-for's or read's then you\ndon't have to worry about this in the first place..)\n\n\nagain, Do not forget my-var to some value before attempting to use this\ntf-with-timeout :)\n\nHere's an example:\n\n\n (let ((myinhibit t))\n  (tf-with-timeout 'myinhibit 'mytag 'mytimedoutvar\n		   (2 2)\n		   (setq a nil)\n		   (setq b nil)\n		   (sit-for 4)\n		   (setq a 4)\n		   (setq myinhibit nil)\n		   (sit-for 2)\n		   (setq b 5)\n		   ))\n\n\nThe above example requests a timeout within 2 seconds.  However, the\ntimeout can takes place only when myinhibit is set to nil,\nwhich becomes true after about 4 seconds.  Thus, after the execution of the\nbody, a has the value 4, but b has the value nil.\n\nSee `tf-test-timeout' for another example.\n\nImportant Note: If the body of a loop tends to stay in a timeout\ninhibited region for most of the time, then make sure that the timeout\nenabled region atleast spans about 0.02 seconds.. thus, use (sleep-for\n0.02) if needed.. this is because we check every 0.01 seconds if an\nuninhibited timeout condition has been satisfied.\n\nBut perhaps you do not want to include (sleep-for 0.02) because that\nwastes precious cpu time.  Simple, don't include it, just after a long\ninhibited body, you can include a timeout check within the body\ninstead of (sleep-for 0.02):\n (tf-with-timeout-check 'mytag 'mytimedoutvar 'myinhibitp)\n\nMoreover, if that is the main check you rely on, you it perhaps makes\nsense to increase the value of tf-with-timeout-repeat-sec, so that\nyour cpu cycles are not wasted every 0.01 sec.  See the doc of that\nvariable for more.\n\nTimertag should be a quoted symbol, also we WILL set that symbol to t\nduring the execution of these forms.\n\n(fn INHIBITP TIMERTAG TIMEDOUTVAR TLIST &rest BODY)" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "timerfunctions" '("timerfunctions-" "tf-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; timerfunctions-autoloads.el ends here
