;;; hack for evil mode.
;;; Fix misaligned cursors issue.
(defvar my-is-in-multiple-cursors-mode-now nil)

(add-hook 'multiple-cursors-mode-disabled-hook
	  (lambda () (interactive)
	    (when (member 'evil-mode minor-mode-list)
	      (setq my-is-in-multiple-cursors-mode-now nil)
	      (setq evil-visual-char my-evil-visual-char-original)
	      (setq evil-move-cursor-back my-evil-move-cursor-back-original)
	      )))

(defadvice multiple-cursors-mode (before 
				  multiple-cursors-mode-for-evil
				  first
				  (activate-mode-flag)				  
				  )
  (when (member 'evil-mode minor-mode-list)
    (unless my-is-in-multiple-cursors-mode-now
      (setq my-is-in-multiple-cursors-mode-now t)
      (setq my-evil-visual-char-original evil-visual-char)
      (setq evil-visual-char 'exclusive)
      (setq my-evil-move-cursor-back-original evil-move-cursor-back)
      (setq evil-move-cursor-back nil)
      )
    ))

(ad-activate 'multiple-cursors-mode)
