(require 'edbi)
;; configuration for Support Oracle
(setenv "NLS_LANG" "AMERICAN_JAPAN.UTF8")
(autoload 'sqlplus "sqlplus" nil t)
(defadvice sql-oracle (after set-coding-sql-oracle activate)
  (set-process-coding-system (get-process "SQL") 'cp932 'cp932)
  )

(setq edbi:ds-history-file (concat my-emacs-var-dir ".edbi-ds-history"))

;; for conflict elscreen 
(setq edbi:query-result-fix-header nil)

;; hack for issue which returns blank result when query executed at second time.
(defadvice edbi:dbview-quit-command (after my-edbi:dbview-clear-semaphore activate)
  (edbi:dbview-query-execute-semaphore-clear)
  (message "Clear edbi:dbview semaphore")  
  )
