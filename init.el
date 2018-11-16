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
(load-library "theming.el")
(load-library "modeline.el")

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
    ("a94f1a015878c5f00afab321e4fef124b2fc3b823c8ddd89d360d710fc2bddfc" default)))
 '(global-display-line-numbers-mode nil)
 '(markdown-command "pandoc")
 '(package-selected-packages
   (quote
    (yasnippets ivy-yasnippet yasnippet-snippets easy-kill hlinum airline-themes evil window-numbering which-key use-package undo-tree unbound solaire-mode smartparens rainbow-mode rainbow-delimiters py-autopep8 powerline neotree multiple-cursors markdown-mode magit helm-swoop helm-projectile golden-ratio git-gutter-fringe general flycheck fill-column-indicator f elpy doom-themes counsel-projectile anzu ace-window ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
