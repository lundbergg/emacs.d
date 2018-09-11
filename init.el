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
 '(markdown-command "pandoc")
 '(package-selected-packages
   (quote
    (lua-mode multiple-cursors flycheck jedi py-autopep8 autopep8 elpy neotree rust-mode ace-window doom-themes doom-theme eldoc-eval golden-ratio powerline-evil evil-powerline fill-column-indicator git-gutter evil-magit magit rainbow-delimiters smartparens evil-multiedit all-the-icons ess auto-complete helm-config window-numbering window-number rainbow-mode markdown-mode markdowm-mode f dash avy helm-swoop helm-projectile helm counsel-projectile projectile powerline evil which-key swiper general use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
