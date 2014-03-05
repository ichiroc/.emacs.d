(global-auto-complete-mode t)
(setq ac-comphist-file (concat my-emacs-var-dir "ac-comphist.dat"))
(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)

(require 'auto-complete-config)
(ac-config-default)
