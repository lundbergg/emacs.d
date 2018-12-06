(require 'use-package)

;; Always ensure that packages exist in system.
(setq use-package-always-ensure t)

(use-package ace-window
  :config
  (setq aw-dispatch-always t))
(use-package ace-jump-mode
  :config
  (ace-jump-mode-enable-mark-sync))
(use-package all-the-icons)
(use-package anzu
  :config
  (global-anzu-mode t))
(use-package avy)
(use-package company
  :init
  (global-company-mode t))
(use-package counsel)
(use-package counsel-projectile
  :config
  (counsel-projectile-mode))
(use-package dash)
(use-package gruvbox-theme
  :after (linum hlinum git-gutter-fringe ace-window)
  :config
  (load-theme 'gruvbox-dark-hard t)
  (set-face-attribute 'linum nil :background (face-attribute 'default :background))
  (set-face-attribute 'linum-highlight-face nil :background (face-attribute 'default :background))
  (set-face-attribute 'aw-leading-char-face nil :height 1.0)
  (set-face-attribute 'git-gutter-fr:added nil :background (face-attribute 'default :background))
  (set-face-attribute 'git-gutter-fr:deleted nil :background (face-attribute 'default :background))
  (set-face-attribute 'git-gutter-fr:modified nil :background (face-attribute 'default :background))
  (set-face-attribute 'aw-background-face nil :foreground "gray40"))
(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t)
  (setq doom-themes-enable-italic t)
  (doom-themes-visual-bell-config)
  (doom-themes-org-config)
  (doom-themes-neotree-config))
(use-package evil) ; Used for modeline
(use-package easy-kill)
(use-package expand-region
  :config
  (setq expand-region-smart-cursor t))
(use-package f)
(use-package fill-column-indicator)
(use-package flycheck
  :config
  (add-hook 'elpy-mode-hook 'flycheck-mode))
(use-package general)
(use-package git-gutter-fringe
  :init
  (global-git-gutter-mode))
(use-package helm
  :init
  (progn ;; Ugly
    (require 'helm-config)
    (setq helm-candidate-number-limit 100)
    ;; From https://gist.github.com/antifuchs/9238468
    (setq helm-idle-delay 0.0 ; update fast sources immediately (doesn't).
          helm-input-idle-delay 0.01  ; this actually updates things
                                      ; reeeelatively quickly.
          helm-yas-display-key-on-candidate t
          helm-quick-update t
          helm-M-x-requires-pattern nil
          helm-ff-skip-boring-files t)
    (helm-mode)))
(use-package helm-projectile)
(use-package helm-swoop)
(use-package hlinum
  :config
  (hlinum-activate))
(use-package hydra)
(use-package ivy
  :config
  (setq ivy-re-builders-alist ; Set completion style
        '((t . ivy--regex-ignore-order)))
  (setq ivy-height 25)
  (setq ivy-height-alist nil))
(use-package ivy-hydra)
(use-package markdown-mode)
(use-package magit)
(use-package multiple-cursors)
(use-package neotree
  :init
  (setq neo-window-width 25)
  (setq neo-smart-open t))
(use-package powerline)
(use-package projectile)
(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))
(use-package rainbow-mode)
(use-package s)
(use-package solaire-mode
  :config
  (add-hook 'change-major-mode-hook #'turn-on-solaire-mode)
  (add-hook 'ediff-prepare-buffer-hook #'solaire-mode)
  (add-hook 'minibuffer-setup-hook #'solaire-mode-in-minibuffer))
(use-package swiper)
(use-package smartparens
  :init
  (require 'smartparens-config)
  (add-hook 'prog-mode-hook 'smartparens-global-mode)
  (add-hook 'prog-mode-hook 'show-smartparens-global-mode))
(use-package undo-tree
  :config
  (global-undo-tree-mode))
(use-package which-key)
(use-package window-numbering
  :init
  (window-numbering-mode t))

;; Python
(use-package elpy
  :config
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (elpy-enable))
(use-package py-autopep8
  :config
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save))

;; Snippets
(use-package yasnippet
  :config
  (yas-global-mode 1))
(use-package yasnippet-snippets)
(use-package ivy-yasnippet)
