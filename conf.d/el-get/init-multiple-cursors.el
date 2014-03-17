;;; for evil mode.
;;; Fix misaligned cursors issue.
;;; https://github.com/magnars/multiple-cursors.el/issues/17
(setq evil-visual-char 'exclusive)
(setq evil-move-cursor-back nil)
(setq mc/list-file (concat my-emacs-var-dir ".mc-lists.el"))
