(add-to-list 'load-path "~/.emacs.d/plugins/git-commit-mode/")
(add-to-list 'load-path "~/.emacs.d/plugins/git-rebase-mode/")
(add-to-list 'load-path "~/.emacs.d/plugins/magit/")
(add-to-list 'load-path "~/.emacs.d/plugins/magit-gitflow/")

(require 'magit)
(require 'magit-gitflow)

;; Magit
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
