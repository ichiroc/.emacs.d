(helm-mode t)
(setq helm-for-files-preferred-list 
      '(helm-source-buffers-list
	helm-source-bookmarks
	helm-source-recentf
	helm-source-file-cache
	helm-source-files-in-current-dir))

;;; init helm keybinds
(define-key helm-map (kbd "C-M-n") 'helm-next-source)
(define-key helm-map (kbd "C-M-p") 'helm-previous-source)
(define-key helm-find-files-map (kbd "C-<tab>") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "C-<tab>") 'helm-execute-persistent-action)

(define-key helm-find-files-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "<tab>") 'helm-execute-persistent-action)

;; disable helm-find-files for UNC path.
(add-to-list 'helm-completing-read-handlers-alist '(find-file . nil))
