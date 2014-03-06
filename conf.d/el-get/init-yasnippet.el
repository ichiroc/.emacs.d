(require 'yasnippet)
(yas-global-mode t)
;; change default directory
(setq yas-snippet-dirs (remove "~/.emacs.d/snippets" yas-snippet-dirs))
(add-to-list 'yas-snippet-dirs "~/.emacs.d/conf.d/snippets")

