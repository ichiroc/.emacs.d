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

;; Execute TaskViewer for Windows when clocked in.
(defvar my-org-clock-in-shell-buffer-name "*ORG-CLOCK-IN-BUFFER*")
(add-hook 'org-clock-in-hook '(lambda () (interactive)
                                (async-shell-command (concat "taskviewer"
                                                             " \""
                                                             (format-time-string "[%H:%M] " org-clock-start-time)
                                                             (encode-coding-string org-clock-heading 'cp932)
                                                             "\" "
                                                             (number-to-string (- (display-pixel-height) 160))
                                                             " "
                                                             (number-to-string (- (display-pixel-width)  420)))
                                                     (get-buffer-create my-org-clock-in-shell-buffer-name))
                                (delete-other-windows)))
(add-hook 'org-clock-out-hook '(lambda () (interactive)
                                 (shell-command "taskkill /im:taskviewer.exe")
                                 (let ((clock-process-buffer (get-buffer my-org-clock-in-shell-buffer-name)))
                                   (while (process-live-p
                                           (get-buffer-process clock-process-buffer))
                                     (sleep-for 1))
                                   (kill-buffer clock-process-buffer))))

(provide 'init-win)
