;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    init.el                                            :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/05 10:58:21 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/25 22:10:47 by jlagneau         ###   ########.fr        ;
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

;; Add configuration path
(add-to-list 'load-path "~/.emacs.d/conf/")

;; Add configurations
(load "emacs.el")
(load "shortcut.el")

;; Customize file location
(setq custom-file "~/.emacs.d/conf/custom.el")
(load custom-file 'noerror)
