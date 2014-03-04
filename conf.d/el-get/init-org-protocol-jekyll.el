;; outlook Œ`Ž®‚ÌURL‚ðŠJ‚­
;; see http://lists.gnu.org/archive/html/emacs-orgmode/2008-08/msg00172.html
(require 'org-protocol)
(defun org-open-outlook-url (uid)
  "Open an outlook format url"
  (interactive "sGUID: ")
  (w32-shell-execute nil (format "outlook:%s" uid)))
(org-add-link-type "outlook" 'org-open-outlook-url)

