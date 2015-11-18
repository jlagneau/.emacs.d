(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
    (package-initialize))

;; Add configuration path
(add-to-list 'load-path "~/.emacs.d/conf/")

;; Add configurations
(load "conf.el")
(load "shortcut.el")
