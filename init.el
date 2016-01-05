;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    init.el                                            :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/05 10:58:21 by jlagneau          #+#    #+#              ;
;    Updated: 2016/01/05 10:58:25 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/") t)
  (package-initialize))

;; Add configuration path
(add-to-list 'load-path "~/.emacs.d/conf/")
;; Add configurations
(load "conf.el")
(load "shortcut.el")
