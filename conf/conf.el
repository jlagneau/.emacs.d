;; Require
(require 'auto-complete)
(require 'auto-complete-config)

;; Auto completion on command buffer
(ido-mode 1)
;; Project
(projectile-global-mode)
;; Snippets
(yas-global-mode t)
;; Line numbers

;; Compilation

;; Auto complete
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")


;; C CS
(defun my-c-mode-hook ()
  (setq indent-tabs-mode t)
  (setq whitespace-style '(empty face trailing indentation lines-tail
                                 space-before-tab space-after-tab)))
(add-hook 'c-mode-hook 'my-c-mode-hook)

;; PHP CS
(defun my-php-mode-hook ()
  (setq whitespace-line-column 120))
(add-hook 'php-mode-hook 'my-php-mode-hook)
(add-hook 'php-mode-hook 'php-enable-symfony2-coding-style)

;; Ocaml
(add-hook 'tuareg-mode-hook 'merlin-mode t)
