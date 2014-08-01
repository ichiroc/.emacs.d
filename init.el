;;; init.el --- init loadpath and require init-all.
(add-to-list 'load-path "~/.emacs.d/conf.d")
(add-to-list 'load-path "~/.emacs.d/private")
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/site-lisp/el-get/el-get")


;;; init all
(require 'init-all)



