;; Windows ���� Dired ���璼�ڃt�@�C�����J��
(require 'dired)
(define-key dired-mode-map "O" '(lambda () (interactive) (shell-command (concat "cygstart '" (encode-coding-string (dired-get-filename) 'sjis) "'"))))

; ���ݔ���L�� 
(setq delete-by-moving-to-trash t) 

(defun my-dired-kill-file-path-windows-style ()
  (interactive)
  (let ((kill-string  (replace-regexp-in-string "/" "\\\\" (dired-get-filename)) ))
    (kill-new kill-string)
    (message (concat "killed " kill-string))))
(define-key dired-mode-map (kbd "w") 'my-dired-kill-file-path-windows-style)

(provide 'init-dired)
