;; Require
(require 'mouse)
;; Mouse
(xterm-mouse-mode t)
;(defun track-mouse (e))
(setq mouse-sel-mode t)
(global-set-key
 [mouse-4]
 '(lambda ()
    (interactive)
	(scroll-down 1)))
(global-set-key
 [mouse-5]
 '(lambda ()
	(interactive)
	(scroll-up 1)))
;; Global Shorcut
(global-set-key (kbd "C-A") 'undo)
(global-set-key (kbd "C-c h") 'replace-string)
(global-set-key (kbd "C-c C-d") 'comment-or-uncomment-region)
(global-set-key [mouse-20] 'previous-buffer)
(global-set-key [mouse-21] 'next-buffer)
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f6>") 'recompile)
(global-set-key (kbd "TAB") 'self-insert-command)
;; Multi cursor shortcuts
(global-set-key (kbd "C-c d") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c D") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c c") 'mc/edit-lines)
(global-unset-key (kbd "C-<down-mouse-1>"))
(global-set-key (kbd "C-<mouse-1>") 'mc/add-cursor-on-click)
;; Packages shorcuts
(global-set-key (kbd "<f9>") 'magit-status)
(global-set-key (kbd "<f12>") 'projectile-find-file)
;; Snippet
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "<backtab>") 'yas-expand)
;; Autocomplete
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")
