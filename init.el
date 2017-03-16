;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    init.el                                            :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/05 10:58:21 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/16 05:23:16 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Package Manager
;; See ~Cask~ file for its configuration
;; https://github.com/cask/cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Keeps ~Cask~ file in sync with the packages
;; that you install/uninstall via ~M-x list-packages~
;; https://github.com/rdallasgray/pallet
(require 'pallet)
(pallet-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (rainbow-mode yasnippet yaml-mode twig-mode tuareg restclient projectile powerline php-mode pandoc pallet multiple-cursors mouse+ monokai-theme minimap markdown-mode magit-gitflow cask-package-toolset cask-mode auto-complete-c-headers))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Add configuration path
(add-to-list 'load-path "~/.emacs.d/conf/")

;; Add configurations
(load "font.el")
(load "emacs.el")
(load "shortcut.el")
