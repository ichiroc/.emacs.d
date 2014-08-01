;;; customize
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(el-get-notify-type (quote both))
 '(flycheck-disabled-checkers (quote (emacs-lisp-checkdoc)))
 '(log4j-auto-revert-flag nil)
 '(org-agenda-custom-commands (quote (("k" "Daily agenda and all tasks from tasks.org" ((agenda "" ((org-agenda-span (quote week)) (org-agenda-sorting-strategy (quote (deadline-up priority-down))))) (alltodo "" ((org-agenda-sorting-strategy (quote (todo-state-up time-up deadline-up))) (org-agenda-overriding-header "")))) nil nil) ("d" "Done at today" todo "DONE" ((org-agenda-files (quote ("~/sync/org/tasks.org"))) (org-agenda-entry-types (quote (:deadline :scheduled))))))))
 '(org-agenda-files nil)
 '(org-agenda-window-setup (quote current-window))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ricty Diminished" :foundry "outline" :slant normal :weight normal :height 113 :width normal))))
 '(my-bracket-face ((t (:foreground "snow" :weight bold))) t)
 '(my-constant-face ((t (:inherit zenburn-primary-4 :background "blue4" :foreground "Aquamarine"))) t)
 '(my-highlight ((t (:background "dim gray" :foreground "tomato"))) t))
