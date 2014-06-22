(evil-mode)
;; Disable evil-mode keybind in insert state (Enable Emacs keybind).
(setcdr evil-insert-state-map nil)
;; but [escape] should switch back to normal state
(define-key evil-insert-state-map [escape] 'evil-normal-state)

(global-surround-mode t)
;; surround pairs
(setq surround-pairs-alist
      '((40 "(" . ")")                  ; 不要な空白を削除
        (91 "[" . "]")                  ; 不要な空白を削除
        (123 "{" . "}")
        (41 "(" . ")")
        (93 "[" . "]")
        (125 "{" . "}")
        (35 "#{" . "}")
        (98 "(" . ")")
        (66 "{" . "}")
        (62 "<" . ">")
        (116 . surround-read-tag)
        (60 . surround-read-tag)
        (102 . surround-function)))
;; move to normal state on press escape key in emacs state
(evil-global-set-key 'emacs (kbd "C-[") 'evil-normal-state)

;; for disabled evil-local-mode
(evil-global-set-key 'normal (kbd "C-x C-v") 'evil-local-mode)
(evil-global-set-key 'insert (kbd "C-x C-v") 'evil-local-mode)
