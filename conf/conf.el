;; Add plugins path
(add-to-list 'load-path "~/.emacs.d/packages/42headers/")

;; Require
(require 'ansi-color)
(require 'whitespace)
(require 'package)
(require 'ido)

;; Header 42
(load "list.el")
(load "string.el")
(load "comments.el")
(load "header.el")

;; Auto completion on buffers
(ido-mode 1)

;; Project
(projectile-global-mode)

;; Menu
(setq inhibit-splash-screen t)
(menu-bar-mode -1)
(column-number-mode 1)

;; Compilation
(setq compilation-scroll-output 'first-error)
(defun colorize-compilation-buffer ()
	(ansi-color-apply-on-region (point-min) (point-max)))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; Indenting
(setq-default c-default-style "linux"
	c-basic-offset 4
	tab-width 4
	indent-tabs-mode t)

;; WhiteSpace
(global-whitespace-mode 1)
(setq whitespace-style
	'(empty face trailing))

;; Saves
(setq backup-inhibited t)
(setq auto-save-default nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Line numbers
(global-linum-mode 1)
(setq linum-format " %4d | ")
(defcustom linum-disabled-modes-list
	'(eshell-mode wl-summary-mode compilation-mode org-mode dired-mode erc-mode term-mode)
	"* List of modes disabled when global linum mode is on"
	:type '(repeat (sexp :tag "Major mode"))
	:tag " Major modes where linum is disabled: "
	:group 'linum)
(defcustom linum-disable-starred-buffers 't
	"* Disable buffers that have stars in them like *Gnu Emacs*"
	:type 'boolean
	:group 'linum)
(defun linum-on ()
	(unless (or (minibufferp) (member major-mode linum-disabled-modes-list)
		(and linum-disable-starred-buffers
			(string-match "*" (buffer-name))))
(linum-mode 1)))
