;;; w3m-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "bookmark-w3m" "bookmark-w3m.el" (0 0 0 0))
;;; Generated autoloads from bookmark-w3m.el

(autoload 'bookmark-w3m-bookmark-jump "bookmark-w3m" "\
Default bookmark handler for w3m buffers.\n\n(fn BOOKMARK)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bookmark-w3m" '("bookmark-w3m-")))

;;;***

;;;### (autoloads nil "mime-w3m" "mime-w3m.el" (0 0 0 0))
;;; Generated autoloads from mime-w3m.el

(autoload 'mime-w3m-preview-text/html "mime-w3m" "\
\n\n(fn ENTITY SITUATION)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "mime-w3m" '("mime-w3m-")))

;;;***

;;;### (autoloads nil "w3m" "w3m.el" (0 0 0 0))
;;; Generated autoloads from w3m.el

(autoload 'w3m-retrieve "w3m" "\
Retrieve web contents pointed to by URL.\nIt will put the retrieved contents into the current buffer.\n\nIf HANDLER is nil, this function will retrieve web contents, return\nthe content type of the retrieved data, and then come to an end.  This\nbehavior is what is called a synchronous operation.  You have to\nspecify HANDLER in order to make this function show its real ability,\nwhich is called an asynchronous operation.\n\nIf HANDLER is a function, this function will come to an end in no time.\nIn this case, contents will be retrieved by the asynchronous process\nafter a while.  And after finishing retrieving contents successfully,\nHANDLER will be called on the buffer where this function starts.  The\ncontent type of the retrieved data will be passed to HANDLER as a\nstring argument.\n\nNO-UNCOMPRESS specifies whether this function should not uncompress contents.\nNO-CACHE specifies whether this function should not use cached contents.\nPOST-DATA and REFERER will be sent to the web server with a request.\n\n(fn URL &optional NO-UNCOMPRESS NO-CACHE POST-DATA REFERER HANDLER)" nil nil)

(autoload 'w3m-download "w3m" "\
Download contents of URL to a file named FILENAME.\nNO-CACHE (which the prefix argument gives when called interactively)\nspecifies not using the cached data.\n\n(fn &optional URL FILENAME NO-CACHE HANDLER POST-DATA)" t nil)

(autoload 'w3m-goto-url "w3m" "\
Visit World Wide Web pages in the current buffer.\n\nThis is the primitive function of `w3m'.\n\nIf the second argument RELOAD is non-nil, reload a content of URL.\nExcept that if it is 'redisplay, re-display the page without reloading.\nThe third argument CHARSET specifies a charset to be used for decoding\na content.\nThe fourth argument POST-DATA should be a string or a cons cell.\nIf it is a string, it makes this function request a body as if\nthe content-type is \"x-www-form-urlencoded\".  If it is a cons cell,\nthe car of a cell is used as the content-type and the cdr of a cell is\nused as the body.\nIf the fifth argument REFERER is specified, it is used for a Referer:\nfield for this request.\nThe remaining HANDLER, ELEMENT[1], NO-POPUP, and SAVE-POS[2] are for\nthe internal operations of emacs-w3m.\nYou can also use \"quicksearch\" url schemes such as \"gg:emacs\" which\nwould search for the term \"emacs\" with the Google search engine.\nSee the `w3m-search' function and the variable `w3m-uri-replace-alist'.\n\nNotes for the developers:\n[1] ELEMENT is a history element which has already been registered in\nthe `w3m-history-flat' variable.  It is corresponding to URL to be\nretrieved at this time, not for the url of the current page.\n\n[2] SAVE-POS leads this function to save the current emacs-w3m window\nconfiguration; i.e. to run `w3m-history-store-position'.\n`w3m-history-store-position' should be called in a w3m-mode buffer, so\nthis will be convenient if a command that calls this function may be\ninvoked in other than a w3m-mode buffer.\n\n(fn URL &optional RELOAD CHARSET POST-DATA REFERER HANDLER ELEMENT NO-POPUP SAVE-POS)" t nil)

(autoload 'w3m-goto-url-new-session "w3m" "\
Visit World Wide Web pages in a new buffer.\n\nIf you invoke this command in the emacs-w3m buffer, the new buffer\nwill be created by copying the current buffer.  Otherwise, the new\nbuffer will start afresh.\n\n(fn URL &optional RELOAD CHARSET POST-DATA REFERER)" t nil)

(autoload 'w3m-gohome "w3m" "\
Go to the Home page.\n\n(fn)" t nil)

(autoload 'w3m-create-empty-session "w3m" "\
Create an empty page as a new session and visit it.\n\n(fn)" t nil)

(autoload 'w3m "w3m" "\
Visit World Wide Web pages using the external w3m command.\n\nWhen you invoke this command interactively for the first time, it will\nvisit a page which is pointed to by a string like url around the\ncursor position or the home page specified by the `w3m-home-page'\nvariable, but you will be prompted for a URL if `w3m-quick-start' is\nnil (default t) or `w3m-home-page' is nil.\n\nThe variables `w3m-pop-up-windows' and `w3m-pop-up-frames' control\nwhether this command should pop to a window or a frame up for the\nsession.\n\nWhen an emacs-w3m session has already been opened, this command will\npop to an existing window or frame, but if `w3m-quick-start' is nil,\n(default t), you will be prompted for a URL (which defaults to `popup'\nmeaning to pop to an existing emacs-w3m buffer up).\n\nIn addition, if the prefix argument is given or you enter the empty\nstring for the prompt, this command will visit a url at the point, or\nthe home page the `w3m-home-page' variable specifies, or the \"about:\"\npage.\n\nYou can also run this command in the batch mode as follows:\n\n  emacs -f w3m http://emacs-w3m.namazu.org/ &\n\nIn that case, or if this command is called non-interactively, the\nvariables `w3m-pop-up-windows' and `w3m-pop-up-frames' will be ignored\n(treated as nil) and it will run emacs-w3m at the current (or the\ninitial) window.\n\nIf the optional NEW-SESSION is non-nil, this function makes a new\nemacs-w3m buffer.  Besides that, it also makes a new emacs-w3m buffer\nif `w3m-make-new-session' is non-nil and a user specifies a url string.\n\nThe optional INTERACTIVE-P is for the internal use; it is mainly used\nto check whether Emacs 22 or later calls this function as an\ninteractive command in the batch mode.\n\n(fn &optional URL NEW-SESSION INTERACTIVE-P)" t nil)

(autoload 'w3m-browse-url "w3m" "\
Ask emacs-w3m to browse URL.\nNEW-SESSION specifies whether to create a new emacs-w3m session.  URL\ndefaults to the string looking like a url around the cursor position.\nPop to a window or a frame up according to `w3m-pop-up-windows' and\n`w3m-pop-up-frames'.\n\n(fn URL &optional NEW-SESSION)" t nil)

(autoload 'w3m-find-file "w3m" "\
Function used to open FILE whose name is expressed in ordinary format.\nThe file name will be converted into the file: scheme.\n\n(fn FILE)" t nil)

(autoload 'w3m-region "w3m" "\
Render the region of the current buffer between START and END.\nURL specifies the address where the contents come from.  It can be\nomitted or nil when the address is not identified.  CHARSET is used\nfor decoding the contents.  If it is nil, this function attempts to\nparse the meta tag to extract the charset.\n\n(fn START END &optional URL CHARSET)" t nil)

(autoload 'w3m-buffer "w3m" "\
Render the current buffer.\nSee `w3m-region' for the optional arguments.\n\n(fn &optional URL CHARSET)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m" '("w3m-" "emacs-w3m-version")))

;;;***

;;;### (autoloads nil "w3m-antenna" "w3m-antenna.el" (0 0 0 0))
;;; Generated autoloads from w3m-antenna.el

(autoload 'w3m-about-antenna "w3m-antenna" "\
\n\n(fn URL &optional NO-DECODE NO-CACHE POST-DATA REFERER HANDLER)" nil nil)

(autoload 'w3m-antenna "w3m-antenna" "\
Report changes of WEB sites, which is specified in `w3m-antenna-sites'.\n\n(fn &optional NO-CACHE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-antenna" '("w3m-antenna-")))

;;;***

;;;### (autoloads nil "w3m-bookmark" "w3m-bookmark.el" (0 0 0 0))
;;; Generated autoloads from w3m-bookmark.el

(autoload 'w3m-bookmark-add-this-url "w3m-bookmark" "\
Add link under cursor to bookmark.\n\n(fn)" t nil)

(autoload 'w3m-bookmark-add-current-url "w3m-bookmark" "\
Add a url of the current page to the bookmark.\nWith prefix, ask for a new url instead of the present one.\n\n(fn &optional ARG)" t nil)

(autoload 'w3m-bookmark-add-all-urls "w3m-bookmark" "\
Add urls of all pages being visited to the bookmark.\n\n(fn)" t nil)

(autoload 'w3m-bookmark-add-current-url-group "w3m-bookmark" "\
Add link of the group of current urls to the bookmark.\n\n(fn)" t nil)

(autoload 'w3m-bookmark-view "w3m-bookmark" "\
Display the bookmark list in the current buffer.\n\n(fn &optional RELOAD)" t nil)

(autoload 'w3m-bookmark-view-new-session "w3m-bookmark" "\
Display the bookmark list in a new buffer.\n\n(fn &optional RELOAD)" t nil)

(autoload 'w3m-about-bookmark "w3m-bookmark" "\
\n\n(fn &rest ARGS)" nil nil)

(autoload 'w3m-setup-bookmark-menu "w3m-bookmark" "\
Setup w3m bookmark items in menubar.\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-bookmark" '("w3m-bookmark-")))

;;;***

;;;### (autoloads nil "w3m-bug" "w3m-bug.el" (0 0 0 0))
;;; Generated autoloads from w3m-bug.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-bug" '("report-emacs-w3m-bug")))

;;;***

;;;### (autoloads nil "w3m-ccl" "w3m-ccl.el" (0 0 0 0))
;;; Generated autoloads from w3m-ccl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-ccl" '("w3m-")))

;;;***

;;;### (autoloads nil "w3m-cookie" "w3m-cookie.el" (0 0 0 0))
;;; Generated autoloads from w3m-cookie.el

(autoload 'w3m-cookie-shutdown "w3m-cookie" "\
Save cookies, and reset cookies' data.\n\n(fn &optional INTERACTIVE-P)" t nil)

(autoload 'w3m-cookie-set "w3m-cookie" "\
Register cookies which correspond to URL.\nBEG and END should be an HTTP response header region on current buffer.\n\n(fn URL BEG END)" nil nil)

(autoload 'w3m-cookie-get "w3m-cookie" "\
Get a cookie field string which corresponds to the URL.\n\n(fn URL)" nil nil)

(autoload 'w3m-cookie "w3m-cookie" "\
Display cookies and enable you to manage them.\n\n(fn &optional NO-CACHE)" t nil)

(autoload 'w3m-about-cookie "w3m-cookie" "\
Make the html contents to display and to enable you to manage cookies.\nTo delete all cookies associated with amazon.com for example, do it in\nthe following two steps:\n\n1. Mark them `unused' (type `C-c C-c' or press any OK button).\n\nLimit to [amazon.com          ] <= [ ]regexp  [OK]\n( )Noop  ( )Use all  (*)Unuse all  ( )Delete unused all  [OK]\n\n2. Delete cookies that are marked `unused'.\n\nLimit to [amazon.com          ] <= [ ]regexp  [OK]\n( )Noop  ( )Use all  ( )Unuse all  (*)Delete unused all  [OK]\n\nYou can mark cookies on the one-by-one basis of course.  The `Limit-to'\nstring is case insensitive and allows a regular expression.\n\n(fn URL &optional NO-DECODE NO-CACHE POST-DATA &rest ARGS)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-cookie" '("w3m-")))

;;;***

;;;### (autoloads nil "w3m-dtree" "w3m-dtree.el" (0 0 0 0))
;;; Generated autoloads from w3m-dtree.el

(autoload 'w3m-about-dtree "w3m-dtree" "\
\n\n(fn URL &optional NODECODE ALLFILES &rest ARGS)" nil nil)

(autoload 'w3m-dtree "w3m-dtree" "\
Display directory tree on local file system.\nIf called with 'prefix argument', display all directorys and files.\n\n(fn ALLFILES PATH)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-dtree" '("w3m-dtree-")))

;;;***

;;;### (autoloads nil "w3m-ems" "w3m-ems.el" (0 0 0 0))
;;; Generated autoloads from w3m-ems.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-ems" '("w3m-")))

;;;***

;;;### (autoloads nil "w3m-favicon" "w3m-favicon.el" (0 0 0 0))
;;; Generated autoloads from w3m-favicon.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-favicon" '("w3m-")))

;;;***

;;;### (autoloads nil "w3m-fb" "w3m-fb.el" (0 0 0 0))
;;; Generated autoloads from w3m-fb.el

(defvar w3m-fb-mode nil "\
Non-nil if W3m-Fb mode is enabled.\nSee the `w3m-fb-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `w3m-fb-mode'.")

(custom-autoload 'w3m-fb-mode "w3m-fb" nil)

(autoload 'w3m-fb-mode "w3m-fb" "\
Toggle W3M Frame Buffer mode.\nThis allows frame-local lists of buffers (tabs).\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-fb" '("w3m-fb-")))

;;;***

;;;### (autoloads nil "w3m-filter" "w3m-filter.el" (0 0 0 0))
;;; Generated autoloads from w3m-filter.el

(autoload 'w3m-filter "w3m-filter" "\
Apply filtering rule of URL against a content in this buffer.\n\n(fn URL)" nil nil)

(autoload 'w3m-toggle-filtering "w3m-filter" "\
Toggle whether web pages will have their html modified by w3m's filters before being rendered.\nWhen called with a prefix argument, prompt for a single filter to\ntoggle with completion (a function toggled last will first appear).\n\n(fn ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-filter" '("w3m-filter-")))

;;;***

;;;### (autoloads nil "w3m-form" "w3m-form.el" (0 0 0 0))
;;; Generated autoloads from w3m-form.el

(autoload 'w3m-fontify-forms "w3m-form" "\
Process half-dumped data and fontify forms in this buffer.\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-form" '("w3m-fo")))

;;;***

;;;### (autoloads nil "w3m-hist" "w3m-hist.el" (0 0 0 0))
;;; Generated autoloads from w3m-hist.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-hist" '("w3m-history")))

;;;***

;;;### (autoloads nil "w3m-image" "w3m-image.el" (0 0 0 0))
;;; Generated autoloads from w3m-image.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-image" '("w3m-")))

;;;***

;;;### (autoloads nil "w3m-lnum" "w3m-lnum.el" (0 0 0 0))
;;; Generated autoloads from w3m-lnum.el

(autoload 'w3m-lnum-mode "w3m-lnum" "\
Minor mode to extend point commands by using Conkeror style number selection.\nWith prefix ARG 0 disable battery included point functions, otherwise\nenable them.  With no prefix ARG - toggle.\n\n(fn &optional ARG)" t nil)

(autoload 'w3m-lnum-goto "w3m-lnum" "\
Turn on link, image and form numbers and ask for one to go to.\n0 corresponds to location url.\n\n(fn)" t nil)

(autoload 'w3m-lnum-follow "w3m-lnum" "\
Turn on link numbers, ask for one and execute appropriate action on it.\nIf link - visit it, when button - press, when input - activate it,\nIf image - toggle it.\nWith prefix ARG visit link in new session or don't move over\nfield/button/image on activation/push/toggle.\nWith `-' ARG, for link image - go to it and toggle it, if link,\nvisit in background.  With -4 ARG, for link image - toggle it.\nWith double prefix ARG, prompt for url to visit.\nWith triple prefix ARG, prompt for url to visit in new session.\n\n(fn ARG)" t nil)

(autoload 'w3m-lnum-universal "w3m-lnum" "\
Turn on link numbers, ask for one and offer actions over it depending on selection type.\nActions may be selected either by hitting corresponding key,\npressing <return> over the action line or left clicking.\n\n(fn)" t nil)

(autoload 'w3m-lnum-toggle-inline-image "w3m-lnum" "\
If image at point, toggle it.\nOtherwise turn on link numbers and toggle selected image.\nWith prefix ARG open url under image in new session.\nIf no such url, move over image and toggle it.\n\n(fn &optional ARG)" t nil)

(autoload 'w3m-lnum-view-image "w3m-lnum" "\
Display the image under point in the external viewer.\nIf no image at poing, turn on image numbers and display selected.\nThe viewer is defined in `w3m-content-type-alist' for every type of an\nimage.\n\n(fn)" t nil)

(autoload 'w3m-lnum-save-image "w3m-lnum" "\
Save the image under point to a file.\nIf no image at point, turn on image numbers and save selected.\nThe default name will be the original name of the image.\n\n(fn)" t nil)

(autoload 'w3m-lnum-external-view-this-url "w3m-lnum" "\
Launch the external browser and display the link at point.\nIf no link at point, turn on link numbers and open selected externally.\n\n(fn)" t nil)

(autoload 'w3m-lnum-edit-this-url "w3m-lnum" "\
Edit the page linked from the anchor under the cursor.\nIf no such, turn on link numbers and edit selected.\n\n(fn)" t nil)

(autoload 'w3m-lnum-print-this-url "w3m-lnum" "\
Display the url under point in the echo area and put it into `kill-ring'.\nIf no url under point, activate numbering and select one.\n\n(fn)" t nil)

(autoload 'w3m-lnum-download-this-url "w3m-lnum" "\
Download the file or the page pointed to by the link under point.\nIf no point, activate numbering and select andchor to download.\n\n(fn)" t nil)

(autoload 'w3m-lnum-bookmark-add-this-url "w3m-lnum" "\
Add link under cursor to bookmarks.\nIf no link under point, activate numbering and ask for one.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-lnum" '("w3m-")))

;;;***

;;;### (autoloads nil "w3m-mail" "w3m-mail.el" (0 0 0 0))
;;; Generated autoloads from w3m-mail.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-mail" '("w3m-mail")))

;;;***

;;;### (autoloads nil "w3m-namazu" "w3m-namazu.el" (0 0 0 0))
;;; Generated autoloads from w3m-namazu.el

(autoload 'w3m-about-namazu "w3m-namazu" "\
\n\n(fn URL &optional NO-DECODE NO-CACHE &rest ARGS)" nil nil)

(autoload 'w3m-namazu "w3m-namazu" "\
Search indexed files with Namazu.\n\n(fn INDEX QUERY &optional RELOAD)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-namazu" '("w3m-namazu-")))

;;;***

;;;### (autoloads nil "w3m-perldoc" "w3m-perldoc.el" (0 0 0 0))
;;; Generated autoloads from w3m-perldoc.el

(autoload 'w3m-about-perldoc "w3m-perldoc" "\
\n\n(fn URL &optional NO-DECODE NO-CACHE &rest ARGS)" nil nil)

(autoload 'w3m-perldoc "w3m-perldoc" "\
View Perl documents.\n\n(fn DOCNAME)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-perldoc" '("w3m-perldoc-")))

;;;***

;;;### (autoloads nil "w3m-proc" "w3m-proc.el" (0 0 0 0))
;;; Generated autoloads from w3m-proc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-proc" '("w3m-process-")))

;;;***

;;;### (autoloads nil "w3m-rss" "w3m-rss.el" (0 0 0 0))
;;; Generated autoloads from w3m-rss.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-rss" '("w3m-rss-")))

;;;***

;;;### (autoloads nil "w3m-save" "w3m-save.el" (0 0 0 0))
;;; Generated autoloads from w3m-save.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-save" '("w3m-save-buffer")))

;;;***

;;;### (autoloads nil "w3m-search" "w3m-search.el" (0 0 0 0))
;;; Generated autoloads from w3m-search.el

(autoload 'w3m-search "w3m-search" "\
Search QUERY using SEARCH-ENGINE.\n\nSearch results will appear in the current buffer.\n\nWhen called interactively with a prefix argument, you can choose one of\nthe search engines defined in `w3m-search-engine-alist'.  Otherwise use\n`w3m-search-default-engine'.\nIf Transient Mark mode, use the region as an initial string of query\nand deactivate the mark.\n\n(fn SEARCH-ENGINE QUERY)" t nil)

(autoload 'w3m-search-new-session "w3m-search" "\
Like `w3m-search', but do the search in a new buffer.\n\n(fn SEARCH-ENGINE QUERY)" t nil)

(autoload 'w3m-search-uri-replace "w3m-search" "\
Generate query string for ENGINE from URI matched by last search.\n\n(fn URI ENGINE)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-search" '("w3m-search-")))

;;;***

;;;### (autoloads nil "w3m-session" "w3m-session.el" (0 0 0 0))
;;; Generated autoloads from w3m-session.el

(autoload 'w3m-session-save "w3m-session" "\
Save the current session (all currently open emacs-w3m buffers).\n\nThe user will be prompted for a name for the saved session.  The\nsaved session information will include, for each currently open\nemacs-w3m buffer: the current url and page title, and the\nbuffer's url history.\n\n(fn)" t nil)

(autoload 'w3m-session-crash-recovery-remove "w3m-session" "\
Remove crash recovery session set.\n\n(fn)" nil nil)

(autoload 'w3m-session-select "w3m-session" "\
Select session from session list.\nPosition point at N-th session if N is given.\n\n(fn &optional N)" t nil)

(autoload 'w3m-setup-session-menu "w3m-session" "\
Setup w3m session items in menubar.\n\n(fn)" nil nil)

(autoload 'w3m-session-last-autosave-session "w3m-session" "\
\n\n(fn)" nil nil)

(autoload 'w3m-session-last-crashed-session "w3m-session" "\
\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-session" '("w3m-session-")))

;;;***

;;;### (autoloads nil "w3m-symbol" "w3m-symbol.el" (0 0 0 0))
;;; Generated autoloads from w3m-symbol.el

(autoload 'w3m-replace-symbol "w3m-symbol" "\
\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-symbol" '("w3m-")))

;;;***

;;;### (autoloads nil "w3m-tabmenu" "w3m-tabmenu.el" (0 0 0 0))
;;; Generated autoloads from w3m-tabmenu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-tabmenu" '("w3m-")))

;;;***

;;;### (autoloads nil "w3m-ucs" "w3m-ucs.el" (0 0 0 0))
;;; Generated autoloads from w3m-ucs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-ucs" '("w3m-")))

;;;***

;;;### (autoloads nil "w3m-util" "w3m-util.el" (0 0 0 0))
;;; Generated autoloads from w3m-util.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-util" '("w3m-")))

;;;***

;;;### (autoloads nil "w3m-weather" "w3m-weather.el" (0 0 0 0))
;;; Generated autoloads from w3m-weather.el

(autoload 'w3m-weather "w3m-weather" "\
Display weather report.\n\n(fn AREA)" t nil)

(autoload 'w3m-about-weather "w3m-weather" "\
\n\n(fn URL NO-DECODE NO-CACHE POST-DATA REFERER HANDLER)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-weather" '("w3m-weather-")))

;;;***

;;;### (autoloads nil "w3mhack" "w3mhack.el" (0 0 0 0))
;;; Generated autoloads from w3mhack.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3mhack" '("w3mhack-" "shimbun-module-directory")))

;;;***

;;;### (autoloads nil nil ("w3m-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; w3m-autoloads.el ends here
