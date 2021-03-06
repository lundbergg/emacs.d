(require 'recentf)

;; Backup
(setq delete-old-versions -1 )		; delete excess backup versions silently
(setq version-control t )		; use version control
(setq vc-make-backup-files t )		; make backups file even when in version controlled dir
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")) ) ; which directory to put backups file
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)) ) ;transform backups file name

;; History
(setq savehist-file "~/.emacs.d/savehist")
(savehist-mode 1)
(setq history-length 200)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))
(recentf-mode t)
(setq recentf-max-menu-items 25)

(setq linum-format "%d ")
(setq vc-follow-symlinks t )		; don't ask for confirmation when opening symlinked file
(setq inhibit-startup-screen t )	; inhibit useless and old-school startup screen
(setq ring-bell-function 'ignore )	; silent bell when you make a mistake
(setq coding-system-for-read 'utf-8 )	; use utf-8 by default
(setq coding-system-for-write 'utf-8 )
(setq sentence-end-double-space nil)	; sentence SHOULD end with only a point.
(setq default-fill-column 80)		; toggle wrapping text at the 80th character
(setq initial-scratch-message nil) ; print a default message in the empty scratch buffer opened at startup
(setq-default show-trailing-whitespace t)
(setq tramp-default-method "ssh")
(setq-default fringes-outside-margins t)
(pending-delete-mode t)

;; Window Split
(setq split-height-threshold nil)
(setq split-width-threshold 160)

;; Indentation
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(highlight-indentation-mode nil)

;; LaTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'prog-mode-hook 'linum-on)
(add-hook 'tex-mode-hook 'auto-fill-mode t)

(which-key-mode)
(projectile-global-mode)

(defalias 'yes-or-no-p 'y-or-n-p)

;; Add PDDL-mode if availible
(with-library PDDL-mode
  (add-to-list 'auto-mode-alist '("\\.pddl" . PDDL-mode))
  (add-hook 'PDDL-mode-hook (lambda () (run-hooks 'prog-mode-hook)))
  )
