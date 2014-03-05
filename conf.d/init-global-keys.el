;;; init-global-keys.el --- global key mappng
;;; Commentary:
;;; init global key mapping
;;; Code:

;; Global key mapping
(global-set-key (kbd "C-;") 'helm-for-files)

(global-set-key (kbd "C-h C-o") 'helm-occur)
(global-set-key (kbd "C-h <tab>") 'helm-imenu)

(global-set-key (kbd "M-g o .") '(lambda () (interactive) (find-file "~/.emacs.d/init.el") ))

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
(provide 'init-global-keys)
;;; init-global-keys.el ends here
