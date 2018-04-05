;;; bbdb-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "bbdb" "bbdb.el" (0 0 0 0))
;;; Generated autoloads from bbdb.el

(defsubst bbdb-records nil "\
Return a list of all BBDB records; read in and parse the db if necessary.\nThis function also notices if the corresponding file on disk has been modified." (with-current-buffer (bbdb-buffer) bbdb-records))

(autoload 'bbdb-mode "bbdb" "\
Major mode for viewing and editing the Insidious Big Brother Database.\nLetters no longer insert themselves.  Numbers are prefix arguments.\nYou can move around using the usual cursor motion commands.\n\\<bbdb-mode-map>\n\\[bbdb-add-mail-alias]	 Add new mail alias to visible records or remove it.\n\\[bbdb-edit-field]	 Edit the field on the current line.\n\\[bbdb-delete-field-or-record]	 Delete the field on the current line.  If the current line is the\n	 first line of a record, then delete the entire record.\n\\[bbdb-insert-field]	 Insert a new field into the current record.  Note that this\n	 will let you add new fields of your own as well.\n\\[bbdb-transpose-fields]	 Swap the field on the current line with the previous field.\n\\[bbdb-dial]	 Dial the current phone field.\n\\[bbdb-next-record], \\[bbdb-prev-record]	 Move to the next or the previous displayed record, respectively.\n\\[bbdb-create]	 Create a new record.\n\\[bbdb-toggle-records-layout]	 Toggle whether the current record is displayed in a one-line\n	 listing, or a full multi-line listing.\n\\[bbdb-do-all-records]\\[bbdb-toggle-records-layout]	 Do that for all displayed records.\n\\[bbdb-merge-records]	 Merge the contents of the current record with some other, and then\n	 delete the current record.\n\\[bbdb-omit-record]	 Remove the current record from the display without deleting it from\n	 the database.  This is often a useful thing to do before using one\n	 of the `*' commands.\n\\[bbdb]	 Search for records in the database (on all fields).\n\\[bbdb-search-mail]	 Search for records by mail address.\n\\[bbdb-search-organization]	 Search for records by organization.\n\\[bbdb-search-xfields]	 Search for records by xfields.\n\\[bbdb-search-name]	 Search for records by name.\n\\[bbdb-search-changed]	 Display records that have changed since the database was saved.\n\\[bbdb-mail]	 Compose mail to the person represented by the current record.\n\\[bbdb-do-all-records]\\[bbdb-mail]	 Compose mail to everyone whose record is displayed.\n\\[bbdb-save]	 Save the BBDB file to disk.\n\\[bbdb-tex]	 Create a TeX listing of the current record.\n\\[bbdb-do-all-records]\\[bbdb-tex]	 Do that for all displayed record.\n\\[other-window]	 Move to another window.\n\\[bbdb-info]	 Read the Info documentation for BBDB.\n\\[bbdb-help]	 Display a one line command summary in the echo area.\n\\[bbdb-browse-url]	 Visit Web sites listed in the `url' field(s) of the current record.\n\nFor address completion using the names and mail addresses in the database:\n	 in Mail mode, type \\<mail-mode-map>\\[bbdb-complete-mail].\n	 in Message mode, type \\<message-mode-map>\\[bbdb-complete-mail].\n\nImportant variables:\n	 `bbdb-auto-revert'\n	 `bbdb-ignore-redundant-mails'\n	 `bbdb-case-fold-search'\n	 `bbdb-completion-list'\n	 `bbdb-default-area-code'\n	 `bbdb-default-domain'\n	 `bbdb-layout'\n	 `bbdb-file'\n	 `bbdb-phone-style'\n	 `bbdb-check-auto-save-file'\n	 `bbdb-pop-up-layout'\n	 `bbdb-pop-up-window-size'\n	 `bbdb-add-name'\n	 `bbdb-add-aka'\n	 `bbdb-add-mails'\n	 `bbdb-new-mails-primary'\n	 `bbdb-read-only'\n	 `bbdb-mua-pop-up'\n	 `bbdb-user-mail-address-re'\n\nThere are numerous hooks.  M-x apropos ^bbdb.*hook RET\n\n\\{bbdb-mode-map}\n\n(fn)" t nil)

(autoload 'bbdb-version "bbdb" "\
Return string describing the version of BBDB.\nWith prefix ARG, insert string at point.\n\n(fn &optional ARG)" t nil)

(autoload 'bbdb-initialize "bbdb" "\
Initialize BBDB for MUAS and miscellaneous packages.\nList MUAS may include the following symbols to initialize the respective\nmail/news readers, composers, and miscellaneous packages:\n  gnus       Gnus mail/news reader.\n  mh-e       MH-E mail reader.\n  mu4e       Mu4e mail reader.\n  rmail      Rmail mail reader.\n  vm         VM mail reader.\n  mail       Mail (M-x mail).\n  message    Message mode.\n  wl         Wanderlust mail reader.\n\n  anniv      Anniversaries in Emacs diary.\n\n  sc         Supercite.  However, this is not the full story.\n               See bbdb-sc.el for how to fully hook BBDB into Supercite.\n\n  pgp        PGP support:  this adds `bbdb-pgp' to `message-send-hook'\n               and `mail-send-hook' so that `bbdb-pgp' runs automatically\n               when a message is sent.\n               Yet see info node `(message)Signing and encryption'\n               why you might not want to rely for encryption on a hook\n               function which runs just before the message is sent,\n               that is, you might want to call the command `bbdb-pgp' manually,\n               then call `mml-preview'.\n\nSee also `bbdb-mua-auto-update-init'.  The latter is a separate function\nas this allows one to initialize the auto update feature for some MUAs only,\nfor example only for outgoing messages.\n\n(fn &rest MUAS)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb" '("bbdb-")))

;;;***

;;;### (autoloads nil "bbdb-anniv" "bbdb-anniv.el" (0 0 0 0))
;;; Generated autoloads from bbdb-anniv.el

(autoload 'bbdb-anniv-diary-entries "bbdb-anniv" "\
Add anniversaries from BBDB records to `diary-list-entries'.\nThis obeys `calendar-date-style' via `diary-date-forms'.\nTo enable this feature, put the following into your .emacs:\n\n (add-hook 'diary-list-entries-hook 'bbdb-anniv-diary-entries)\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-anniv" '("bbdb-anniv-")))

;;;***

;;;### (autoloads nil "bbdb-com" "bbdb-com.el" (0 0 0 0))
;;; Generated autoloads from bbdb-com.el

(autoload 'bbdb-do-all-records "bbdb-com" "\
Command prefix for operating on all records currently displayed.\nWith prefix ARG a positive number, operate on all records.\nWith prefix ARG a negative number, operate on current record only.\nThis only works for certain commands.\n\n(fn &optional ARG)" t nil)

(autoload 'bbdb-do-records "bbdb-com" "\
Return list of records to operate on.\nNormally this list includes only the current record.\nIt includes all currently displayed records if the command prefix \\<bbdb-mode-map>\\[bbdb-do-all-records] is used.\nIf FULL is non-nil, the list of records includes display information.\n\n(fn &optional FULL)" nil nil)

(autoload 'bbdb-append-display-p "bbdb-com" "\
Return variable `bbdb-append-display' and reset.\n\n(fn)" nil nil)

(autoload 'bbdb-append-display "bbdb-com" "\
Toggle appending next searched records in the *BBDB* buffer.\nWith prefix ARG \\[universal-argument] always append.\nWith ARG a positive number append for that many times.\nWith ARG a negative number do not append.\n\n(fn &optional ARG)" t nil)

(autoload 'bbdb-search-invert "bbdb-com" "\
Toggle inversion of the next search command.\nWith prefix ARG a positive number, invert next search.\nWith prefix ARG a negative number, do not invert next search.\n\n(fn &optional ARG)" t nil)

(autoload 'bbdb "bbdb-com" "\
Display all records in the BBDB matching REGEXP\nin either the name(s), organization, address, phone, mail, or xfields.\n\n(fn REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-name "bbdb-com" "\
Display all records in the BBDB matching REGEXP in the name\n(or ``alternate'' names).\n\n(fn REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-organization "bbdb-com" "\
Display all records in the BBDB matching REGEXP in the organization field.\n\n(fn REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-address "bbdb-com" "\
Display all records in the BBDB matching REGEXP in the address fields.\n\n(fn REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-mail "bbdb-com" "\
Display all records in the BBDB matching REGEXP in the mail address.\n\n(fn REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-phone "bbdb-com" "\
Display all records in the BBDB matching REGEXP in the phones field.\n\n(fn REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-xfields "bbdb-com" "\
Display all BBDB records for which xfield FIELD matches REGEXP.\n\n(fn FIELD REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-changed "bbdb-com" "\
Display records which have been changed since BBDB was last saved.\n\n(fn &optional LAYOUT)" t nil)

(autoload 'bbdb-timestamp-older "bbdb-com" "\
Display records with timestamp older than DATE.\nDATE must be in yyyy-mm-dd format.\n\n(fn DATE &optional LAYOUT)" t nil)

(autoload 'bbdb-timestamp-newer "bbdb-com" "\
Display records with timestamp newer than DATE.\nDATE must be in yyyy-mm-dd format.\n\n(fn DATE &optional LAYOUT)" t nil)

(autoload 'bbdb-creation-older "bbdb-com" "\
Display records with creation-date older than DATE.\nDATE must be in yyyy-mm-dd format.\n\n(fn DATE &optional LAYOUT)" t nil)

(autoload 'bbdb-creation-newer "bbdb-com" "\
Display records with creation-date newer than DATE.\nDATE must be in yyyy-mm-dd format.\n\n(fn DATE &optional LAYOUT)" t nil)

(autoload 'bbdb-creation-no-change "bbdb-com" "\
Display records that have the same timestamp and creation-date.\n\n(fn &optional LAYOUT)" t nil)

(autoload 'bbdb-create "bbdb-com" "\
Add a new RECORD to BBDB.\nWhen called interactively read all relevant info.\nDo not call this from a program; call `bbdb-create-internal' instead.\n\n(fn RECORD)" t nil)

(autoload 'bbdb-create-internal "bbdb-com" "\
Add a new record to the database and return it.\n\nThe following keywords are supported in SPEC:\n:name VAL          String or a cons cell (FIRST . LAST), the name of the person.\n                   An error is thrown if VAL is already in use\n                   and `bbdb-allow-duplicates' is nil.\n:affix VAL         List of strings.\n:aka VAL           List of strings.\n                   An error is thrown if an aka in VAL is already in use\n                   and `bbdb-allow-duplicates' is nil.\n:organization VAL  List of strings.\n:mail VAL          String with comma-separated mail address\n                   or a list of strings.\n                   An error is thrown if a mail address in VAL is already\n                   in use and `bbdb-allow-duplicates' is nil.\n:phone VAL         List of phone-number objects.  A phone-number is a vector\n                   [\"label\" area-code prefix suffix extension-or-nil]\n                   or [\"label\" \"phone-number\"]\n:address VAL       List of addresses.  An address is a vector of the form\n                   [\"label\" (\"line1\" \"line2\" ... ) \"City\"\n                   \"State\" \"Postcode\" \"Country\"].\n:xfields VAL       Alist associating symbols with strings.\n:uuid VAL          String, the uuid.\n:creation-date VAL String, the creation date.\n:check             If present, throw an error if a field value is not\n                   syntactically correct.\n\n(fn &rest SPEC)" nil nil)

(autoload 'bbdb-insert-field "bbdb-com" "\
For RECORD, add a new FIELD with value VALUE.\nInteractively, read FIELD and VALUE; RECORD is the current record.\nA non-nil prefix arg is passed on to `bbdb-read-field' as FLAG (see there).\n\n(fn RECORD FIELD VALUE)" t nil)

(autoload 'bbdb-edit-field "bbdb-com" "\
Edit the contents of FIELD of RECORD.\nIf point is in the middle of a multi-line field (e.g., address),\nthen the entire field is edited, not just the current line.\nFor editing phone numbers or addresses, VALUE must be the phone number\nor address that gets edited. An error is thrown when attempting to edit\na phone number or address with VALUE being nil.\n\n- The value of an xfield is a string.  With prefix FLAG the value may be\n  any lisp object.\n\n(fn RECORD FIELD &optional VALUE FLAG)" t nil)

(autoload 'bbdb-transpose-fields "bbdb-com" "\
Transpose previous and current field of a BBDB record.\nWith numeric prefix ARG, take previous field and move it past ARG fields.\nWith region active or ARG 0, transpose field point is in and field mark is in.\n\nBoth fields must be in the same record, and must be of the same basic type\n(that is, you can use this command to change the order in which phone numbers\nor email addresses are listed, but you cannot use it to make an address appear\nbefore a phone number; the order of field types is fixed).\n\nIf the current field is the name field, transpose first and last name,\nirrespective of the value of ARG.\n\n(fn ARG)" t nil)

(autoload 'bbdb-delete-field-or-record "bbdb-com" "\
For RECORDS delete FIELD.\nIf FIELD is the `name' field, delete RECORDS from datanbase.\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records',\nand FIELD is the field point is on.\nIf prefix NOPROMPT is non-nil, do not confirm deletion.\n\n(fn RECORDS FIELD &optional NOPROMPT)" t nil)

(autoload 'bbdb-delete-records "bbdb-com" "\
Delete RECORDS.\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.\nIf prefix NOPROMPT is non-nil, do not confirm deletion.\n\n(fn RECORDS &optional NOPROMPT)" t nil)

(autoload 'bbdb-display-all-records "bbdb-com" "\
Show all records.\nIf invoked in a *BBDB* buffer point stays on the currently visible record.\nInverse of `bbdb-display-current-record'.\n\n(fn &optional LAYOUT)" t nil)

(autoload 'bbdb-display-current-record "bbdb-com" "\
Narrow to current record.  Inverse of `bbdb-display-all-records'.\n\n(fn &optional LAYOUT)" t nil)

(autoload 'bbdb-toggle-records-layout "bbdb-com" "\
Toggle layout of RECORDS (elided or expanded).\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.\nWith prefix ARG 0, RECORDS are displayed elided.\nWith any other non-nil ARG, RECORDS are displayed expanded.\n\n(fn RECORDS &optional ARG)" t nil)

(autoload 'bbdb-display-records-completely "bbdb-com" "\
Display RECORDS using layout `full-multi-line' (i.e., display all fields).\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.\n\n(fn RECORDS)" t nil)

(autoload 'bbdb-display-records-with-layout "bbdb-com" "\
Display RECORDS using LAYOUT.\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.\n\n(fn RECORDS LAYOUT)" t nil)

(autoload 'bbdb-omit-record "bbdb-com" "\
Remove current record from the display without deleting it from BBDB.\nWith prefix N, omit the next N records.  If negative, omit backwards.\n\n(fn N)" t nil)

(autoload 'bbdb-merge-records "bbdb-com" "\
Merge RECORD1 into RECORD2, then delete RECORD1 and return RECORD2.\nIf both records have name fields ask which one to use.\nConcatenate other fields, ignoring duplicates.\nRECORD1 need not be known to BBDB, its hash and cache are ignored.\nUpdate hash and cache for RECORD2.\n\nInteractively, RECORD1 is the current record; prompt for RECORD2.\nWith prefix, RECORD2 defaults to the first record with the same name.\n\n(fn RECORD1 RECORD2)" t nil)

(autoload 'bbdb-sort-addresses "bbdb-com" "\
Sort the addresses in RECORDS according to the label.\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.\nIf UPDATE is non-nil (as in interactive calls) update the database.\nOtherwise, this is the caller's responsiblity (for example, when used\nin `bbdb-change-hook').\n\n(fn RECORDS &optional UPDATE)" t nil)

(autoload 'bbdb-sort-phones "bbdb-com" "\
Sort the phones in RECORDS according to the label.\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.\nIf UPDATE is non-nil (as in interactive calls) update the database.\nOtherwise, this is the caller's responsiblity (for example, when used\nin `bbdb-change-hook').\n\n(fn RECORDS &optional UPDATE)" t nil)

(autoload 'bbdb-sort-xfields "bbdb-com" "\
Sort the xfields in RECORDS according to `bbdb-xfields-sort-order'.\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.\nIf UPDATE is non-nil (as in interactive calls) update the database.\nOtherwise, this is the caller's responsiblity (for example, when used\nin `bbdb-change-hook').\n\n(fn RECORDS &optional UPDATE)" t nil)

(autoload 'bbdb-dwim-mail "bbdb-com" "\
Return a string to use as the mail address of RECORD.\nThe name in the mail address is formatted obeying `bbdb-mail-name-format'\nand `bbdb-mail-name'.  However, if both the first name and last name\nare constituents of the address as in John.Doe@Some.Host,\nand `bbdb-mail-avoid-redundancy' is non-nil, then the address is used as is\nand `bbdb-mail-name-format' and `bbdb-mail-name' are ignored.\nIf `bbdb-mail-avoid-redundancy' is 'mail-only the name is never included.\nMAIL may be a mail address to be used for RECORD.\nIf MAIL is an integer, use the MAILth mail address of RECORD.\nIf MAIL is nil use the first mail address of RECORD.\n\n(fn RECORD &optional MAIL)" nil nil)

(autoload 'bbdb-mail "bbdb-com" "\
Compose a mail message to RECORDS (optional: using SUBJECT).\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.\nBy default, the first mail addresses of RECORDS are used.\nIf prefix N is a number, use Nth mail address of RECORDS (starting from 1).\nIf prefix N is C-u (t noninteractively) use all mail addresses of RECORDS.\nIf VERBOSE is non-nil (as in interactive calls) be verbose.\n\n(fn RECORDS &optional SUBJECT N VERBOSE)" t nil)

(autoload 'bbdb-completion-predicate "bbdb-com" "\
For use as the third argument to `completing-read'.\nObey `bbdb-completion-list'.\n\n(fn KEY RECORDS)" nil nil)

(autoload 'bbdb-completing-read-mails "bbdb-com" "\
Like `read-string', but allows `bbdb-complete-mail' style completion.\n\n(fn PROMPT &optional INIT)" nil nil)

(autoload 'bbdb-complete-mail "bbdb-com" "\
In a mail buffer, complete the user name or mail before point.\nCompletion happens up to the preceeding colon, comma, or BEG.\nReturn non-nil if there is a valid completion, else return nil.\n\nCompletion behaviour obeys `bbdb-completion-list' (see there).\nIf what has been typed matches a unique BBDB record, insert an address\nformatted by `bbdb-dwim-mail' (see there).  Also, display this record\nif `bbdb-completion-display-record' is non-nil,\nIf what has been typed is a valid completion but does not match\na unique record, display a list of completions.\nIf the completion is done and `bbdb-complete-mail-allow-cycling' is t\nthen cycle through the mails for the matching record.  If BBDB\nwould format a given address different from what we have in the mail buffer,\nthe first round of cycling reformats the address accordingly, then we cycle\nthrough the mails for the matching record.\nWith prefix CYCLE-COMPLETION-BUFFER non-nil, display a list of all mails\navailable for cycling.\n\nSet the variable `bbdb-complete-mail' non-nil for enabling this feature\nas part of the MUA insinuation.\n\n(fn &optional BEG CYCLE-COMPLETION-BUFFER)" t nil)

(define-obsolete-function-alias 'bbdb-complete-name 'bbdb-complete-mail "3.0")

(autoload 'bbdb-mail-aliases "bbdb-com" "\
Define mail aliases for the records in the database.\nDefine a mail alias for every record that has a `mail-alias' field\nwhich is the contents of that field.\nIf there are multiple comma-separated words in the `mail-alias' field,\nthen all of those words will be defined as aliases for that person.\n\nIf multiple records in the database have the same mail alias,\nthen that alias expands to a comma-separated list of the mail addresses\nof all of these people.\nAdd this command to `mail-setup-hook'.\n\nMail aliases are (re)built only if `bbdb-mail-aliases-need-rebuilt' is non-nil\nbecause the database was newly loaded or it has been edited.\nRebuilding the aliases is enforced if prefix FORCE-REBUILT is t.\n\n(fn &optional FORCE-REBUILT NOISY)" t nil)

(defsubst bbdb-mail-alias-list (alias) (if (stringp alias) (bbdb-split bbdb-mail-alias-field alias) alias))

(autoload 'bbdb-dial "bbdb-com" "\
Dial the number at point.\nIf the point is at the beginning of a record, dial the first phone number.\nUse rules from `bbdb-dial-local-prefix-alist' unless prefix FORCE-AREA-CODE\nis non-nil.  Do not dial the extension.\n\n(fn PHONE FORCE-AREA-CODE)" t nil)

(autoload 'bbdb-browse-url "bbdb-com" "\
Brwose URLs stored in the `url' field of RECORDS.\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.\nPrefix WHICH specifies which URL in field `url' is used (starting from 0).\nDefault is the first URL.\n\n(fn RECORDS &optional WHICH)" t nil)

(autoload 'bbdb-grab-url "bbdb-com" "\
Grab URL and store it in RECORD.\n\n(fn RECORD URL)" t nil)

(autoload 'bbdb-copy-records-as-kill "bbdb-com" "\
Copy RECORDS to kill ring.\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.\n\n(fn RECORDS)" t nil)

(autoload 'bbdb-copy-fields-as-kill "bbdb-com" "\
For RECORDS copy values of FIELD at point to kill ring.\nIf FIELD is an address or phone with a label, copy only field values\nwith the same label.  With numeric prefix NUM, if the value of FIELD\nis a list, copy only the NUMth list element.\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.\n\n(fn RECORDS FIELD &optional NUM)" t nil)

(autoload 'bbdb-info "bbdb-com" "\
\n\n(fn)" t nil)

(autoload 'bbdb-help "bbdb-com" "\
\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-com" '("bbdb-")))

;;;***

;;;### (autoloads nil "bbdb-gnus" "bbdb-gnus.el" (0 0 0 0))
;;; Generated autoloads from bbdb-gnus.el

(autoload 'bbdb-insinuate-gnus "bbdb-gnus" "\
Hook BBDB into Gnus.\nDo not call this in your init file.  Use `bbdb-initialize'.\n\n(fn)" nil nil)

;;;***

;;;### (autoloads nil "bbdb-gnus-aux" "bbdb-gnus-aux.el" (0 0 0 0))
;;; Generated autoloads from bbdb-gnus-aux.el

(autoload 'bbdb/gnus-score-invalidate-alist "bbdb-gnus-aux" "\
This function is called through `bbdb-after-change-hook',\nand sets `bbdb/gnus-score-rebuild-alist' to t if the changed\nrecord contains a gnus-score field.\n\n(fn RECORD)" nil nil)

(autoload 'bbdb/gnus-score "bbdb-gnus-aux" "\
This returns a score alist for Gnus.  A score pair will be made for\nevery member of the mail field in records which also have a gnus-score\nfield.  This allows the BBDB to serve as a supplemental global score\nfile, with the advantage that it can keep up with multiple and changing\naddresses better than the traditionally static global scorefile.\n\n(fn GROUP)" nil nil)

(autoload 'bbdb/gnus-split-method "bbdb-gnus-aux" "\
This function expects to be called in a buffer which contains a mail\nmessage to be spooled, and the buffer should be narrowed to the message\nheaders.  It returns a list of groups to which the message should be\nspooled, using the addresses in the headers and information from BBDB.\n\n(fn)" nil nil)

(autoload 'bbdb/gnus-nnimap-folder-list-from-bbdb "bbdb-gnus-aux" "\
Return a list of ( \"From\" mail-regexp imap-folder-name) tuples\nbased on the contents of the bbdb.\n\nThe folder-name is the value of the 'imap attribute of the BBDB record;\nthe mail-regexp consists of all the mail addresses for the BBDB record\nconcatenated with OR.  Records without an 'imap attribute are ignored.\n\nHere  is an example of a relevant BBDB record:\n\nUwe Brauer\n           mail: oub@mat.ucm.es\n           imap: testimap\n\nThis function uses `regexp-opt' to generate the mail-regexp which automatically\n`regexp-quote's its arguments.  Please note: in order that this will work\nwith the `nnimap-split-fancy' method you have to use macros, that is your setting\nwill look like:\n\n(setq nnimap-split-rule  'nnimap-split-fancy\n       nnimap-split-inbox \"INBOX\"\n       nnimap-split-fancy\n       `(| ,@(bbdb/gnus-nnimap-folder-list-from-bbdb)\n            ... ))\n\nNote that `( is the backquote, NOT the quote '(.\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-gnus-aux" '("bbdb/gnus-s")))

;;;***

;;;### (autoloads nil "bbdb-ispell" "bbdb-ispell.el" (0 0 0 0))
;;; Generated autoloads from bbdb-ispell.el

(autoload 'bbdb-ispell-export "bbdb-ispell" "\
Export BBDB records to ispell personal dictionaries.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-ispell" '("bbdb-ispell-")))

;;;***

;;;### (autoloads nil "bbdb-message" "bbdb-message.el" (0 0 0 0))
;;; Generated autoloads from bbdb-message.el

(autoload 'bbdb-insinuate-message "bbdb-message" "\
Hook BBDB into Message Mode.\nDo not call this in your init file.  Use `bbdb-initialize'.\n\n(fn)" nil nil)

(autoload 'bbdb-insinuate-mail "bbdb-message" "\
Hook BBDB into Mail Mode.\nDo not call this in your init file.  Use `bbdb-initialize'.\n\n(fn)" nil nil)

;;;***

;;;### (autoloads nil "bbdb-mhe" "bbdb-mhe.el" (0 0 0 0))
;;; Generated autoloads from bbdb-mhe.el

(autoload 'bbdb/mh-header "bbdb-mhe" "\
Find and return the value of HEADER in the current buffer.\nReturns the empty string if HEADER is not in the message.\n\n(fn HEADER)" nil nil)

(autoload 'bbdb-insinuate-mh "bbdb-mhe" "\
Call this function to hook BBDB into MH-E.\nDo not call this in your init file.  Use `bbdb-initialize'.\n\n(fn)" nil nil)

;;;***

;;;### (autoloads nil "bbdb-migrate" "bbdb-migrate.el" (0 0 0 0))
;;; Generated autoloads from bbdb-migrate.el

(autoload 'bbdb-migrate "bbdb-migrate" "\
Migrate RECORDS from format OLD to `bbdb-file-format'.\n\n(fn RECORDS OLD)" nil nil)

(autoload 'bbdb-undocumented-variables "bbdb-migrate" "\
Return list of undocumented variables in NAME-SPACE.\nNAME-SPACE defaults to \"bbdb-\".  Use a prefix arg to specify NAME-SPACE\ninteractively.  If MESSAGE is non-nil (as in interactive calls) display\nthe list in the message area.\n\nThis command may come handy to identify BBDB variables in your init file\nthat are not used anymore by the current version of BBDB.  Yet this fails\nfor outdated BBDB variables that are set via your personal `custom-file'.\n\n(fn &optional NAME-SPACE MESSAGE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-migrate" '("bbdb-migrate-")))

;;;***

;;;### (autoloads nil "bbdb-mu4e" "bbdb-mu4e.el" (0 0 0 0))
;;; Generated autoloads from bbdb-mu4e.el

(autoload 'bbdb-insinuate-mu4e "bbdb-mu4e" "\
Hook BBDB into mu4e.\nDo not call this in your init file.  Use `bbdb-initialize'.\n\n(fn)" nil nil)

;;;***

;;;### (autoloads nil "bbdb-mua" "bbdb-mua.el" (0 0 0 0))
;;; Generated autoloads from bbdb-mua.el

(autoload 'bbdb-message-header "bbdb-mua" "\
For the current message return the value of HEADER.\nMIME encoded headers are decoded.  Return nil if HEADER does not exist.\n\n(fn HEADER)" nil nil)

(autoload 'bbdb-accept-message "bbdb-mua" "\
For use with variable `bbdb-mua-update-interactive-p' and friends.\nReturn the value of variable `bbdb-update-records-p' for messages matching\n`bbdb-accept-message-alist'.  If INVERT is non-nil, accept messages\nnot matching `bbdb-ignore-message-alist'.\n\n(fn &optional INVERT)" nil nil)

(autoload 'bbdb-ignore-message "bbdb-mua" "\
For use with variable `bbdb-mua-update-interactive-p' and friends.\nReturn the value of variable `bbdb-update-records-p' for messages not matching\n`bbdb-ignore-message-alist'.  If INVERT is non-nil, accept messages\nmatching `bbdb-accept-message-alist'.\n\n(fn &optional INVERT)" nil nil)

(autoload 'bbdb-select-message "bbdb-mua" "\
For use with variable `bbdb-mua-update-interactive-p' and friends.\nReturn the value of variable `bbdb-update-records-p' for messages both matching\n`bbdb-accept-message-alist' and not matching `bbdb-ignore-message-alist'.\n\n(fn)" nil nil)

(autoload 'bbdb-update-records "bbdb-mua" "\
Return the list of BBDB records matching ADDRESS-LIST.\nADDRESS-LIST is a list of mail addresses.  (It can be extracted from\na mail message using `bbdb-get-address-components'.)\nUPDATE-P may take the following values:\n search       Search for existing records matching ADDRESS.\n update       Search for existing records matching ADDRESS;\n                update name and mail field if necessary.\n query        Search for existing records matching ADDRESS;\n                query for creation of a new record if the record does not exist.\n create or t  Search for existing records matching ADDRESS;\n                create a new record if it does not yet exist.\n nil          Do nothing.\n a function   This functions will be called with no arguments.\n                It should return one of the above values.\n\nIf SORT is non-nil, sort records according to `bbdb-record-lessp'.\nOttherwise, the records are ordered according to ADDRESS-LIST.\n\nUsually this function is called by the wrapper `bbdb-mua-update-records'.\n\n(fn ADDRESS-LIST &optional UPDATE-P SORT)" nil nil)

(autoload 'bbdb-mua-display-records "bbdb-mua" "\
Display the BBDB record(s) for the addresses in this message.\nThis looks into the headers of a message according to HEADER-CLASS.\nThen for the mail addresses found the corresponding BBDB records are displayed.\nUPDATE-P determines whether only existing BBDB records are displayed\nor whether also new records are created for these mail addresses.\n\nHEADER-CLASS is defined in `bbdb-message-headers'.  If it is nil,\nuse all classes in `bbdb-message-headers'.\nUPDATE-P may take the same values as `bbdb-update-records-p'.\nFor interactive calls, see function `bbdb-mua-update-interactive-p'.\nIf ALL is non-nil, bind `bbdb-message-all-addresses' to ALL.\n\n(fn &optional HEADER-CLASS UPDATE-P ALL)" t nil)

(autoload 'bbdb-mua-display-sender "bbdb-mua" "\
Display the BBDB record(s) for the sender of this message.\nUPDATE-P may take the same values as `bbdb-update-records-p'.\nFor interactive calls, see function `bbdb-mua-update-interactive-p'.\n\n(fn &optional UPDATE-P)" t nil)

(autoload 'bbdb-mua-display-recipients "bbdb-mua" "\
Display the BBDB record(s) for the recipients of this message.\nUPDATE-P may take the same values as `bbdb-update-records-p'.\nFor interactive calls, see function `bbdb-mua-update-interactive-p'.\n\n(fn &optional UPDATE-P)" t nil)

(autoload 'bbdb-mua-display-all-records "bbdb-mua" "\
Display the BBDB record(s) for all addresses in this message.\nUPDATE-P may take the same values as `bbdb-update-records-p'.\nFor interactive calls, see function `bbdb-mua-update-interactive-p'.\n\n(fn &optional UPDATE-P)" t nil)

(autoload 'bbdb-mua-display-all-recipients "bbdb-mua" "\
Display BBDB records for all recipients of this message.\nUPDATE-P may take the same values as `bbdb-update-records-p'.\nFor interactive calls, see function `bbdb-mua-update-interactive-p'.\n\n(fn &optional UPDATE-P)" t nil)

(autoload 'bbdb-mua-annotate-sender "bbdb-mua" "\
Add ANNOTATION to field FIELD of the BBDB record(s) of message sender(s).\nFIELD defaults to `bbdb-annotate-field'.\nIf REPLACE is non-nil, ANNOTATION replaces the content of FIELD.\nUPDATE-P may take the same values as `bbdb-update-records-p'.\nFor interactive calls, use car of `bbdb-mua-update-interactive-p'.\n\n(fn ANNOTATION &optional FIELD REPLACE UPDATE-P)" t nil)

(autoload 'bbdb-mua-annotate-recipients "bbdb-mua" "\
Add ANNOTATION to field FIELD of the BBDB records of message recipients.\nFIELD defaults to `bbdb-annotate-field'.\nIf REPLACE is non-nil, ANNOTATION replaces the content of FIELD.\nUPDATE-P may take the same values as `bbdb-update-records-p'.\nFor interactive calls, use car of `bbdb-mua-update-interactive-p'.\n\n(fn ANNOTATION &optional FIELD REPLACE UPDATE-P)" t nil)

(autoload 'bbdb-mua-edit-field "bbdb-mua" "\
Edit FIELD of the BBDB record(s) of message sender(s) or recipients.\nFIELD defaults to value of variable `bbdb-mua-edit-field'.\nUPDATE-P may take the same values as `bbdb-update-records-p'.\nFor interactive calls, see function `bbdb-mua-update-interactive-p'.\nHEADER-CLASS is defined in `bbdb-message-headers'.  If it is nil,\nuse all classes in `bbdb-message-headers'.\n\n(fn &optional FIELD UPDATE-P HEADER-CLASS)" t nil)

(autoload 'bbdb-mua-edit-field-sender "bbdb-mua" "\
Edit FIELD of record corresponding to sender of this message.\nFIELD defaults to value of variable `bbdb-mua-edit-field'.\nUPDATE-P may take the same values as `bbdb-update-records-p'.\nFor interactive calls, see function `bbdb-mua-update-interactive-p'.\n\n(fn &optional FIELD UPDATE-P)" t nil)

(autoload 'bbdb-mua-edit-field-recipients "bbdb-mua" "\
Edit FIELD of record corresponding to recipient of this message.\nFIELD defaults to value of variable `bbdb-mua-edit-field'.\nUPDATE-P may take the same values as `bbdb-update-records-p'.\nFor interactive calls, see function `bbdb-mua-update-interactive-p'.\n\n(fn &optional FIELD UPDATE-P)" t nil)

(autoload 'bbdb-mua-auto-update "bbdb-mua" "\
Update BBDB automatically based on incoming and outgoing messages.\nThis looks into the headers of a message according to HEADER-CLASS.\nThen for the mail addresses found the corresponding BBDB records are updated.\nUPDATE-P determines whether only existing BBDB records are taken\nor whether also new records are created for these mail addresses.\nReturn matching records.\n\nHEADER-CLASS is defined in `bbdb-message-headers'.  If it is nil,\nuse all classes in `bbdb-message-headers'.\nUPDATE-P may take the same values as `bbdb-mua-auto-update-p'.\nIf UPDATE-P is nil, use `bbdb-mua-auto-update-p' (which see).\n\nIf `bbdb-mua-pop-up' is non-nil, BBDB pops up the *BBDB* buffer\nalong with the MUA window(s), displaying the matching records\nusing `bbdb-pop-up-layout'.\nIf this is nil, BBDB is updated silently.\n\nThis function is intended for noninteractive use via appropriate MUA hooks.\nCall `bbdb-mua-auto-update-init' in your init file to put this function\ninto the respective MUA hooks.\nSee `bbdb-mua-display-records' and friends for interactive commands.\n\n(fn &optional HEADER-CLASS UPDATE-P)" nil nil)

(autoload 'bbdb-mua-auto-update-init "bbdb-mua" "\
For MUAS add `bbdb-mua-auto-update' to their presentation hook.\nIf a MUA is not an element of MUAS, `bbdb-mua-auto-update' is removed\nfrom the respective presentation hook.\n\nCall this function in your init file to use the auto update feature with MUAS.\nThis function is separate from the general function `bbdb-initialize'\nas this allows one to initialize the auto update feature for some MUAs only,\nfor example only for outgoing messages.\n\nSee `bbdb-mua-auto-update' for details about the auto update feature.\n\n(fn &rest MUAS)" nil nil)

(autoload 'bbdb-auto-notes "bbdb-mua" "\
Automatically annotate RECORD based on the headers of the current message.\nSee the variables `bbdb-auto-notes-rules', `bbdb-auto-notes-ignore-messages'\nand `bbdb-auto-notes-ignore-headers'.\nFor use as an element of `bbdb-notice-record-hook'.\n\n(fn RECORD)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-mua" '("bbdb-")))

;;;***

;;;### (autoloads nil "bbdb-pgp" "bbdb-pgp.el" (0 0 0 0))
;;; Generated autoloads from bbdb-pgp.el

(autoload 'bbdb-read-xfield-pgp-mail "bbdb-pgp" "\
Set `bbdb-pgp-field', requiring match with `bbdb-pgp-ranked-actions'.\n\n(fn &optional INIT)" nil nil)

(autoload 'bbdb-pgp "bbdb-pgp" "\
Add PGP MML tags to a message according to the recipients' BBDB records.\nFor all message recipients in `bbdb-pgp-headers', this grabs the action\nin `bbdb-pgp-field' of their BBDB records.  If this proposes multiple actions,\nperform the action which appears first in `bbdb-pgp-ranked-actions'.\nIf this proposes no action at all, use `bbdb-pgp-default'.\nThe variable `bbdb-pgp-method' defines the method which is actually used\nfor signing and encrypting.\n\nThis command works with both `mail-mode' and `message-mode' to send\nsigned or encrypted mail.\n\nTo run this command automatically when sending a message,\nuse `bbdb-initialize' with arg `pgp' to add this function\nto `message-send-hook' and `mail-send-hook'.\nYet see info node `(message)Signing and encryption' why you\nmight not want to rely for encryption on a hook function\nwhich runs just before the message is sent, that is, you might want\nto call the command `bbdb-pgp' manually, then call `mml-preview'.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-pgp" '("bbdb-pgp-")))

;;;***

;;;### (autoloads nil "bbdb-rmail" "bbdb-rmail.el" (0 0 0 0))
;;; Generated autoloads from bbdb-rmail.el

(autoload 'bbdb/rmail-header "bbdb-rmail" "\
Pull HEADER out of Rmail header.\n\n(fn HEADER)" nil nil)

(autoload 'bbdb-insinuate-rmail "bbdb-rmail" "\
Hook BBDB into RMAIL.\nDo not call this in your init file.  Use `bbdb-initialize'.\n\n(fn)" nil nil)

;;;***

;;;### (autoloads nil "bbdb-sc" "bbdb-sc.el" (0 0 0 0))
;;; Generated autoloads from bbdb-sc.el

(autoload 'bbdb-sc-update-from "bbdb-sc" "\
Update the \"from\" field in `sc-mail-info'.\nIf the \"from\" field in `sc-mail-info' contains only a plain mail address,\ncomplement the \"from\" field in `sc-mail-info' with the sender's name in BBDB.\n\n(fn)" nil nil)

(autoload 'bbdb-insinuate-sc "bbdb-sc" "\
Hook BBDB into Supercite.\nDo not call this in your init file.  Use `bbdb-initialize'.\nHowever, this is not the full story.  See bbdb-sc.el for how to fully hook\nBBDB into Supercite.\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-sc" '("bbdb-sc-")))

;;;***

;;;### (autoloads nil "bbdb-site" "bbdb-site.el" (0 0 0 0))
;;; Generated autoloads from bbdb-site.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-site" '("bbdb-")))

;;;***

;;;### (autoloads nil "bbdb-snarf" "bbdb-snarf.el" (0 0 0 0))
;;; Generated autoloads from bbdb-snarf.el

(autoload 'bbdb-snarf-paragraph "bbdb-snarf" "\
Snarf BBDB record from paragraph around position POS using RULE.\nThe paragraph is the one that contains POS or follows POS.\nInteractively POS is the position of point.\nRULE defaults to `bbdb-snarf-rule-default'.\nSee `bbdb-snarf-rule-alist' for details.\n\n(fn POS &optional RULE)" t nil)

(autoload 'bbdb-snarf-yank "bbdb-snarf" "\
Snarf a BBDB record from latest kill using RULE.\nThe latest kill may also be a window system selection, see `current-kill'.\nRULE defaults to `bbdb-snarf-rule-default'.\nSee `bbdb-snarf-rule-alist' for details.\n\n(fn &optional RULE)" t nil)

(autoload 'bbdb-snarf "bbdb-snarf" "\
Snarf a BBDB record in STRING using RULE.  Display and return this record.\nInteractively, STRING is the current region.\nRULE defaults to `bbdb-snarf-rule-default'.\nSee `bbdb-snarf-rule-alist' for details.\n\n(fn STRING &optional RULE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-snarf" '("bbdb-snarf-")))

;;;***

;;;### (autoloads nil "bbdb-tex" "bbdb-tex.el" (0 0 0 0))
;;; Generated autoloads from bbdb-tex.el

(autoload 'bbdb-tex "bbdb-tex" "\
Generate FILE for TeXing RECORDS.\nInteractively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.\nRULE should be an element of `bbdb-tex-alist'.\n\n(fn RECORDS FILE RULE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-tex" '("bbdb-tex-")))

;;;***

;;;### (autoloads nil "bbdb-vm" "bbdb-vm.el" (0 0 0 0))
;;; Generated autoloads from bbdb-vm.el

(autoload 'bbdb/vm-header "bbdb-vm" "\
\n\n(fn HEADER)" nil nil)

(autoload 'bbdb-insinuate-vm "bbdb-vm" "\
Hook BBDB into VM.\nDo not call this in your init file.  Use `bbdb-initialize'.\n\n(fn)" nil nil)

;;;***

;;;### (autoloads nil "bbdb-vm-aux" "bbdb-vm-aux.el" (0 0 0 0))
;;; Generated autoloads from bbdb-vm-aux.el

(autoload 'vm-summary-function-B "bbdb-vm-aux" "\
For VM message M return the BBDB name of the sender.\nRespect `vm-summary-uninteresting-senders'.\n\n(fn M)" nil nil)

(defvar bbdb/vm-auto-folder-headers '("From:" "To:" "CC:") "\
The headers used by `bbdb/vm-auto-folder'.\nThe order in this list is the order how matching will be performed.")

(custom-autoload 'bbdb/vm-auto-folder-headers "bbdb-vm-aux" t)

(defvar bbdb/vm-auto-folder-field 'vm-folder "\
The xfield which `bbdb/vm-auto-folder' searches for.")

(custom-autoload 'bbdb/vm-auto-folder-field "bbdb-vm-aux" t)

(defvar bbdb/vm-virtual-folder-field 'vm-virtual "\
The xfield which `bbdb/vm-virtual-folder' searches for.")

(custom-autoload 'bbdb/vm-virtual-folder-field "bbdb-vm-aux" t)

(defvar bbdb/vm-virtual-real-folders nil "\
Real folders used for defining virtual folders.\nIf nil use `vm-primary-inbox'.")

(custom-autoload 'bbdb/vm-virtual-real-folders "bbdb-vm-aux" t)

(autoload 'bbdb/vm-auto-folder "bbdb-vm-aux" "\
Add entries to `vm-auto-folder-alist' for the records in BBDB.\nFor each record that has a `vm-folder' xfield, add an element\n(MAIL-REGEXP . FOLDER-NAME) to `vm-auto-folder-alist'.\nThe element gets added to the sublists of `vm-auto-folder-alist'\nspecified in `bbdb/vm-auto-folder-headers'.\nMAIL-REGEXP matches the mail addresses of the BBDB record.\nThe value of the `vm-folder' xfield becomes FOLDER-NAME.\nThe `vm-folder' xfield is defined via `bbdb/vm-auto-folder-field'.\n\nAdd this function to `bbdb-before-save-hook' and your .vm.\n\n(fn)" t nil)

(autoload 'bbdb/vm-virtual-folder "bbdb-vm-aux" "\
Create `vm-virtual-folder-alist' according to the records in BBDB.\nFor each record that has a `vm-virtual' xfield, add or modify the\ncorresponding VIRTUAL-FOLDER-NAME element of `vm-virtual-folder-alist'.\n\n  (VIRTUAL-FOLDER-NAME ((FOLDER-NAME ...)\n                        (author-or-recipient MAIL-REGEXP)))\n\nVIRTUAL-FOLDER-NAME is the first element of the `vm-virtual' xfield.\nFOLDER-NAME ... are either the remaining elements of the `vm-virtual' xfield,\nor `bbdb/vm-virtual-real-folders' or `vm-primary-inbox'.\nMAIL-REGEXP matches the mail addresses of the BBDB record.\nThe `vm-virtual' xfield is defined via `bbdb/vm-virtual-folder-field'.\n\nAdd this function to `bbdb-before-save-hook' and your .vm.\n\n(fn)" t nil)

(autoload 'bbdb/vm-auto-add-label "bbdb-vm-aux" "\
Automatically add labels to VM messages.\nAdd this to `bbdb-notice-record-hook' to check the messages noticed by BBDB.\nIf the value of `bbdb/vm-auto-add-label-field' in the sender's BBDB record\nmatches a value in `bbdb/vm-auto-add-label-list' then a VM label will be added\nto the message.  Such VM labels can be used, e.g., to mark messages via\n`vm-mark-matching-messages' or to define virtual folders via\n`vm-create-virtual-folder'\n\nTypically `bbdb/vm-auto-add-label-field' and `bbdb/vm-auto-add-label-list'\nrefer to mail aliases FOO used with multiple records.  This adds a label FOO\nto all incoming messages matching FOO.  Then VM can create a virtual folder\nfor these messages.  The concept of combining multiple recipients of an\noutgoing message in one mail alias thus gets extended to incoming messages\nfrom different senders.\n\n(fn RECORD)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-vm-aux" '("bbdb/vm-a")))

;;;***

;;;### (autoloads nil "bbdb-wl" "bbdb-wl.el" (0 0 0 0))
;;; Generated autoloads from bbdb-wl.el

(autoload 'bbdb/wl-header "bbdb-wl" "\
\n\n(fn HEADER)" nil nil)

(autoload 'bbdb-insinuate-wl "bbdb-wl" "\
Hook BBDB into Wanderlust.\n\n(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("bbdb-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bbdb-autoloads.el ends here
