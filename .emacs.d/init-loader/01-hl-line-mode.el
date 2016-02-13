(defface my-hl-line-face
	 ;;背景がdarkならば背景色を紺に
	 '((((class color) (background dark))
	    (:background "NavyBlue" t))
	   ;;背景がlightならば背景色を緑に
	   (((class color) (background light))
	    (:background "lightgray" t))
	   (t (:bold t)))
	 "hl-line's my face")
(setq hl-line-face 'my-hl-line-face)
(global-hl-line-mode t)
