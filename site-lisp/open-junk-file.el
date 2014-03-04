(defun open-junk-file ()
  "Open junk file in junk directory."
  (interactive)
  (let ((directory (concat my-emacs-var-dir "junk/")) 
	(file-name (format-time-string "%Y%m%d-%H%M%S" )) )
    (find-file (read-string "FileName:" (concat directory file-name ".")))))

(provide 'open-junk-file)
