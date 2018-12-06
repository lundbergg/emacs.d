(setq package-enable-at-startup nil) ; tells emacs not to load any packages before starting up
;; the following lines tell emacs where on the internet to look up
;; for new packages.
(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "https://melpa.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package) ; unless it is already installed
  (package-refresh-contents) ; updage packages archive
  (package-install 'use-package)) ; and install the most recent version of use-package

;; Add dirs to 'load-path'
(add-to-list 'load-path "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/elisp/")


;; Load user functions
(load-library "functions.el")

;; Load all elisp files in elisp directory
(load-directory "~/.emacs.d/elisp/")

;; Load config files
(load-library "packages.el")
(load-library "keybinds.el")
(load-library "variables.el")
(load-library "modeline.el")
(load-library "theming.el")

;; Start the emacs server
(require 'server)
(unless (server-running-p) (server-start))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("e2fd81495089dc09d14a88f29dfdff7645f213e2c03650ac2dd275de52a513de" "a94f1a015878c5f00afab321e4fef124b2fc3b823c8ddd89d360d710fc2bddfc" default)))
 '(elpy-modules
   (quote
	(elpy-module-company elpy-module-eldoc elpy-module-pyvenv elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults)))
 '(markdown-command "pandoc")
 '(package-selected-packages
   (quote
	(gruvbox-theme expand-region ivy-hydra hydra yasnippets ivy-yasnippet yasnippet-snippets easy-kill hlinum airline-themes evil window-numbering which-key use-package undo-tree unbound solaire-mode smartparens rainbow-mode rainbow-delimiters py-autopep8 powerline neotree multiple-cursors markdown-mode magit helm-swoop helm-projectile git-gutter-fringe general flycheck fill-column-indicator f elpy doom-themes counsel-projectile anzu ace-window ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
