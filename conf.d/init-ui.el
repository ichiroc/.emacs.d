;; *** UI 

;; frame size
(setq default-frame-alist
      '((top . 0)
        (left . 0 )
        (width . 157)
        (height . 54)
        (tool-bar-lines . 0)
        (font . "-outline-Takao�S�V�b�N-normal-normal-normal-mono-16-*-*-*-c-*-iso8859-1")
        ))
;; GUI parts
(tool-bar-mode -1)
;; Fonts
(set-default-font "Takao�S�V�b�N")
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  '("Takao�S�V�b�N" . "unicode-bmp")
                  )
(provide 'init-ui)
