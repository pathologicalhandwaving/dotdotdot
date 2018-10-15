;;; truthy-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "truthy" "truthy.el" (0 0 0 0))
;;; Generated autoloads from truthy.el

(autoload 'truthy "truthy" "\
Return non-nil if OBJ has \"truthiness\".

Whereas Lisp considers any non-nil value to be \"true\" when
evaluating a Boolean condition, `truthy' considers a value to be
\"truthy\" if it has *content*.

When OBJ has \"truthiness\", `truthy' returns OBJ, otherwise
nil.

If OBJ is a constant or symbol other than nil, it is always truthy.

If OBJ is a number, it must be non-zero.

If OBJ is a hash table, it must have keys.

If OBJ is a function or a macro, it must have a body containing
at least one truthy value.

If OBJ is compiled byte-code, it must have a body.

If OBJ is a keymap, it must have defined keys.

If OBJ is a char-table, it must have keys as returned by
`map-char-table'.

If OBJ is a abbrev-table, it must have at least one value.

If OBJ is a defstruct or EIEIO object, at least one slot must
contain a truthy value.

If OBJ is a ring, it must contain at least one truthy element.

If OBJ is a string, it must have length greater than zero.

If OBJ is a sequence, if must contain at least one truthy
value.

If OBJ is a marker or overlay, it must be associated
with a buffer and have a position.

If OBJ is a buffer, it must be live and of non-zero length.

If OBJ is a frame, window, or process, it must be live, according
to (eg) `window-live-p'.

If OBJ is a font, at least one property of the font must be
specified.

When optional SHALLOW is non-nil, recursive considerations
do not examine truthiness, simply whether constituent elements
are non-nil.  Therefore

    (truthy '(0 0 0 0))

returns nil, because no truthy element is found in the list.  But

    (truthy '(0 0 0 0) 'shallow)

returns OBJ, because the list holds non-nil elements.

The function `truthy-s' is provided as shorthand for
\(truthy OBJ 'shallow).

When optional LENGTH is non-nil, OBJ is always truthy if the
concept of length can be applied to it and OBJ has non-zero
length, considering only the portion of the data type which may
vary in length.  If the concept of length cannot be applied to
OBJ, the usual rules apply.  So

    (truthy '(nil nil) nil 'length)

has length and returns OBJ.  And eg

    (truthy (lambda (args)))

has no length (because the lambda has no body) and returns nil.

For a ring or object, the \"lengthwise\" test can check whether
any slots have been filled.  For a struct it is not possible to
distinguish between unfilled slots and slots filled with nil, so
the lengthwise test succeeds if there is a non-zero number of
slots.

The function `truthy-l' is provided as shorthand for
\(truthy OBJ nil 'length).

\(fn OBJ &optional SHALLOW LENGTH)" nil nil)

(autoload 'truthy-s "truthy" "\
Return non-nil if OBJ has shallow \"truthiness\".

This is equivalent to calling `truthy' with the SHALLOW argument
non-nil.

\(fn OBJ)" nil nil)

(autoload 'truthy-l "truthy" "\
Return non-nil if OBJ has lengthwise \"truthiness\".

This is equivalent to calling `truthy' with the LENGTH argument
non-nil.

\(fn OBJ)" nil nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; truthy-autoloads.el ends here
