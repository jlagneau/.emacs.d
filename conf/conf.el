;; Add 42 header plugins path
(add-to-list 'load-path "~/.emacs.d/packages/42headers/")

;; Add opam emacs directory to the load-path
(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))

;; Header 42
(load "list.el")
(load "string.el")
(load "comments.el")
(load "header.el")

;; Require
(require 'auto-complete)
(require 'auto-complete-config)
(require 'ansi-color)
(require 'yasnippet)
(require 'whitespace)
(require 'package)
(require 'merlin)
(require 'ido)

;; Theme
(load-theme 'monokai t)
;; UI
(tool-bar-mode -1)
(setq inhibit-splash-screen t)
(when (display-graphic-p)
   	(scroll-bar-mode -1))
(menu-bar-mode -1)
(column-number-mode 1)
(setq split-height-threshold 9999)
(setq split-width-threshold 250)
;; Auto completion on command buffer
(ido-mode 1)
;; Project
(projectile-global-mode)
;; Matching parenthesis and alikes.
(electric-pair-mode 1)
(show-paren-mode t)
;; Snippets
(yas-global-mode t)
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
(global-whitespace-mode 1)
(setq whitespace-style '(empty face trailing))
;; Saves
(setq backup-inhibited t)
(setq auto-save-default nil)
(add-hook 'before-save-hook 'whitespace-cleanup)
;; Line numbers
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
;; GDB
(setq gud-gdb-command-name "gdb -q -i=mi")
;; Compilation
(setq compile-command "make")
(setq compilation-scroll-output 'first-error)
(defun colorize-compilation-buffer ()
  (ansi-color-apply-on-region (point-min) (point-max)))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)
;; Auto complete
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(global-auto-complete-mode t)
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
;; Start merlin on ocaml files
(add-hook 'tuareg-mode-hook 'merlin-mode t)
(add-hook 'caml-mode-hook 'merlin-mode t)
;; Enable auto-complete
(setq merlin-use-auto-complete-mode 'easy)
;; Use opam switch to lookup ocamlmerlin binary
(setq merlin-command 'opam)
