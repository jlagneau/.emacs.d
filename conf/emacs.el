;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    emacs.el                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/16 04:07:03 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/26 00:19:44 by jlagneau         ###   ########.fr        ;
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

;; Rainbow mode
(require 'rainbow-mode)
(add-hook 'css-mode-hook 'rainbow-mode)

;; Indenting
(setq-default
 c-default-style "linux"
 backward-delete-function nil)

;; Saves
(add-hook 'before-save-hook 'whitespace-cleanup)

;; ido completion system
(require 'ido)
(ido-mode 1)

;; Linum mode
(require 'linum)
(defcustom linum-disabled-modes-list
  '(eshell-mode
    wl-summary-mode
    compilation-mode
    org-mode
    dired-mode
    erc-mode
    hexl-mode
    term-mode)
  "* List of modes disabled when global linum mode is on."
  :type '(repeat (sexp :tag "Major mode"))
  :tag " Major modes where linum is disabled: "
  :group 'linum)
(defcustom linum-disable-starred-buffers 't
  "* Disable buffers that have stars in them like *Gnu Emacs*."
  :type 'boolean
  :group 'linum)
(defun linum-on ()
  "* Define when 'linum-mode' should be activated."
  (unless
      (or (minibufferp)
          (member major-mode linum-disabled-modes-list)
          (and linum-disable-starred-buffers
               (string-match "*" (buffer-name))))
    (linum-mode 1)))

;; Project management
(require 'projectile)
(projectile-mode)

;; Project tree
(require 'neotree)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(defun neotree-project-dir ()
  "* Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
        (file-name (buffer-file-name)))
    (neotree-toggle)
    (if project-dir
        (if (neo-global--window-exists-p)
            (progn
              (neotree-dir project-dir)
              (neotree-find file-name)))
      (message "Could not find git project root."))))

;; Snippets
(require 'yasnippet)
(yas-global-mode t)

;; Auto complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;; Emmet
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

;; Emojify
(require 'emojify)
(add-hook 'after-init-hook #'global-emojify-mode)

;; Compilation
(require 'ansi-color)
(setq compile-command "make")
(setq compilation-scroll-output 'first-error)
(defun colorize-compilation-buffer ()
  "* Colorize the compilation buffer."
  (ansi-color-apply-on-region (point-min) (point-max)))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; Assembly
(require 'nasm-mode)
(add-to-list 'auto-mode-alist '("\\.\\(asm\\|s\\)$" . nasm-mode))

;; C
(defun my-c-cs ()
  "* My C Coding Style."
  (setq whitespace-style
        '(empty face indentation space-before-tab space-after-tab)))
(add-hook 'c-mode-hook 'my-c-cs)

;; PHP
(add-hook 'php-mode-hook 'php-enable-symfony2-coding-style)

;; JS
(require 'js2-mode)
(setq-default js2-basic-offset 2)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
