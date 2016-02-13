(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
(setq ruby-electric-expand-delimiters-list nil)

(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

(require 'rcodetools)
(setq rct-find-tag-if-available nil)
(defun ruby-mode-hook-rcodetools ()
  (define-key ruby-mode-map "\M-\C-i" 'rct-complete-symbol)
  (define-key ruby-mode-map "\C-c\C-t" 'ruby-togggle-buffer)
  (define-key ruby-mode-map "\C-c\C-f" 'rct-ri)
  (define-key ruby-mode-map "\C-c\C-d" 'xmp))

(add-hook 'ruby-mode-hook 'ruby-mode-hook-rcodetools)

(require 'anything-rdefs)
(add-hook 'ruby-mode-hook 
  (lambda ()
          (define-key ruby-mode-map (kbd "C-@") 'anything-rdefs)))

;; smart-compile
(require 'smart-compile)
(define-key ruby-mode-map (kbd "C-c c") 'smart-compile)
(define-key ruby-mode-map (kbd "C-c C-c") (kbd "C-c c C-m"))
(setq compilation-window-height 15) ;; default window height is 15

;; ruby-modeのインデントを改良する
(setq ruby-deep-indent-paren-style nil)
(defadvice ruby-indent-line (after unindent-closing-paren activate)
  (let ((column (current-column))
        indent offset)
       (save-excursion
        (back-to-indentation)
        (let ((state (syntax-ppss)))
             (setq offset (- column (current-column)))
             (when (and (eq (char-after) ?\))
                        (not (zerop (car state))))
                   (goto-char (cadr state))
                   (setq indent (current-indentation)))))
       (when indent
             (indent-line-to indent)
             (when (> offset 0) (forward-char offset)))))

