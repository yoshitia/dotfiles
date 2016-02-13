;;paren-mode : 対応する括弧の強調表示
(setq show-paren-delay 0) ;表示までの秒数。
(show-paren-mode t)
;;parenのスタイル : expressionは括弧内も強調表示
(setq show-paren-style 'expression)
;;フェイスを変更する
(set-face-background 'show-paren-match-face nil)
(set-face-underline-p 'show-paren-match-face "blue")
