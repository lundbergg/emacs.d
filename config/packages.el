(require 'use-package)

;; Always ensure that packages exist in system.
(setq use-package-always-ensure t)

(use-package all-the-icons)
(use-package anzu
  :config
  (global-anzu-mode t))
(use-package avy)
(use-package company
  :init
  (global-company-mode t))
(use-package counsel)
(use-package dash)
(use-package ess)
(use-package evil)
(use-package evil-anzu)
(use-package evil-multiedit)
(use-package f)
(use-package general)
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
(use-package ivy)
(use-package markdown-mode)
(use-package magit)
(use-package evil-magit)
(use-package powerline)
(use-package projectile)
(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))
(use-package rainbow-mode)
(use-package s)
(use-package smartparens
  :init
  (require 'smartparens-config)
  (add-hook 'prog-mode-hook 'smartparens-global-mode)
  (add-hook 'prog-mode-hook 'show-smartparens-global-mode))
(use-package which-key)
(use-package window-numbering
  :init
  (window-numbering-mode t))
