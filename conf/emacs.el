;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    emacs.el                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/16 04:07:03 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/16 05:24:54 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

;; 42 header plugins
(add-to-list 'load-path "~/.emacs.d/packages/42headers/")
(load "list.el")
(load "string.el")
(load "comments.el")
(load "header.el")

;; Theme
(load-theme 'monokai t)

;; Powerline
(require 'powerline)
(when (display-graphic-p)
	(powerline-default-theme))

;; UI
(tool-bar-mode -1)
(setq inhibit-splash-screen t)
(when (display-graphic-p)
   	(scroll-bar-mode -1))
(menu-bar-mode -1)
(column-number-mode 1)
(setq split-height-threshold 9999)
(setq split-width-threshold 250)
(set-default 'truncate-lines t)
(setq frame-title-format "%b")

;; Rainbow mode
(require 'rainbow-mode)
(add-hook 'css-mode-hook 'rainbow-mode)

;; Matching parenthesis and alikes.
(electric-pair-mode 1)
(show-paren-mode t)

;; Indenting
(setq-default
 c-default-style "linux"
 c-basic-offset 4
 c-indent-level 4
 tab-width 4
 indent-tabs-mode nil
 c-tab-always-indent t
 backward-delete-function nil)

;; WhiteSpace
(require 'whitespace)
(global-whitespace-mode 1)
(setq whitespace-style '(empty face trailing))

;; Saves
(setq backup-inhibited t)
(setq auto-save-default nil)
(add-hook 'before-save-hook 'whitespace-cleanup)

;; ido completion system
(require 'ido)
(ido-mode 1)

;; Linum mode
(global-linum-mode 1)
(setq linum-format " %4d | ")
(defcustom linum-disabled-modes-list
  '(eshell-mode
    wl-summary-mode
    compilation-mode
    org-mode
    dired-mode
    erc-mode
    term-mode)
  "* List of modes disabled when global linum mode is on"
  :type '(repeat (sexp :tag "Major mode"))
  :tag " Major modes where linum is disabled: "
  :group 'linum)
(defcustom linum-disable-starred-buffers 't
  "* Disable buffers that have stars in them like *Gnu Emacs*"
  :type 'boolean
  :group 'linum)
(defun linum-on ()
  (unless
      (or (minibufferp)
          (member major-mode linum-disabled-modes-list)
          (and linum-disable-starred-buffers
               (string-match "*" (buffer-name))))
    (linum-mode 1)))

;; Project management
(require 'projectile)
(projectile-global-mode)

;; Snippets
(require 'yasnippet)
(yas-global-mode t)

;; Auto complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;; Compilation
(require 'ansi-color)
(setq compile-command "make")
(setq compilation-scroll-output 'first-error)
(defun colorize-compilation-buffer ()
  (ansi-color-apply-on-region (point-min) (point-max)))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; GDB
(setq gud-gdb-command-name "gdb -q -i=mi")

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
