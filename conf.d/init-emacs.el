;; init customize
(setq custom-file (concat my-emacs-conf-dir "custom.el"))
(load custom-file)
;; init var files location.
(setq server-auth-dir (concat my-emacs-var-dir "server/"))
(setq abbrev-file-name (concat my-emacs-var-dir "abbrev_defs"))
(setq auto-save-list-file-prefix (concat my-emacs-var-dir "auto-save-list/.saves-"))

;; highlight paren
(show-paren-mode 1)
;; truncate line
(set-default 'truncate-lines t)

(setq recentf-max-saved-items 2000)
(setq recentf-auto-cleanup (* 60 60))

(require 'recentf)
(recentf-load-list)
(recentf-cleanup)

;; change owner user to self at '~/.emacs.d/server' directory.
(server-start)

;; set default coding (mainly for pentadactyl.)
(set-default-coding-systems 'utf-8)

;; set url-cookie-files
(setq url-cookie-file (concat my-emacs-var-dir "url/cookies"))
(setq url-history-file (concat my-emacs-var-dir "url/history"))

;; enable upcase-region and downcase-region
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; don't save backup files in original file's directory.
(setq backup-directory-alist `((".*" . ,(concat my-emacs-var-dir "backup-files"))))
(setq auto-save-file-name-transforms `((".*" ,(concat my-emacs-var-dir "backup-files") t)))

;; setup find-function keys e.g) C-x F
(find-function-setup-keys)

;; diable scroll bar
(scroll-bar-mode -1)

;; set auto-save-interval 30 key events.
(setq auto-save-interval 30)

(provide 'init-emacs)
