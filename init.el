;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    init.el                                            :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/05 10:58:21 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/19 04:53:52 by jlagneau         ###   ########.fr        ;
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
(load "font.el")
(load "emacs.el")
(load "shortcut.el")
