;;行番号表示
(global-linum-mode t)
;;分割ウィンドウ移動
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; 自動保存ファイル(#*#)の保存先作成
(let ((target-dir (expand-file-name "~/"))
      (dest-dir (expand-file-name "~/.Trash/")))

;; 自動保存ファイル(#*#)の作成先変更
(add-to-list 'auto-save-file-name-transforms
	     `(,(concat target-dir "\\([^/]*/\\)*\\([^/]*\\)$")
	       ,(concat dest-dir "\\2")
	       t))

(setq create-lockfiles nil)

;; バックアップファイル(*~)の作成先変更
(add-to-list 'backup-directory-alist (cons target-dir dest-dir))

;; 自動保存リスト(.saves-<PID>-<HOSTNAME>)の作成先変更
(setq auto-save-list-file-prefix (expand-file-name ".saves-" dest-dir)))



(require 'smartparens-config)
(sp-pair "「" "」")
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(add-hook 'lisp-mode-hook 'smartparens-mode)
(add-hook 'c-mode-hook 'smartparens-mode)
(add-hook 'c++-mode-hook 'smartparens-mode)
(add-hook 'python-mode-hook 'smartparens-mode)
(add-hook 'java-mode-hook 'smartparens-mode)

(global-anzu-mode +1)

(require 'anything)

;(dired "~/home_clisp")
;(dired "~/home_c")
(dired "~/home_csharp")
