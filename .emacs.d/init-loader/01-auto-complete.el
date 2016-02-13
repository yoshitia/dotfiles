(require 'auto-complete-config)
;(require 'auto-complete-clang)
(require 'ajc-java-complete-config)

(add-hook 'java-mode-hook 'ajc-java-complete-mode)
(remove-hook 'java-mode-hook 'auto-complete-clang)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(ac-config-default)
;;c-modeとc++-mode用
(defun my:ac-c-headers-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))

(add-hook 'c++-mode-hook 'my:ac-c-headers-init)
(add-hook 'c-mode-hook 'my:ac-c-headers-init)

(defun my-ac-cc-mode-setup ()
  ;;tなら自動で補完画面がでる．nilなら補完キーによって出る
  (setq ac-auto-start t)
  (setq ac-clang-prefix-header "~/.emacs.d/el-get/auto-complete-clang/stdafx.pch")
  (setq ac-clang-flags '("-w" "-ferror-limit" "1"))
  (setq ac-sources (append '(ac-source-clang 
                             ac-source-yasnippet 
                             ac-source-gtags)
                           ac-sources)))

(defun my-ac-config ()
  (global-set-key "\M-/" 'ac-start)
  ;; C-n/C-p で候補を選択
  (define-key ac-complete-mode-map "\C-n" 'ac-next)
  (define-key ac-complete-mode-map "\C-p" 'ac-previous)

  (setq-default ac-sources '(ac-source-abbrev 
                             ac-source-dictionary 
                             ac-source-words-in-same-mode-buffers))
  (add-hook 'c++-mode-hook 'ac-cc-mode-setup)
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  (add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))

;(my-ac-config)



