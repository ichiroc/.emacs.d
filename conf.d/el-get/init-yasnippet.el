(require 'yasnippet)
(yas-global-mode t)
;; change default directory
(setq yas-snippet-dirs (remove "~/.emacs.d/snippets" yas-snippet-dirs))
(add-to-list 'yas-snippet-dirs "~/.emacs.d/conf.d/snippets")

;; prioritize yas-dropdown-prompt to yas-prmpt-functions
(setq yas-prompt-functions
      '(yas-dropdown-prompt yas-completing-prompt yas-x-prompt yas-ido-prompt yas-no-prompt))
