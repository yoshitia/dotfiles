(custom-set-variables
 '(inhibit-startup-screen t))
(custom-set-faces)

(load-file (expand-file-name "~/.emacs.d/shellenv.el"))
(dolist (path (reverse (split-string (getenv "PATH") ":")))
  (add-to-list 'exec-path path))

;;user-emacs-directory : ~/.emacs.d/

(load (concat user-emacs-directory "init-el-get.el"))
(add-to-list 'load-path (concat user-emacs-directory "site-lisp"))

(custom-set-variables
	'(init-loader-show-log-after-init 'error-only))
(init-loader-load (concat user-emacs-directory "init-loader"))


