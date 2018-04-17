;;; string-utils-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "string-utils" "string-utils.el" (0 0 0 0))
;;; Generated autoloads from string-utils.el

(autoload 'string-utils-stringify-anything "string-utils" "\
Coerce any object OBJ into a string.\n\nContrary to usual conventions, return the empty string for nil.\n\nSequences are flattened down to atoms and joined with string\nSEPARATOR, which defaults to a single space.  Cyclic lists\nmay give unpredictable results (similar to `format') unless\nlist-utils.el is installed.\n\nWhen INTS-ARE-CHARS is non-nil, interpret positive integers in\nOBJ as characters.\n\nOptional RECORD-SEPARATOR is a string (defaulting to the value of\nSEPARATOR) which delimits end-of-record for paired data types\nsuch as hash tables.\n\nThis is not a pretty-printer for OBJ, but a way to look at\nthe *contents* of OBJ (so much as is possible) as if it was\nan ordinary string.\n\n(fn OBJ &optional SEPARATOR INTS-ARE-CHARS RECORD-SEPARATOR)" nil nil)

(autoload 'string-utils-has-darkspace-p "string-utils" "\
Test whether OBJ, when coerced to a string, has any non-whitespace characters.\n\nReturns the position of the first non-whitespace character\non success.\n\nIf optional WHITESPACE-TYPE is 'ascii or t, use an ASCII-only\ndefinition of whitespace characters.  If WHITESPACE-TYPE is\n'syntax, is the definition of whitespace from the current\n`syntax-table'.  Otherwise, use a broad, Unicode-aware\ndefinition of whitespace from `string-utils-whitespace'.\n\n(fn OBJ &optional WHITESPACE-TYPE)" nil nil)

(autoload 'string-utils-has-whitespace-p "string-utils" "\
Test whether OBJ, when coerced to a string, has any whitespace characters.\n\nReturns the position of the first whitespace character on\nsuccess.\n\nIf optional WHITESPACE-TYPE is 'ascii or t, use an ASCII-only\ndefinition of whitespace characters.  If WHITESPACE-TYPE is\n'syntax, is the definition of whitespace from the current\n`syntax-table'.  Otherwise, use a broad, Unicode-aware\ndefinition of whitespace from `string-utils-whitespace'.\n\n(fn OBJ &optional WHITESPACE-TYPE)" nil nil)

(autoload 'string-utils-trim-whitespace "string-utils" "\
Return STR-VAL with leading and trailing whitespace removed.\n\nIf optional WHITESPACE-TYPE is 'ascii or t, use an ASCII-only\ndefinition of whitespace characters.  If WHITESPACE-TYPE is\n'syntax, is the definition of whitespace from the current\n`syntax-table'.  Otherwise, use a broad, Unicode-aware\ndefinition of whitespace from `string-utils-whitespace'.\n\nIf optional MULTI-LINE is set, trim spaces at starts and\nends of all lines throughout STR-VAL.\n\n(fn STR-VAL &optional WHITESPACE-TYPE MULTI-LINE)" nil nil)

(autoload 'string-utils-compress-whitespace "string-utils" "\
Return STR-VAL with all contiguous whitespace compressed to SEPARATOR.\n\nThe default value of SEPARATOR is a single space: \" \".\n\nIf optional WHITESPACE-TYPE is 'ascii or t, use an ASCII-only\ndefinition of whitespace characters.  If WHITESPACE-TYPE is\n'syntax, is the definition of whitespace from the current\n`syntax-table'.  Otherwise, use a broad, Unicode-aware\ndefinition of whitespace from `string-utils-whitespace'.\n\n(fn STR-VAL &optional WHITESPACE-TYPE SEPARATOR)" nil nil)

(autoload 'string-utils-string-repeat "string-utils" "\
Return a new string formed by repeating STR-VAL, N times.\n\nSTR-VAL may be of any length.\n\n(fn STR-VAL N)" nil nil)

(autoload 'string-utils-escape-double-quotes "string-utils" "\
Return STR-VAL with every double-quote escaped with backslash.\n\n(fn STR-VAL)" nil nil)

(autoload 'string-utils-quotemeta "string-utils" "\
Return STR-VAL with all non-word characters escaped with backslash.\n\nThis is more vigorous than `shell-quote-argument'.\n\n(fn STR-VAL)" nil nil)

(autoload 'string-utils-pad "string-utils" "\
Pad STR-VAL to WIDTH.\n\nOptional MODE defaults to 'right, but may be 'left, 'center, or\nan integer.\n\nWhen MODE is 'left, padding characters are prepended.  When MODE\nis 'center, padding characters are both appended and prepended so\nthat STR-VAL is centered within WIDTH.\n\nWhen MODE is a positive integer, the behavior is fixed-position\npadding.  Similar to 'center, padding may be added on the right\nand on the left.  Exactly MODE-many padding characters are\nadded on the left before padding to the full WIDTH on the right.\nWhen MODE is a negative integer, the behavior is the same, except\nthat MODE fixes the right-side padding.\n\nOptional CHAR sets the padding character (defaults to space).\n\nOptional THROW-ERROR throws an error if the length of STR-VAL\nalready exceeds WIDTH, or if the fixed-position padding requested\nwould cause the result to exceed WIDTH.  When THROW-ERROR is not\nset (the default), a best-attempt result is always returned.\n\nTabs are expanded to spaces according to the value of\n`tab-width'.\n\nReturns a padded copy of string STR-VAL.\n\n(fn STR-VAL WIDTH &optional MODE CHAR THROW-ERROR)" nil nil)

(autoload 'string-utils-pad-list "string-utils" "\
Pad each member of STR-LIST to match the longest width.\n\nADDITIONAL-WIDTH sets a relative amount to pad beyond the longest\nlength.\n\nTARGET-WIDTH sets an absolute target width, causing maximum\nstring length and ADDITIONAL-WIDTH to be ignored.\n\nOptional MODE, CHAR, and THROW-ERROR are as for `string-utils-pad'.\nFixed-position MODE will attempt to pad all entries consistently,\nbased on any adjustments made to the longest member of STR-LIST.\n\nTabs are expanded to spaces according to the value of\n`tab-width'.\n\nReturns padded STR-LIST.\n\n(fn STR-LIST &optional ADDITIONAL-WIDTH TARGET-WIDTH MODE CHAR THROW-ERROR)" nil nil)

(autoload 'string-utils-propertize-fillin "string-utils" "\
Return a copy of STR-VAL with text properties added, without overriding.\n\nWorks exactly like `propertize', except that (character-by-character)\nalready existing properties are respected.\n\nSTR-VAL and PROPERTIES are treated as documented for the STRING\nand PROPERTIES arguments to `propertize'.\n\n(fn STR-VAL &rest PROPERTIES)" nil nil)

(autoload 'string-utils-plural-ending "string-utils" "\
Return \"s\" or \"\", depending on whether NUM requires a plural in English.\n\nIntended to be used in a format string as follows:\n\n    (message \"%s item%s deleted\" del-counter (string-utils-plural-ending del-counter))\n\n(fn NUM)" nil nil)

(autoload 'string-utils-squeeze-filename "string-utils" "\
Intelligibly squeeze file-name or buffer-name NAME to fit within MAXLEN.\n\nWhen shortening file or buffer names for presentation to human\nreaders, it is often preferable not to truncate the ends, but to\nremove leading or middle portions of the string.\n\nThis function keeps basename intact, and (failing that) the\nbeginning and end of the basename, so that a shortened file or\nbuffer name is more identifiable to a human reader.\n\nThe heuristic\n\n   1.  Works equally for file names or buffer names.\n\n   2.  Applies abbreviations to file names such as \"~\" for home\n       directory.\n\n   3.  Selectively removes the longest leading directory\n       components from a path, preferring to keep the rightmost\n       components, leaving a single ellipsis where any number of\n       path elements were removed.\n\n   4.  Shortens the basename of NAME if needed, preserving the\n       meaningful file extension.\n\nThe string returned is as long as MAXLEN or shorter.\n\nWhen PATH-REMOVAL is non nil, it is permitted to shorten a\npathname by removing the directory components completely,\nsubstituting no ellipsis.\n\nELLIPSIS is a string inserted wherever characters were removed.\nIt defaults to the UCS character \"Horizontal Ellipsis\", or\n\"...\" if extended characters are not displayable.\n\nIf NO-TAIL is set, do not preserve the trailing letters of\na filename unless there is a dotted extension.\n\n(fn NAME MAXLEN &optional PATH-REMOVAL ELLIPSIS NO-TAIL)" nil nil)

(autoload 'string-utils-squeeze-url "string-utils" "\
Intelligibly squeeze string URL to fit within MAXLEN.\n\nFit URL within MAXLEN for presentation to a human reader.\nFollows rules similar to `string-utils-squeeze-filename'.\n\nELLIPSIS is a string inserted wherever characters were removed.\nIt defaults to the UCS character \"Horizontal Ellipsis\", or\n\"...\" if extended characters are not displayable.\n\n(fn URL MAXLEN &optional ELLIPSIS)" nil nil)

(autoload 'string-utils-split "string-utils" "\
Like `split-string', with additional options.\n\nSTRING, SEPARATORS, and OMIT-NULLS are as documented at `split-string'.\n\nINCLUDE-SEPARATORS is currently unimplemented.\n\nWhen RESPECT-ESCAPES is set, STRING is not split where the\nseparator is escaped with backslash.  This currently has the\nlimitation that SEPARATORS must be an explicit string rather than\na regular expression.\n\n(fn STRING &optional SEPARATORS OMIT-NULLS INCLUDE-SEPARATORS RESPECT-ESCAPES)" nil nil)

(autoload 'string-utils-truncate-to "string-utils" "\
Truncate STRING to MAXLEN.\n\nThe returned value is of length MAXLEN or less, including\nELLIPSIS.\n\nELLIPSIS is a string inserted wherever characters were removed.\nIt defaults to the UCS character \"Horizontal Ellipsis\", or\n\"...\" if extended characters are not displayable.\n\n(fn STR-VAL MAXLEN &optional ELLIPSIS)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "string-utils" '("string-utils-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; string-utils-autoloads.el ends here
