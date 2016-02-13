;;sbclを使用
(setq inferior-lisp-program "/usr/bin/sbcl")
(add-to-list 'load-path (concat user-emacs-directory "slime"))

(require 'slime-autoloads)
(slime-setup '(slime-repl slime-fancy slime-banner))

(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)

(require 'popwin)
;; Apropos
(push "*slime-apropos*" popwin:special-display-config)
;; Macroexpand
(push "*slime-macroexpansion*" popwin:special-display-config)
;; Help
(push "*slime-description*" popwin:special-display-config)
;; Compilation
(push '("*slime-compilation*" :noselect t) popwin:special-display-config)
;; Cross-reference
(push "*slime-xref*" popwin:special-display-config)
;; Debugger
(push '(sldb-mode :stick t) popwin:special-display-config)
;; REPL
(push 'slime-repl-mode popwin:special-display-config)
;; Connections
(push 'slime-connection-list-mode popwin:special-display-config)

