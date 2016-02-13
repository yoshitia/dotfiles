(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(add-hook 'python-mode-hook
  '(lambda ()
           (setq indent-tabs-mode nil)
           (setq indent-level 4)
           (setq python-indent 4)
           (setq tab-width 4)))
