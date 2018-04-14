;;; shimbun-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "mew-shimbun" "mew-shimbun.el" (0 0 0 0))
;;; Generated autoloads from mew-shimbun.el

(autoload 'mew-shimbun-goto-unseen-folder "mew-shimbun" "\
Goto folder for SHIMBUN to have a few new messages.\n\n(fn)" t nil)

(autoload 'mew-shimbun-goto-folder "mew-shimbun" "\
Goto folder for SHIMBUN.\nIf called with '\\[universal-argument]', goto folder to have a few new messages.\n\n(fn &optional ARGS)" t nil)

(autoload 'mew-shimbun-retrieve "mew-shimbun" "\
Retrieve articles via SHIMBUN on this folder.\n\n(fn &optional NEWFLD)" t nil)

(autoload 'mew-shimbun-retrieve-all "mew-shimbun" "\
Retrieve all articles via SHIMBUN.\n\n(fn)" t nil)

(autoload 'mew-shimbun-re-retrieve "mew-shimbun" "\
Re-retrieve this message.\nIf called with '\\[universal-argument]', re-retrieve messages marked with\n'mew-shimbun-mark-re-retrieve'.\n\n(fn &optional ARGS)" t nil)

(autoload 'mew-shimbun-re-retrieve-all "mew-shimbun" "\
Re-retrieve all messages in this folder.\nIf called with '\\[universal-argument]', re-retrieve messages in the region.\n\n(fn &optional ARG)" t nil)

(autoload 'mew-shimbun-expire-all "mew-shimbun" "\
Expire all shimbun folder.\n\n(fn)" t nil)

(autoload 'mew-shimbun-expire "mew-shimbun" "\
Expire this shimbun folder.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "mew-shimbun" '("mew-shimbun-")))

;;;***

;;;### (autoloads nil "nnshimbun" "nnshimbun.el" (0 0 0 0))
;;; Generated autoloads from nnshimbun.el

(autoload 'gnus-summary-refer-shimbun-article "nnshimbun" "\
Show a shimbun article pointed to by the given URL.\n\n(fn URL)" t nil)

(autoload 'gnus-group-make-shimbun-group "nnshimbun" "\
Create a new nnshimbun group.\nThe user will be prompted for a SERVER name and a GROUP name.  When\nthis command is called with a prefix argument, it makes an ephemeral\nshimbun group.\n\n(fn SERVER GROUP &optional EPHEMERAL)" t nil)

(autoload 'gnus-group-make-shimbun-groups "nnshimbun" "\
Create all nnshimbun groups prepared for SERVER.\n\n(fn SERVER)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "nnshimbun" '("nnshimbun-")))

;;;***

;;;### (autoloads nil "sb-2ch" "sb-2ch.el" (0 0 0 0))
;;; Generated autoloads from sb-2ch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-2ch" '("shimbun-2ch-")))

;;;***

;;;### (autoloads nil "sb-airs" "sb-airs.el" (0 0 0 0))
;;; Generated autoloads from sb-airs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-airs" '("shimbun-airs-")))

;;;***

;;;### (autoloads nil "sb-aljazeera" "sb-aljazeera.el" (0 0 0 0))
;;; Generated autoloads from sb-aljazeera.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-aljazeera" '("shimbun-aljazeera-" "sb-aljazeera-wash-article")))

;;;***

;;;### (autoloads nil "sb-arch-bluegate" "sb-arch-bluegate.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from sb-arch-bluegate.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-arch-bluegate" '("shimbun-arch-bluegate-")))

;;;***

;;;### (autoloads nil "sb-asahi" "sb-asahi.el" (0 0 0 0))
;;; Generated autoloads from sb-asahi.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-asahi" '("shimbun-asahi-")))

;;;***

;;;### (autoloads nil "sb-asahi-html" "sb-asahi-html.el" (0 0 0 0))
;;; Generated autoloads from sb-asahi-html.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-asahi-html" '("shimbun-asahi-html-prefer-text-plain")))

;;;***

;;;### (autoloads nil "sb-asahi-mytown" "sb-asahi-mytown.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from sb-asahi-mytown.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-asahi-mytown" '("shimbun-asahi-mytown-")))

;;;***

;;;### (autoloads nil "sb-atmarkit" "sb-atmarkit.el" (0 0 0 0))
;;; Generated autoloads from sb-atmarkit.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-atmarkit" '("shimbun-atmarkit-")))

;;;***

;;;### (autoloads nil "sb-atom" "sb-atom.el" (0 0 0 0))
;;; Generated autoloads from sb-atom.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-atom" '("shimbun-atom-")))

;;;***

;;;### (autoloads nil "sb-atom-hash" "sb-atom-hash.el" (0 0 0 0))
;;; Generated autoloads from sb-atom-hash.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-atom-hash" '("shimbun-atom-")))

;;;***

;;;### (autoloads nil "sb-bbc" "sb-bbc.el" (0 0 0 0))
;;; Generated autoloads from sb-bbc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-bbc" '("shimbun-bbc-")))

;;;***

;;;### (autoloads nil "sb-bbdb-ml" "sb-bbdb-ml.el" (0 0 0 0))
;;; Generated autoloads from sb-bbdb-ml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-bbdb-ml" '("shimbun-bbdb-ml-")))

;;;***

;;;### (autoloads nil "sb-cgi-board" "sb-cgi-board.el" (0 0 0 0))
;;; Generated autoloads from sb-cgi-board.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-cgi-board" '("shimbun-cgi-board-")))

;;;***

;;;### (autoloads nil "sb-chise" "sb-chise.el" (0 0 0 0))
;;; Generated autoloads from sb-chise.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-chise" '("shimbun-chise-")))

;;;***

;;;### (autoloads nil "sb-cnet" "sb-cnet.el" (0 0 0 0))
;;; Generated autoloads from sb-cnet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-cnet" '("shimbun-cnet-")))

;;;***

;;;### (autoloads nil "sb-cnet-jp" "sb-cnet-jp.el" (0 0 0 0))
;;; Generated autoloads from sb-cnet-jp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-cnet-jp" '("shimbun-cnet-jp-")))

;;;***

;;;### (autoloads nil "sb-cnn-jp" "sb-cnn-jp.el" (0 0 0 0))
;;; Generated autoloads from sb-cnn-jp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-cnn-jp" '("shimbun-cnn-jp-")))

;;;***

;;;### (autoloads nil "sb-coldsync" "sb-coldsync.el" (0 0 0 0))
;;; Generated autoloads from sb-coldsync.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-coldsync" '("shimbun-coldsync-")))

;;;***

;;;### (autoloads nil "sb-debian" "sb-debian.el" (0 0 0 0))
;;; Generated autoloads from sb-debian.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-debian" '("shimbun-debian-")))

;;;***

;;;### (autoloads nil "sb-debian-jp" "sb-debian-jp.el" (0 0 0 0))
;;; Generated autoloads from sb-debian-jp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-debian-jp" '("shimbun-debian-jp-")))

;;;***

;;;### (autoloads nil "sb-debugmagazin-de" "sb-debugmagazin-de.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from sb-debugmagazin-de.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-debugmagazin-de" '("shimbun-debugmagazin-de-")))

;;;***

;;;### (autoloads nil "sb-dennou" "sb-dennou.el" (0 0 0 0))
;;; Generated autoloads from sb-dennou.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-dennou" '("shimbun-dennou-")))

;;;***

;;;### (autoloads nil "sb-digiko" "sb-digiko.el" (0 0 0 0))
;;; Generated autoloads from sb-digiko.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-digiko" '("shimbun-digiko-")))

;;;***

;;;### (autoloads nil "sb-elips" "sb-elips.el" (0 0 0 0))
;;; Generated autoloads from sb-elips.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-elips" '("shimbun-elips-")))

;;;***

;;;### (autoloads nil "sb-emacs-w3m" "sb-emacs-w3m.el" (0 0 0 0))
;;; Generated autoloads from sb-emacs-w3m.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-emacs-w3m" '("shimbun-emacs-w3m-")))

;;;***

;;;### (autoloads nil "sb-emacswiki" "sb-emacswiki.el" (0 0 0 0))
;;; Generated autoloads from sb-emacswiki.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-emacswiki" '("shimbun-emacswiki-")))

;;;***

;;;### (autoloads nil "sb-engadget-ja" "sb-engadget-ja.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from sb-engadget-ja.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-engadget-ja" '("shimbun-engadget-ja-")))

;;;***

;;;### (autoloads nil "sb-excite" "sb-excite.el" (0 0 0 0))
;;; Generated autoloads from sb-excite.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-excite" '("shimbun-excite-")))

;;;***

;;;### (autoloads nil "sb-exconn" "sb-exconn.el" (0 0 0 0))
;;; Generated autoloads from sb-exconn.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-exconn" '("shimbun-exconn-")))

;;;***

;;;### (autoloads nil "sb-f1fan" "sb-f1fan.el" (0 0 0 0))
;;; Generated autoloads from sb-f1fan.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-f1fan" '("shimbun-f1fan-")))

;;;***

;;;### (autoloads nil "sb-fau" "sb-fau.el" (0 0 0 0))
;;; Generated autoloads from sb-fau.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-fau" '("shimbun-fau-")))

;;;***

;;;### (autoloads nil "sb-ffii" "sb-ffii.el" (0 0 0 0))
;;; Generated autoloads from sb-ffii.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-ffii" '("shimbun-ffii-")))

;;;***

;;;### (autoloads nil "sb-fml" "sb-fml.el" (0 0 0 0))
;;; Generated autoloads from sb-fml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-fml" '("shimbun-fml-parse-time")))

;;;***

;;;### (autoloads nil "sb-geocrawler" "sb-geocrawler.el" (0 0 0 0))
;;; Generated autoloads from sb-geocrawler.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-geocrawler" '("shimbun-geocrawler-")))

;;;***

;;;### (autoloads nil "sb-gnome" "sb-gnome.el" (0 0 0 0))
;;; Generated autoloads from sb-gnome.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-gnome" '("shimbun-gnome-")))

;;;***

;;;### (autoloads nil "sb-haiku-os" "sb-haiku-os.el" (0 0 0 0))
;;; Generated autoloads from sb-haiku-os.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-haiku-os" '("shimbun-haiku-os-group-alist")))

;;;***

;;;### (autoloads nil "sb-hash" "sb-hash.el" (0 0 0 0))
;;; Generated autoloads from sb-hash.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-hash" '("content-hash-")))

;;;***

;;;### (autoloads nil "sb-heise" "sb-heise.el" (0 0 0 0))
;;; Generated autoloads from sb-heise.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-heise" '("shimbun-heise-")))

;;;***

;;;### (autoloads nil "sb-hns" "sb-hns.el" (0 0 0 0))
;;; Generated autoloads from sb-hns.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-hns" '("shimbun-hns-")))

;;;***

;;;### (autoloads nil "sb-ibm-dev" "sb-ibm-dev.el" (0 0 0 0))
;;; Generated autoloads from sb-ibm-dev.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-ibm-dev" '("shimbun-ibm-dev-")))

;;;***

;;;### (autoloads nil "sb-impress" "sb-impress.el" (0 0 0 0))
;;; Generated autoloads from sb-impress.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-impress" '("shimbun-impress-")))

;;;***

;;;### (autoloads nil "sb-infoshop" "sb-infoshop.el" (0 0 0 0))
;;; Generated autoloads from sb-infoshop.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-infoshop" '("shimbun-infoshop-")))

;;;***

;;;### (autoloads nil "sb-itmedia" "sb-itmedia.el" (0 0 0 0))
;;; Generated autoloads from sb-itmedia.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-itmedia" '("shimbun-itmedia-")))

;;;***

;;;### (autoloads nil "sb-japantimes" "sb-japantimes.el" (0 0 0 0))
;;; Generated autoloads from sb-japantimes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-japantimes" '("shimbun-japantimes-")))

;;;***

;;;### (autoloads nil "sb-javaconf" "sb-javaconf.el" (0 0 0 0))
;;; Generated autoloads from sb-javaconf.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-javaconf" '("shimbun-javaconf-")))

;;;***

;;;### (autoloads nil "sb-jpilot" "sb-jpilot.el" (0 0 0 0))
;;; Generated autoloads from sb-jpilot.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-jpilot" '("shimbun-jpilot-")))

;;;***

;;;### (autoloads nil "sb-jpo" "sb-jpo.el" (0 0 0 0))
;;; Generated autoloads from sb-jpo.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-jpo" '("shimbun-jpo-")))

;;;***

;;;### (autoloads nil "sb-kantei" "sb-kantei.el" (0 0 0 0))
;;; Generated autoloads from sb-kantei.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-kantei" '("shimbun-kantei-")))

;;;***

;;;### (autoloads nil "sb-kde" "sb-kde.el" (0 0 0 0))
;;; Generated autoloads from sb-kde.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-kde" '("shimbun-kde-")))

;;;***

;;;### (autoloads nil "sb-kyoko-np" "sb-kyoko-np.el" (0 0 0 0))
;;; Generated autoloads from sb-kyoko-np.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-kyoko-np" '("shimbun-kyoko-np-")))

;;;***

;;;### (autoloads nil "sb-laut-de" "sb-laut-de.el" (0 0 0 0))
;;; Generated autoloads from sb-laut-de.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-laut-de" '("shimbun-laut-de-")))

;;;***

;;;### (autoloads nil "sb-linuxce-jp" "sb-linuxce-jp.el" (0 0 0 0))
;;; Generated autoloads from sb-linuxce-jp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-linuxce-jp" '("shimbun-linuxce-jp-")))

;;;***

;;;### (autoloads nil "sb-lotusex" "sb-lotusex.el" (0 0 0 0))
;;; Generated autoloads from sb-lotusex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-lotusex" '("shimbun-lotusex-")))

;;;***

;;;### (autoloads nil "sb-lump" "sb-lump.el" (0 0 0 0))
;;; Generated autoloads from sb-lump.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-lump" '("shimbun-lump-")))

;;;***

;;;### (autoloads nil "sb-m17n" "sb-m17n.el" (0 0 0 0))
;;; Generated autoloads from sb-m17n.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-m17n" '("shimbun-m17n-")))

;;;***

;;;### (autoloads nil "sb-macosx-jp" "sb-macosx-jp.el" (0 0 0 0))
;;; Generated autoloads from sb-macosx-jp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-macosx-jp" '("shimbun-macosx-jp-")))

;;;***

;;;### (autoloads nil "sb-mailman" "sb-mailman.el" (0 0 0 0))
;;; Generated autoloads from sb-mailman.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-mailman" '("shimbun-mailman-")))

;;;***

;;;### (autoloads nil "sb-mainichi" "sb-mainichi.el" (0 0 0 0))
;;; Generated autoloads from sb-mainichi.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-mainichi" '("shimbun-mainichi-")))

;;;***

;;;### (autoloads nil "sb-makanai" "sb-makanai.el" (0 0 0 0))
;;; Generated autoloads from sb-makanai.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-makanai" '("shimbun-makanai-")))

;;;***

;;;### (autoloads nil "sb-marc-aims" "sb-marc-aims.el" (0 0 0 0))
;;; Generated autoloads from sb-marc-aims.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-marc-aims" '("shimbun-marc-aims-")))

;;;***

;;;### (autoloads nil "sb-meadow" "sb-meadow.el" (0 0 0 0))
;;; Generated autoloads from sb-meadow.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-meadow" '("shimbun-meadow-")))

;;;***

;;;### (autoloads nil "sb-mew" "sb-mew.el" (0 0 0 0))
;;; Generated autoloads from sb-mew.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-mew" '("shimbun-mew-")))

;;;***

;;;### (autoloads nil "sb-mhonarc" "sb-mhonarc.el" (0 0 0 0))
;;; Generated autoloads from sb-mhonarc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-mhonarc" '("shimbun-mhonarc-")))

;;;***

;;;### (autoloads nil "sb-mozilla-jp" "sb-mozilla-jp.el" (0 0 0 0))
;;; Generated autoloads from sb-mozilla-jp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-mozilla-jp" '("shimbun-mozilla-jp-")))

;;;***

;;;### (autoloads nil "sb-msdn" "sb-msdn.el" (0 0 0 0))
;;; Generated autoloads from sb-msdn.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-msdn" '("shimbun-msdn-")))

;;;***

;;;### (autoloads nil "sb-msports-nifty" "sb-msports-nifty.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from sb-msports-nifty.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-msports-nifty" '("shimbun-msports-nifty-")))

;;;***

;;;### (autoloads nil "sb-multi" "sb-multi.el" (0 0 0 0))
;;; Generated autoloads from sb-multi.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-multi" '("shimbun-multi-")))

;;;***

;;;### (autoloads nil "sb-n24-de" "sb-n24-de.el" (0 0 0 0))
;;; Generated autoloads from sb-n24-de.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-n24-de" '("shimbun-n24-de-")))

;;;***

;;;### (autoloads nil "sb-namazu" "sb-namazu.el" (0 0 0 0))
;;; Generated autoloads from sb-namazu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-namazu" '("shimbun-namazu-")))

;;;***

;;;### (autoloads nil "sb-netbsd" "sb-netbsd.el" (0 0 0 0))
;;; Generated autoloads from sb-netbsd.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-netbsd" '("shimbun-netbsd-")))

;;;***

;;;### (autoloads nil "sb-nikkangendai" "sb-nikkangendai.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from sb-nikkangendai.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-nikkangendai" '("shimbun-nikkangendai-")))

;;;***

;;;### (autoloads nil "sb-nikkansports" "sb-nikkansports.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from sb-nikkansports.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-nikkansports" '("shimbun-nikkansports-")))

;;;***

;;;### (autoloads nil "sb-nikkei" "sb-nikkei.el" (0 0 0 0))
;;; Generated autoloads from sb-nikkei.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-nikkei" '("shimbun-nikkei-")))

;;;***

;;;### (autoloads nil "sb-nytimes" "sb-nytimes.el" (0 0 0 0))
;;; Generated autoloads from sb-nytimes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-nytimes" '("shimbun-nytimes-")))

;;;***

;;;### (autoloads nil "sb-opentechpress-jp" "sb-opentechpress-jp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from sb-opentechpress-jp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-opentechpress-jp" '("shimbun-opentechpress-jp-")))

;;;***

;;;### (autoloads nil "sb-orca" "sb-orca.el" (0 0 0 0))
;;; Generated autoloads from sb-orca.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-orca" '("shimbun-orca-")))

;;;***

;;;### (autoloads nil "sb-palmfan" "sb-palmfan.el" (0 0 0 0))
;;; Generated autoloads from sb-palmfan.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-palmfan" '("shimbun-palmfan-")))

;;;***

;;;### (autoloads nil "sb-pcweb-column" "sb-pcweb-column.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from sb-pcweb-column.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-pcweb-column" '("shimbun-pcweb-column-")))

;;;***

;;;### (autoloads nil "sb-perlentaucher-de" "sb-perlentaucher-de.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from sb-perlentaucher-de.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-perlentaucher-de" '("shimbun-perlentaucher-de-")))

;;;***

;;;### (autoloads nil "sb-pilot-link" "sb-pilot-link.el" (0 0 0 0))
;;; Generated autoloads from sb-pilot-link.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-pilot-link" '("shimbun-pilot-link-")))

;;;***

;;;### (autoloads nil "sb-pilot-mailsync" "sb-pilot-mailsync.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from sb-pilot-mailsync.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-pilot-mailsync" '("shimbun-pilot-mailsync-")))

;;;***

;;;### (autoloads nil "sb-plucker" "sb-plucker.el" (0 0 0 0))
;;; Generated autoloads from sb-plucker.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-plucker" '("shimbun-plucker-")))

;;;***

;;;### (autoloads nil "sb-pocketgames" "sb-pocketgames.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from sb-pocketgames.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-pocketgames" '("shimbun-pocketgames-")))

;;;***

;;;### (autoloads nil "sb-rakuten" "sb-rakuten.el" (0 0 0 0))
;;; Generated autoloads from sb-rakuten.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-rakuten" '("shimbun-rakuten-")))

;;;***

;;;### (autoloads nil "sb-redhat" "sb-redhat.el" (0 0 0 0))
;;; Generated autoloads from sb-redhat.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-redhat" '("shimbun-redhat-")))

;;;***

;;;### (autoloads nil "sb-rediff" "sb-rediff.el" (0 0 0 0))
;;; Generated autoloads from sb-rediff.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-rediff" '("shimbun-rediff-")))

;;;***

;;;### (autoloads nil "sb-rss" "sb-rss.el" (0 0 0 0))
;;; Generated autoloads from sb-rss.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-rss" '("shimbun-rss-")))

;;;***

;;;### (autoloads nil "sb-rss-blogs" "sb-rss-blogs.el" (0 0 0 0))
;;; Generated autoloads from sb-rss-blogs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-rss-blogs" '("sb-rss-blogs-guess-type-from-rss" "shimbun-rss-blogs-")))

;;;***

;;;### (autoloads nil "sb-rss-hash" "sb-rss-hash.el" (0 0 0 0))
;;; Generated autoloads from sb-rss-hash.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-rss-hash" '("shimbun-rss-hash-group-path-alist")))

;;;***

;;;### (autoloads nil "sb-ruby" "sb-ruby.el" (0 0 0 0))
;;; Generated autoloads from sb-ruby.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-ruby" '("shimbun-ruby-")))

;;;***

;;;### (autoloads nil "sb-sankei" "sb-sankei.el" (0 0 0 0))
;;; Generated autoloads from sb-sankei.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-sankei" '("shimbun-sankei-")))

;;;***

;;;### (autoloads nil "sb-savannah" "sb-savannah.el" (0 0 0 0))
;;; Generated autoloads from sb-savannah.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-savannah" '("shimbun-savannah-")))

;;;***

;;;### (autoloads nil "sb-scipy" "sb-scipy.el" (0 0 0 0))
;;; Generated autoloads from sb-scipy.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-scipy" '("shimbun-scipy-")))

;;;***

;;;### (autoloads nil "sb-security-memo" "sb-security-memo.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from sb-security-memo.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-security-memo" '("shimbun-security-memo-")))

;;;***

;;;### (autoloads nil "sb-slashdot" "sb-slashdot.el" (0 0 0 0))
;;; Generated autoloads from sb-slashdot.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-slashdot" '("shimbun-slashdot-")))

;;;***

;;;### (autoloads nil "sb-slashdot-jp" "sb-slashdot-jp.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from sb-slashdot-jp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-slashdot-jp" '("shimbun-slashdot-jp-")))

;;;***

;;;### (autoloads nil "sb-sml" "sb-sml.el" (0 0 0 0))
;;; Generated autoloads from sb-sml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-sml" '("shimbun-sml-")))

;;;***

;;;### (autoloads nil "sb-sourceforge-jp" "sb-sourceforge-jp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from sb-sourceforge-jp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-sourceforge-jp" '("shimbun-sourceforge-jp-")))

;;;***

;;;### (autoloads nil "sb-spiegel" "sb-spiegel.el" (0 0 0 0))
;;; Generated autoloads from sb-spiegel.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-spiegel" '("shimbun-spiegel-")))

;;;***

;;;### (autoloads nil "sb-sponichi" "sb-sponichi.el" (0 0 0 0))
;;; Generated autoloads from sb-sponichi.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-sponichi" '("shimbun-sponichi-")))

;;;***

;;;### (autoloads nil "sb-squeak-dev" "sb-squeak-dev.el" (0 0 0 0))
;;; Generated autoloads from sb-squeak-dev.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-squeak-dev" '("shimbun-squeak-dev-")))

;;;***

;;;### (autoloads nil "sb-squeak-ja" "sb-squeak-ja.el" (0 0 0 0))
;;; Generated autoloads from sb-squeak-ja.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-squeak-ja" '("shimbun-squeak-ja-")))

;;;***

;;;### (autoloads nil "sb-sueddeutsche-de" "sb-sueddeutsche-de.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from sb-sueddeutsche-de.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-sueddeutsche-de" '("shimbun-sueddeutsche-de-")))

;;;***

;;;### (autoloads nil "sb-tcup" "sb-tcup.el" (0 0 0 0))
;;; Generated autoloads from sb-tcup.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-tcup" '("shimbun-tcup-")))

;;;***

;;;### (autoloads nil "sb-tdiary" "sb-tdiary.el" (0 0 0 0))
;;; Generated autoloads from sb-tdiary.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-tdiary" '("shimbun-tdiary-")))

;;;***

;;;### (autoloads nil "sb-tdiary-ml" "sb-tdiary-ml.el" (0 0 0 0))
;;; Generated autoloads from sb-tdiary-ml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-tdiary-ml" '("shimbun-tdiary-ml-")))

;;;***

;;;### (autoloads nil "sb-tech-on" "sb-tech-on.el" (0 0 0 0))
;;; Generated autoloads from sb-tech-on.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-tech-on" '("shimbun-tech-on-")))

;;;***

;;;### (autoloads nil "sb-texfaq" "sb-texfaq.el" (0 0 0 0))
;;; Generated autoloads from sb-texfaq.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-texfaq" '("shimbun-texfaq-")))

;;;***

;;;### (autoloads nil "sb-text" "sb-text.el" (0 0 0 0))
;;; Generated autoloads from sb-text.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-text" '("shimbun-")))

;;;***

;;;### (autoloads nil "sb-the-onion" "sb-the-onion.el" (0 0 0 0))
;;; Generated autoloads from sb-the-onion.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-the-onion" '("shimbun-the-onion-")))

;;;***

;;;### (autoloads nil "sb-the-register" "sb-the-register.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from sb-the-register.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-the-register" '("shimbun-the-register-")))

;;;***

;;;### (autoloads nil "sb-tigris" "sb-tigris.el" (0 0 0 0))
;;; Generated autoloads from sb-tigris.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-tigris" '("shimbun-tigris-")))

;;;***

;;;### (autoloads nil "sb-toshiba" "sb-toshiba.el" (0 0 0 0))
;;; Generated autoloads from sb-toshiba.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-toshiba" '("shimbun-toshiba-")))

;;;***

;;;### (autoloads nil "sb-vinelinux" "sb-vinelinux.el" (0 0 0 0))
;;; Generated autoloads from sb-vinelinux.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-vinelinux" '("shimbun-vinelinux-")))

;;;***

;;;### (autoloads nil "sb-w3m-dev" "sb-w3m-dev.el" (0 0 0 0))
;;; Generated autoloads from sb-w3m-dev.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-w3m-dev" '("shimbun-w3m-dev-")))

;;;***

;;;### (autoloads nil "sb-welt-de" "sb-welt-de.el" (0 0 0 0))
;;; Generated autoloads from sb-welt-de.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-welt-de" '("shimbun-welt-de-")))

;;;***

;;;### (autoloads nil "sb-wiki" "sb-wiki.el" (0 0 0 0))
;;; Generated autoloads from sb-wiki.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-wiki" '("shimbun-wiki-group-alist")))

;;;***

;;;### (autoloads nil "sb-wikimedia" "sb-wikimedia.el" (0 0 0 0))
;;; Generated autoloads from sb-wikimedia.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-wikimedia" '("shimbun-wikimedia-")))

;;;***

;;;### (autoloads nil "sb-wincefan" "sb-wincefan.el" (0 0 0 0))
;;; Generated autoloads from sb-wincefan.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-wincefan" '("shimbun-wincefan-")))

;;;***

;;;### (autoloads nil "sb-wired-jp" "sb-wired-jp.el" (0 0 0 0))
;;; Generated autoloads from sb-wired-jp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-wired-jp" '("shimbun-wired-jp-")))

;;;***

;;;### (autoloads nil "sb-x51" "sb-x51.el" (0 0 0 0))
;;; Generated autoloads from sb-x51.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-x51" '("shimbun-x51-")))

;;;***

;;;### (autoloads nil "sb-xemacs" "sb-xemacs.el" (0 0 0 0))
;;; Generated autoloads from sb-xemacs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-xemacs" '("shimbun-xemacs-")))

;;;***

;;;### (autoloads nil "sb-yahoo" "sb-yahoo.el" (0 0 0 0))
;;; Generated autoloads from sb-yahoo.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-yahoo" '("shimbun-yahoo-")))

;;;***

;;;### (autoloads nil "sb-yahoo-auctions" "sb-yahoo-auctions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from sb-yahoo-auctions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-yahoo-auctions" '("shimbun-yahoo-auctions-")))

;;;***

;;;### (autoloads nil "sb-yahoo-sports" "sb-yahoo-sports.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from sb-yahoo-sports.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-yahoo-sports" '("shimbun-yahoo-sports-")))

;;;***

;;;### (autoloads nil "sb-yomiuri" "sb-yomiuri.el" (0 0 0 0))
;;; Generated autoloads from sb-yomiuri.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-yomiuri" '("shimbun-yomiuri-")))

;;;***

;;;### (autoloads nil "sb-yomiuri-html" "sb-yomiuri-html.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from sb-yomiuri-html.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-yomiuri-html" '("shimbun-yomiuri-html-prefer-text-plain")))

;;;***

;;;### (autoloads nil "sb-yoshirin" "sb-yoshirin.el" (0 0 0 0))
;;; Generated autoloads from sb-yoshirin.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-yoshirin" '("shimbun-yoshirin-")))

;;;***

;;;### (autoloads nil "sb-zdnet-jp" "sb-zdnet-jp.el" (0 0 0 0))
;;; Generated autoloads from sb-zdnet-jp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-zdnet-jp" '("shimbun-zdnet-jp-")))

;;;***

;;;### (autoloads nil "sb-zeit-de" "sb-zeit-de.el" (0 0 0 0))
;;; Generated autoloads from sb-zeit-de.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sb-zeit-de" '("shimbun-zeit-de-")))

;;;***

;;;### (autoloads nil "shimbun" "shimbun.el" (0 0 0 0))
;;; Generated autoloads from shimbun.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "shimbun" '("shimbun-")))

;;;***

;;;### (autoloads nil nil ("sb-glimpse.el" "sb-mailarc.el" "shimbun-pkg.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; shimbun-autoloads.el ends here
