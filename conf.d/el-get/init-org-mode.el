;;; init-org --- initialization org-mode
;;; Commentary:
;;; Code:
(require 'org)
(setq org-hide-leading-stars t)		;org-modeのスターを非表示にする
(setq org-directory my-org-directory)
					;org-mode のプロジェクトディレクトリを登録
					; mobileorg を使う為の設定

(setq org-mobile-directory my-org-mobile-directory)
(setq org-mobile-inbox-for-pull (concat org-directory (car my-org-agenda-files)))

;; org.txt も対象にする。
(add-to-list 'auto-mode-alist '("\\.org\\.txt" . org-mode))

(setq org-todo-keywords
        '((sequence "PROJ(p)" "TODO(t)" "WAIT(w)" "|" "DEFERRED(d)" "CANCELED(c)" "DONE(x)")))

(dolist (org-file-for-agenda my-org-agenda-files)
   (add-to-list 'org-agenda-files (concat org-directory org-file-for-agenda) t)
)

                          
;; agenda の表示の冗長性を無くす
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
  :END:" :empty-lines 1 t TODO) ("x" "From external" entry (file+headline (concat org-directory "tasks.org") "Task Stuck") "* TODO %? %a   :outlook:
  DEADLINE: %t
  :PROPERTIES:
  :CREATED_AT: %U
  :END:
  %a
  %i" :empty-lines 1 t TODO)))


;; agenda
(setq org-agenda-custom-commands 
      (quote (("k" "Daily agenda and all tasks from tasks.org" ((agenda "" ((org-agenda-span (quote week)))) (alltodo "" ((org-agenda-sorting-strategy (quote (todo-state-up priority-down time-up)))))) nil nil)
	      ("@" "Delegated tasks" search "@" ((org-agenda-sorting-strategy (quote (tag-up priority-down time-up))))))))
