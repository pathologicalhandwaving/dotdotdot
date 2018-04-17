;;; gmail-message-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "gmail-message-mode" "gmail-message-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from gmail-message-mode.el

(defvar gmm/auto-mode-list `("[\\\\/]\\(inbox\\|mail\\)-google-com.*\\.\\(ckr\\|html?\\|txt\\)\\'" "[\\\\/]itsalltext[\\\\/]\\(inbox\\|mail\\)\\.google\\..*\\.txt\\'" "[\\\\/]pentadactyl\\.\\(inbox\\|mail\\)\\.google\\..*\\.txt\\'") "\
List of regexps which will be added to `auto-mode-alist' (associated to `gmail-message-mode').\n\nIf the file path matches any of these, `gmail-message-mode' will be\nactivated on the current file.\n\nIf you don't want `gmail-message-mode' to add itself to your\n`auto-mode-alist' simply set this variable to nil.\n\nIf you add items manually (not through the customization\ninterface), you'll need to call `gmm/set-amlist' for it\nto take effect.\nRemoving items only takes effect after restarting Emacs.")

(custom-autoload 'gmm/auto-mode-list "gmail-message-mode" nil)

(autoload 'gmail-message-mode "gmail-message-mode" "\
Designed for GMail messages. Transparently edit an html file using markdown.\n\nWhen this mode is activated in an html file, the buffer is\nconverted to markdown and you may edit at will, but the file is\nstill saved as html behind the scenes.\n\\<gmail-message-mode-map>\nAlso defines a key \\[gmm/save-finish-suspend] for `gmm/save-finish-suspend'.\n\n\\{gmail-message-mode-map}\n\n(fn)" t nil)

(autoload 'gmail-message-edit-server-mode "gmail-message-mode" "\
Designed for GMail messages coming from google-chrome's \"Edit with Emacs\".\n\nNot actually meant for editing. This just sets up the buffer as a\nmirrored version of an html file that you'll be editing with the\nactual `gmail-message-mode'.\n\nThis is supposed to be added to `edit-server-url-major-mode-alist',\nso that it's called in an edit-server buffer. If you're trying to\nuse this in any other way, you're probably using the wrong\nfunction. Try using (or extending) `gmail-message-mode' instead.\n\n(fn)" t nil)

(autoload 'gmail-message-client-mode "gmail-message-mode" "\
Designed for GMail messages coming from google-chrome's \"Edit with Emacs\".\n\nThis mode is meant for editing, it is the sister of\n`gmail-message-edit-server-mode', which is not meant for editing.\nIt works exactly as the simpler `gmail-message-mode', except that\nsaving or killing this buffer also affects the edit-server's\nbuffer (which is the mirror of this one).\n\nThis is supposed to be added to `auto-mode-alist', so that it's\ncalled when we open mirror files setup by\n`gmail-message-edit-server-mode'. If you're trying to use this in\nany other way, you're probably using the wrong function. Try\nusing (or extending) `gmail-message-mode' instead.\n\n(fn)" t nil)

(autoload 'gmm/set-amlist "gmail-message-mode" "\
Reset the auto-mode-alist.\n\n(fn &optional SYM VAL)" nil nil)

(eval-after-load 'edit-server '(add-to-list 'edit-server-url-major-mode-alist '("\\(mail\\|inbox\\)\\.google\\." . gmail-message-edit-server-mode)))

(mapc (lambda (x) (add-to-list 'auto-mode-alist (cons x 'gmail-message-mode))) gmm/auto-mode-list)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gmail-message-mode" '("gmail-message-mode-" "gmm/")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gmail-message-mode-autoloads.el ends here
