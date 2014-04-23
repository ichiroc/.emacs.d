;;; init variable
(setq el-get-user-package-directory (concat my-emacs-conf-dir "el-get/"))
(setq el-get-dir "~/.emacs.d/site-lisp/el-get/")
(setq package-user-dir (concat el-get-dir "package/elpa" ))


;;; init package *BEFORE* (el-get 'sync)
;; if you don't this , error occured in el-get initialization by elpa package.
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; package-user-dir must be set *BEFORE* package-initialize.
(package-initialize)

;;; init el-get
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; build "elpa" recipes at first time setup.
(unless (file-exists-p el-get-recipe-path-elpa)
  (el-get-elpa-build-local-recipes nil t))

;; define el-get-sources
(require 'init-el-get-sources)
;;(el-get ...) must exists *AFTER* el-get-sources define.
;; controll init order by 3rd arg.
(el-get 'sync '(
		markdown-mode
		thing-opt
		auto-complete
		csv-mode
		ruby-mode
		elscreen
		inf-ruby
		edbi
		undo-tree
		google-translate
		vbnet-mode
		web-mode
		yaml-mode
		zenburn-theme
		projectile
		my-mode-line-color
		org-mode
		org-protocol-jekyll
		multiple-cursors
		js2-mode
		helm
		helm-descbinds
		grep-edit
		flycheck
		evil
		evil-elscreen
		evil-leader
		surround
		evil-surround
		my-evil-mode-line
		evil-textobj-between
		dos
		my-magit
		))

(provide 'init-el-get)
