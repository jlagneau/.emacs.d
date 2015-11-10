;; Require
(require 'mouse)

;; Mouse
(xterm-mouse-mode t)
(defun track-mouse (e))
(setq mouse-sel-mode t)
(global-set-key [mouse-4] '(lambda ()
	(interactive)
	(scroll-down 1)))
(global-set-key [mouse-5] '(lambda ()
	(interactive)
	(scroll-up 1)))

;; Shorcut
(global-set-key (kbd "C-a") 'undo)
(global-set-key (kbd "C-c h") 'replace-string)
(global-set-key (kbd "C-c C-d") 'comment-or-uncomment-region)
(global-set-key [mouse-20] 'previous-buffer)
(global-set-key [mouse-21] 'next-buffer)
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f6>") 'recompile)
(global-set-key (kbd "<f9>") 'magit-status)
(global-set-key (kbd "<f12>") 'projectile-find-file)
(global-set-key (kbd "TAB") 'self-insert-command)
