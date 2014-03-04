;; init general variables.
(require 'init-variables)
;; init private settings if exitst.
(require 'init-private nil t)
;; init general settings which doesn't depend any lisps.
(require 'init-emacs)
(require 'init-global-keys)
(require 'init-ui)
(require 'init-dired)

;; init Windows and OSX
(cond ((eq system-type 'windows-nt)
      (require 'init-win))
      ((eq system-type 'darwin)
       (require 'init-mac)))

;; funcions defined by me.
(require 'open-junk-file)

;; init el-get and installed packages.
(require 'init-el-get)

;;; provide init-all
(provide 'init-all)
;;; init-all ends here
