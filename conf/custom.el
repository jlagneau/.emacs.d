;;; package --- custom.el******************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    custom.el                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/04/11 10:28:01 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/11 10:28:01 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

;;; Commentary:
;; Customization made by Emacs M-x customize.

;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(column-number-mode t)
 '(electric-pair-mode t)
 '(flycheck-clang-include-path (quote ("../libft/include" "../include")))
 '(flycheck-clang-pedantic t)
 '(flycheck-clang-warnings (quote ("everything" "no-cast-qual" "no-unused-macros")))
 '(global-linum-mode t)
 '(global-whitespace-mode t)
 '(gud-gdb-command-name "gdb -q -i=mi")
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(linum-format " %4d | ")
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(neo-show-hidden-files t)
 '(neo-show-updir-line nil)
 '(neo-smart-open t)
 '(neo-vc-integration (quote (face)))
 '(neo-window-fixed-size nil)
 '(neo-window-width 35)
 '(package-selected-packages
   (quote
    (yasnippet yaml-mode web-mode twig-mode tuareg restclient rainbow-mode projectile powerline phpunit php-mode pandoc pallet neotree nasm-mode multiple-cursors mouse+ monokai-theme minimap markdown-mode magit-gitflow js2-highlight-vars gist flycheck emojify emmet-mode composer cask-package-toolset cask-mode auto-complete-c-headers all-the-icons-dired ac-js2)))
 '(projectile-mode t nil (projectile))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(split-height-threshold nil)
 '(split-width-threshold 120)
 '(tool-bar-mode nil)
 '(truncate-lines t)
 '(whitespace-style
   (quote
    (face trailing empty space-after-tab space-before-tab))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum ((t (:foreground "#8F908A" :underline nil))))
 '(neo-vc-added-face ((t (:foreground "green"))))
 '(neo-vc-default-face ((t (:foreground "gainsboro"))))
 '(neo-vc-ignored-face ((t (:foreground "dark gray"))))
 '(neo-vc-up-to-date-face ((t (:foreground "gainsboro"))))
 '(whitespace-space ((t nil))))

(provide 'custom)
;;; custom.el ends here
