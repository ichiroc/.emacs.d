;; disable ime by context.
(add-hook 'evil-normal-state-entry-hook
          '(lambda ()
             (w32-ime-state-switch nil)))
(add-hook 'minibuffer-setup-hook 
	  '(lambda ()
	     (w32-ime-state-switch nil)))

;; remove message "grep: NUL: No such file or directory" in *grep* buffer.
(setq null-device "/dev/null")

;; turn off warning when execute "ediff-buffers".
(setenv "CYGWIN" "nodosfilewarning")

;; set file name encoding for dired
(setq default-file-name-coding-system 'cp932)

;; enable ime in isearch mini-buffer.
(defun w32-isearch-update ()
  (interactive)
  (isearch-update))
(define-key isearch-mode-map [compend] 'w32-isearch-update)
(define-key isearch-mode-map [kanji] 'isearch-toggle-input-method)

;; frame size
(setq default-frame-alist
      '((top . 0)
        (left . 0 )
        (width . 157)
        (height . 54)
        (tool-bar-lines . 0)
        (font . "-outline-Takaoゴシック-normal-normal-normal-mono-16-*-*-*-c-*-iso8859-1")
        ))
;; Fonts
(set-default-font "Takaoゴシック")
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  '("Takaoゴシック" . "unicode-bmp")
                  )

(provide 'init-win)
