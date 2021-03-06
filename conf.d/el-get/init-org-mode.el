;;; init-org --- initialization org-mode
(require 'org)
(defadvice org-todo (before my-disable-ime-before-org-todo)
  (w32-ime-state-switch nil))
;hide leading stars.
(setq org-hide-leading-stars t)		

(setq org-directory my-org-directory)
(setq org-id-locations-file (concat my-emacs-var-dir ".org-id-locations"))
(setq org-mobile-directory my-org-mobile-directory)
(setq org-mobile-inbox-for-pull (concat org-directory (car my-org-agenda-files)))

;; treat org.txt as org-mode
(add-to-list 'auto-mode-alist '("\\.org\\.txt" . org-mode))

(setq org-todo-keywords
        '((sequence "*MSN(m)" "PROJ(p)" "TODO(t)" "WAIT(w)" "|" "DEFERRED(d)" "CANCELED(c)" "DONE(x)")))

(dolist (org-file-for-agenda my-org-agenda-files)
   (add-to-list 'org-agenda-files (concat org-directory org-file-for-agenda) t)
)

                          
;; remove agenda duplicate.
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-scheduled-if-deadline-is-shown t)
;; capture template
(setq org-capture-templates '(
			      ("t" "Todo" entry (file+headline (concat org-directory "tasks.org") "Task Stuck") "* TODO %?
  DEADLINE: %t
  :PROPERTIES:
  :CREATED_AT: %U
  :END:" :empty-lines 1 t TODO) 
			      ("m" "Memo" entry (file (car org-agenda-files)) "* %?
  :PROPERTIES:
  :CREATED_AT: %U
  :END:" :empty-lines 1 t TODO) ("x" "From external" entry (file+headline (concat org-directory "tasks.org") "Task Stuck") "* TODO %? %a
  DEADLINE: %t
  :PROPERTIES:
  :CREATED_AT: %U
  :END:
  %a
  %i" :empty-lines 1 t TODO)))


;; agenda
;; (setq org-agenda-custom-commands 
;;       (quote (("k" "Daily agenda and all tasks from tasks.org" ((agenda "" ((org-agenda-span (quote week)))) (alltodo "" ((org-agenda-sorting-strategy (quote (todo-state-up priority-down time-up)))))) nil nil)
;; 	      ("@" "Delegated tasks" search "@" ((org-agenda-sorting-strategy (quote (tag-up priority-down time-up))))))))

;; reuse headline face.
(setq org-n-level-faces 3)


(add-hook 'kill-emacs-hook '(lambda () (interactive) 
			      (when (and (fboundp 'org-clocking-p) (org-clocking-p))
				(org-clock-out))
			      (if (y-or-n-p "Push orgfiles to MobileOrg?")
				  (org-mobile-push))))
(add-hook 'emacs-startup-hook '(lambda () (interactive) 
			      (when (and (fboundp 'org-clocking-p) (org-clocking-p))
				(org-clock-out))
			      (if (y-or-n-p "Pull orgfiles from MobileOrg?")
				  (org-mobile-pull))))

;; Export settings.
;; Remove HTML footer.
(setq org-html-postamble nil)
;; Hide headline numbers.
(setq org-export-with-section-numbers nil)
;; Remove Toc
(setq org-export-with-toc nil)
;; Priority settings
(setq org-default-priority 67)
(setq org-lowest-priority 68)
(require 'org-agenda)
;; Set deadline quickly
(define-key org-agenda-mode-map (kbd "C-t") '(lambda () (interactive) (org-agenda-deadline nil "+0d"))) ;today
(define-key org-agenda-mode-map (kbd "C-w") '(lambda () (interactive) (org-agenda-deadline nil "+1d"))) ;tomorrow
(define-key org-agenda-mode-map (kbd "C-e") '(lambda () (interactive) (org-agenda-deadline nil "+7d"))) ; next week
;; Refile level 2 headlines.
(setq org-refile-targets '((nil . (:maxlevel . 2))))
