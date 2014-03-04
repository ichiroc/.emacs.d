;; Windows 環境で Dired から直接ファイルを開く
(require 'dired)
(define-key dired-mode-map "O" '(lambda () (interactive) (shell-command (concat "cygstart '" (encode-coding-string (dired-get-filename) 'sjis) "'"))))

; ごみ箱を有効 
(setq delete-by-moving-to-trash t) 

(defun my-dired-kill-file-path-windows-style ()
  (interactive)
  (let ((kill-string  (replace-regexp-in-string "/" "\\\\" (dired-get-filename)) ))
    (kill-new kill-string)
    (message (concat "killed " kill-string))))
(define-key dired-mode-map (kbd "w") 'my-dired-kill-file-path-windows-style)

(provide 'init-dired)
