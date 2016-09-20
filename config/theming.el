
(add-to-list 'custom-theme-load-path "~/.emacs.d/config/themes/")

(progn
 (add-to-list 'load-path "~/.emacs.d/config/themes/emacs-doom-theme")
 (require 'doom-theme)
 (load-theme 'doom-one t))

(add-to-list 'default-frame-alist '(font . "Office Code Pro-9" ))
(set-face-attribute 'default t :font "Office Code Pro-9" )

(setq-default sp-highlight-pair-overlay nil)
