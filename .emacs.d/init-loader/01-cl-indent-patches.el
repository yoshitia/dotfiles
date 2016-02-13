(when (require 'cl-indent-patches nil t)
  (setq lisp-indent-function
	(lambda (&rest args)
	  (apply (if (memq major-mode '(emacs-lisp-mode lisp-interaction-mode))
		   'lisp-indent-function
		   'common-lisp-indent-function)
		 args))))
