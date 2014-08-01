;; frame size
(setq default-frame-alist '(
			    (top . 0)
			    (left . 0 )
			    (width . 100)
			    (height . 30)
			    (tool-bar-lines . 0)
			    (font . "-outline-Takaoゴシック-normal-normal-normal-mono-19-*-*-*-c-*-iso8859-1")
			    ))

(setq mac-command-modifier 'meta)
(set-default-font "TakaoGothic")
(set-fontset-font "fontset-default"
				  'japanese-jisx0208
				  '("TakaoGothic" . "iso10646-1"))
(provide 'init-mac)
