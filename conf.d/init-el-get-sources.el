;; custom recipes
(defvar el-get-sources nil)
(setq el-get-sources '(
		       (:name my-evil-plugin
			      :website "https://github.com/tarao/evil-plugins"
			      :description "Plugins for Evil ( www.emacswiki.org/emacs/Evil )." 
			      :type github 
			      :url "https://github.com/tarao/evil-plugins.git" 
			      )
		       (:name evil-textobj-between
			      :website "https://github.com/tarao/evil-plugins"
			      :description "Plugins for Evil ( www.emacswiki.org/emacs/Evil )." 
			      :type http 
			      :url "https://raw.github.com/tarao/evil-plugins/master/evil-textobj-between.el" 
			      )
		       (:name my-evil-mode-line
			      :website "https://github.com/tarao/evil-plugins"
			      :description "Plugins for Evil ( www.emacswiki.org/emacs/Evil )." 
			      :depends my-mode-line-color
			      :type http 
			      :url "https://raw.github.com/tarao/evil-plugins/master/evil-mode-line.el" 
			      )
		       (:name my-mode-line-color
			      :website "https://github.com/tarao/elisp"
			      :type http
			      :url "https://raw.github.com/tarao/elisp/master/mode-line-color.el"
			      )
		       (:name elscreen
			      :website "https://github.com/knu/elscreen.git"
			      :type elpa
			      :repo  ("MELPA" . "http://melpa.milkbox.net/packages/"))
		       (:name org-mode 
			      :website "http://orgmode.org/" 
			      :description "Change protocol git to http. Org-mode is for keeping notes, maintaining ToDo lists, doing project planning, and authoring with a fast and effective plain-text system." 
			      :type git 
			      :url "http://orgmode.org/org-mode.git" 
			      :info "doc" 
			      :build/berkeley-unix (\` (\, (mapcar (lambda (target) (list "gmake" target (concat "EMACS=" (shell-quote-argument el-get-emacs)))) (quote ("oldorg"))))) 
			      :build (\` (\, (mapcar (lambda (target) (list "make" target (concat "EMACS=" (shell-quote-argument el-get-emacs)))) (quote ("oldorg"))))) 
			      :load-path ("." "lisp" "contrib/lisp"))
		       (:name org-protocol-jekyll
			      :website "https://github.com/knu/elscreen.git"
			      :type elpa
			      :depends org-mode
			      :repo  ("MELPA" . "http://melpa.milkbox.net/packages/"))
		       (:name my-git-modes
			      :url "https://github.com/magit/git-modes.git"
			      :type git)
		       (:name evil-surround
		       	      :depends (evil surround))
		       (:name my-magit
			      :url "https://github.com/magit/magit/"
			      :depends (cl-lib git-modes)
			      :type git)
		       (:name markdown-mode
			      :type http
			      :url "http://jblevins.org/git/markdown-mode.git/plain/markdown-mode.el")
		       (:name yasnippet
			      :type elpa
			      :description "Yet another snippet extension for Emacs."
			      :repo ("melpa" . "http://melpa.milkbox.net/packages/")
			      )
		       ))
(provide 'init-el-get-sources)
