;; frame size
(setq default-frame-alist '((top . 0) (left . 0 )  (width . 170) (height . 48) (tool-bar-lines . 0) ))

(setq mac-command-modifier 'meta)
(set-default-font "TakaoGothic")
(set-fontset-font "fontset-default"
				  'japanese-jisx0208
				  '("TakaoGothic" . "iso10646-1"))
(provide 'init-mac)
