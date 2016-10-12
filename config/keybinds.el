(require 'general)

(general-define-key
 ;; replace default keybindings
 "C-s"     'swiper  ; search for string in current buffer
 "M-x"     'counsel-M-x  ; replace default M-x with ivy backend
 "C-x C-f" 'counsel-find-file  ; use counsel for finding files
 )

(general-define-key
  :states '(normal visual insert emacs)
  :prefix "SPC"
  :non-normal-prefix "M-m"

  ;; simple command
  "'"   '(iterm-focus :which-key "iterm")
  "?"   '(iterm-goto-filedir-or-home :which-key "iterm - goto dir")
  "SPC" '(avy-goto-word-or-subword-1  :which-key "go to char")
  ":"   'counsel-M-x

  "1"  'select-window-1
  "2"  'select-window-2
  "3"  'select-window-3
  "4"  'select-window-4
  "5"  'select-window-5

  ;; Applications
  "a" '(:ignore t :which-key "Applications")
  "ad" 'dired

  ;; Buffers
  "b"   '(:ignore t :which-key "Buffer")
  "bb"	'ivy-switch-buffer  ; change buffer using helm
  "be"	'eval-buffer
  "bk"  'kill-this-buffer  ; kill current buffer
  "br"	'revert-buffer

  ;; Comment/Compile
  "c"   '(:ignore t :which-key "Comment/Compile")
  "cl"  'comment-line

  ;; Files
  "f"   '(:ignore t :which-key "File")
  "ff"  'counsel-find-file  ; find file using helm
  "fr"	'counsel-recentf  ; find recently edited files

  ;; Magit
  "g"   '(:ignore t :which-key "Git")
  "gb"  'magit-blame-popup
  "gc"  'magit-commit-popup
  "gC"  'magit-checkout
  "gd"  'magit-diff-popup
  "gf"  'magit-fetch-popup
  "gl"  'magit-log-popup
  "gF"  'magit-pull-popup
  "gP"  'magit-push-popup
  "gs"  'magit-status
  "gS"  'magit-stage-file
  "gU"  'magit-unstage-fil

  ;; Help
  "h"   '(:ignore t :which-key "Help")
  "hk"  'counsel-descbinds

  ;; Projects
  "p"   '(:ignore t :which-key "Project")
  "pp"  'helm-projectile-switch-project  ; switch to projects
  "pf"  'helm-projectile-find-file  ; find file in project
  "pb"  'helm-projectile-switch-to-buffer  ; switch buffer in project

  ;; Quit
  "q"   '(:ignore t :which-key "Emacs")
  "qq"  'save-buffers-kill-terminal

  ;; Search
  "s"   '(:ignore t :which-key "Search")
  "ss"  'swiper  ; search for string in current buffer
  "sp"  'helm-multi-swoop-projectile  ; search in all open project buffers

  ;; Toggles
  "t"   '(:ignore t :which-key "Toggle")
  "tf"  'fci-mode
  "tg"  'golden-ratio-mode
  ;; "thh" '
  "tn"  'linum-mode
  "tF"  'auto-fill-mode
  "tK"  'which-key-mode
  "tt"  'toggle-truncate-lines
  "tw"  'whitespace-mode
  "tW"  'global-whitespace-mode
  "tT"  '(:ignore t :which-key "User Interface")
  "tTm" 'menu-bar-mode
  "tTt" 'tool-bar-mode
  "tTs" 'scroll-bar-mode
  "tC"  '(:ignore t :which-key "Color")
  "tCc" 'rainbow-mode

  ;; Window
  "w"   '(:ignore t :which-key "Window")
  "w-"  'split-window-vertically
  "w/"  'split-window-horizontally
  "wc"  'delete-window
  "wC"  'delete-other-windows
  "wb"  'balance-windows
  "ww"  'other-window
  ;; Text
  "x"   '(:ignore t :which-key "Text")
  "xs"  'sort-lines  ; sort selection
  "xy"  'counsel-yank-pop  ; sort selection
  "xd"  '(:ignore t :which-key "Delete")
  "xdw" 'delete-trailing-whitespace
  )
