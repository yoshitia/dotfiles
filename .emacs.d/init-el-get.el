(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
	(with-current-buffer
		(url-retrieve-synchronously
			"https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
		(goto-char (point-max))
		(eval-print-last-sexp)))

;;setup
(el-get-bundle emacs-jp/init-loader)
(el-get-bundle purcell/exec-path-from-shell)

;;undo
(el-get-bundle undo-tree)

;;evil
(el-get-bundle evil :info nil)
(el-get-bundle timcharper/evil-surround)

;;Pair
(el-get-bundle Fuco1/smartparens)

;;Buffer
(el-get-bundle popwin)

;;Tabbar
(el-get-bundle tabbar)

;;search
(el-get-bundle syohex/emacs-anzu)
(el-get-bundle anything)
(el-get-bundle mori-dev/anything-rdefs)

;;auto-complete
(el-get-bundle auto-complete/popup-el :name popup)
(el-get-bundle auto-complete/fuzzy-el :name fuzzy)
(el-get-bundle elpa:auto-complete)

;;c-mode, c++-mode
(el-get-bundle mooz/auto-complete-c-headers)
(el-get-bundle brianjcj/auto-complete-clang)

;;ruby-mode
(el-get-bundle adolfosousa/ruby-block.el)
(el-get-bundle qoobaa/ruby-electric)
(el-get-bundle nonsequitur/inf-ruby)
(el-get-bundle smartcompile
  :url "http://www.emacswiki.org/emacs/download/smart-compile.el")

;;python-mode
(el-get-bundle elpa:jedi)

;;java-mode
(el-get-bundle emacs-java/auto-java-complete)

;;snippet
(el-get-bundle yasnippet)

;;Validation
(el-get-bundle flycheck)

;;HTML
(el-get-bundle fxbois/web-mode)
(el-get-bundle smihica/emmet)

;;Common Lisp
(el-get-bundle slime)
(el-get-bundle purcell/ac-slime)
(el-get-bundle cl-indent-patches
	:url "http://boinkor.net/lisp/cl-indent-patches.el")

;;shell
(el-get-bundle quickrun)

;;Csharp-mode
(el-get-bundle josteink/csharp-mode)
;;omnisharp-emacs
(el-get-bundle OmniSharp/omnisharp-emacs)
(el-get-bundle company-mode/company-mode)
