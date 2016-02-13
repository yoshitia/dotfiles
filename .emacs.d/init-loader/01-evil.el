;;evil settings

(evil-ex-define-cmd "q[uit]" 'kill-this-buffer)
(evil-mode 1)

(add-hook 'evil-normal-state-entry-hook
  (lambda ()
    (if (string= "2\n" (shell-command-to-string "fcitx-remote"))
        (shell-command "fcitx-remote -c"))))

(require 'evil-surround)
(global-evil-surround-mode 1)
