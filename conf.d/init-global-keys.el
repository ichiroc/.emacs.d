;;; init-global-keys.el --- global key mappng
;;; Commentary:
;;; init global key mapping
;;; Code:

;; Global key mapping
(global-set-key (kbd "C-;") 'helm-for-files)

(global-set-key (kbd "C-M-k") 'kill-whole-line)
(global-set-key (kbd "C-o") '(lambda ()(interactive) 
			       (end-of-line)
			       (newline-and-indent)))
(global-set-key (kbd "C-S-o") '(lambda ()(interactive) 
			       (beginning-of-line)
			       (insert-char 10)
			       (previous-line)
			       (indent-relative)))
(global-set-key (kbd "C-h C-o") 'helm-occur)
(global-set-key (kbd "C-h C-i") 'helm-imenu)

(global-set-key (kbd "M-g f .") '(lambda () (interactive) (find-file "~/.emacs.d/init.el") ))

(global-set-key (kbd "C-x a f") 'find-file-at-point)

(global-set-key (kbd "C-M-e") 'evil-emacs-state)

(global-set-key (kbd "C-x C-t") 'org-capture)

(global-set-key (kbd "C-x a j") 'open-junk-file)
(global-set-key (kbd "C-x a l") 'auto-revert-tail-mode)
(global-set-key (kbd "C-x a t") 'google-translate-at-point)

(global-set-key (kbd "C-c a") 'org-agenda)

(global-set-key (kbd "C-S-h") 'elscreen-previous)
(global-set-key (kbd "C-S-n") 'elscreen-create)
(global-set-key (kbd "C-S-l") 'elscreen-next)
(global-set-key (kbd "C-S-w") 'elscreen-kill)

(global-set-key (kbd "C-M-t") 'mark-thing)
(global-set-key (kbd "C-M-m") 'mark-symbol)

(global-set-key (kbd "C-*") 'mc/mark-all-symbols-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-symbol-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-symbol-like-this)

(global-set-key (kbd "C-c C-x C-j") 'org-clock-goto)

;; C-M-o binds split or other-window.
(global-set-key (kbd "C-M-o") '(lambda () (interactive)
			       (if (= (count-windows) 1)
				   (split-window)
				 (other-window 1))))
;; if shift added then split-window-vertically
(global-set-key (kbd "C-M-S-o") '(lambda () (interactive)
			       (if (= (count-windows) 1)
				   (split-window-vertically)
				 (other-window 1))))

(global-set-key (kbd "C-x a a") 'my-execute-current-buffer)

(global-set-key (kbd "M-g f t") '(lambda ()(interactive) (find-file (concat my-org-directory (car my-org-agenda-files)))))
(global-set-key (kbd "M-g f g") '(lambda ()(interactive) (find-file (concat my-emacs-conf-dir "init-global-keys.el"))))

(global-set-key (kbd "C-x C-v") 'evil-local-mode)
(provide 'init-global-keys)
;;; init-global-keys.el ends here
