;;; jedi-core-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "jedi-core" "jedi-core.el" (0 0 0 0))
;;; Generated autoloads from jedi-core.el

(autoload 'jedi:start-dedicated-server "jedi-core" "\
Start Jedi server dedicated to this buffer.\nThis is useful, for example, when you want to use different\n`sys.path' for some buffer.  When invoked as an interactive\ncommand, it asks you how to start the Jedi server.  You can edit\nthe command in minibuffer to specify the way Jedi server run.\n\nIf you want to setup how Jedi server is started programmatically\nper-buffer/per-project basis, make `jedi:server-command' and\n`jedi:server-args' buffer local and set it in `python-mode-hook'.\nSee also: `jedi:server-args'.\n\n(fn COMMAND)" t nil)

(autoload 'helm-jedi-related-names "jedi-core" "\
Find related names of the object at point using `helm' interface.\n\n(fn)" t nil)

(autoload 'anything-jedi-related-names "jedi-core" "\
Find related names of the object at point using `anything' interface.\n\n(fn)" t nil)

(autoload 'jedi:setup "jedi-core" "\
Fully setup jedi.el for current buffer.\nIt setups `ac-sources' or `company-backends' and turns\n`jedi-mode' on.\n\nThis function is intended to be called from `python-mode-hook',\nlike this::\n\n       (add-hook 'python-mode-hook 'jedi:setup)\n\nYou can also call this function as a command, to quickly test\nwhat jedi can do.\n\n(fn)" t nil)

(autoload 'jedi:install-server "jedi-core" "\
This command installs Jedi server script jediepcserver.py in a\nPython environment dedicated to Emacs.  By default, the\nenvironment is at ``~/.emacs.d/.python-environments/default/``.\nThis environment is automatically created by ``virtualenv`` if it\ndoes not exist.\n\nRun this command (i.e., type ``M-x jedi:install-server RET``)\nwhenever Jedi.el shows a message to do so.  It is a good idea to\nrun this every time after you update Jedi.el to sync version of\nPython modules used by Jedi.el and Jedi.el itself.\n\nYou can modify the location of the environment by changing\n`jedi:environment-root' and/or `python-environment-directory'.  More\nspecifically, Jedi.el will install Python modules under the directory\n``PYTHON-ENVIRONMENT-DIRECTORY/JEDI:ENVIRONMENT-ROOT``.  Note that you\nneed command line program ``virtualenv``.  If you have the command in\nan unusual location, use `python-environment-virtualenv' to specify the\nlocation.\n\n.. NOTE:: jediepcserver.py is installed in a virtual environment but it\n   does not mean Jedi.el cannot recognize the modules in virtual\n   environment you are using for your Python development.  Jedi\n   EPC server recognize the virtualenv it is in (i.e., the\n   environment variable ``VIRTUAL_ENV`` in your Emacs) and then\n   add modules in that environment to its ``sys.path``.  You can\n   also add ``--virtual-env PATH/TO/ENV`` to `jedi:server-args'\n   to include modules of virtual environment even you launch\n   Emacs outside of the virtual environment.\n\n.. NOTE:: It is highly recommended to use this command to install\n   Python modules for Jedi.el.  You still can install Python\n   modules used by Jedi.el manually.  However, you are then\n   responsible for keeping Jedi.el and Python modules compatible.\n\nSee also:\n\n- https://github.com/tkf/emacs-jedi/pull/72\n- https://github.com/tkf/emacs-jedi/issues/140#issuecomment-37358527\n\n(fn)" t nil)

(autoload 'jedi:reinstall-server "jedi-core" "\
Reinstall Jedi server script jediepcserver.py.\n\n(fn)" t nil)

(autoload 'jedi:install-server-block "jedi-core" "\
Blocking version `jedi:install-server'.\n\n(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "jedi-core" '("jedi")))

;;;***

;;;### (autoloads nil nil ("jedi-core-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; jedi-core-autoloads.el ends here
