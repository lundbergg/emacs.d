(require 'general)
(general-define-key
 :keymaps 'override

 ;; Ace-jump
 "C-c SPC" 'ace-jump-mode
 "C-x SPC" 'ace-jump-mode-pop-mark
 "M-o"     'ace-window
 )


(general-define-key
 ;; replace default keybindings

 "C-c p"   'projectile-command-map
 
 "C-<tab>" 'ivy-yasnippet
 "C-x b"   'ivy-switch-buffer

 "C-."     'er/expand-region

 ;; Ivy/Counsel
 "C-s"     'swiper  ; search for string in current buffer
 "M-x"     'counsel-M-x  ; replace default M-x with ivy backend
 "C-x C-f" 'counsel-find-file  ; use counsel for finding files
 "<f1> f"  'counsel-describe-function
 "<f1> v"  'counsel-describe-variable
 "<f1> l"  'counsel-find-library
 "<f2> i"  'counsel-info-lookup-symbol
 "<f2> u"  'counsel-unicode-char

 "C-c g"   'counsel-git
 "C-c j"   'counsel-git-grep
 "C-c k"   'counsel-git-ag
 "C-x l"   'counsel-locate
 "C-S-o"   'counsel-rhythmbox

 "C-c C-r" 'ivy-resume

 ;; Scroll
 "C-v"     'zz-scroll-half-page-down
 "M-v"     'zz-scroll-half-page-up

 ;; Kill
 [remap kill-ring-save] 'easy-kill
 [remap mark-sexp]      'easy-mark
 )

(general-define-key
  :prefix "<f5>"
  "" nil ; Unbind prefix key

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
  "bu"  'undo-tree-visualize

  ;; Comment/Compile
  "c"   '(:ignore t :which-key "Comment/Compile")
  "cl"  'comment-line

  ;; Errors
  "e"   '(:ignore t :which-key "Error")
  "ec"  'flycheck-clear-errors
  "en"  'flycheck-next-error
  "ep"  'flycheck-previous-error

  ;; Files
  "f"   '(:ignore t :which-key "File")
  "ff"  'counsel-find-file  ; find file using helm
  "fl"  'counsel-locate ; find file using mlocate
  "fr"	'counsel-recentf  ; find recently edited files

  ;; Help
  "h"   '(:ignore t :which-key "Help")
  "hk"  'counsel-descbinds
  "ho"  'counsel-ace-link

  ;; Projects
  "p"   '(:ignore t :which-key "Project")
  "pb"  'counsel-projectile-switch-to-buffer  ; switch buffer in project
  "pd"  'counsel-projectile-find-dir
  "pf"  'counsel-projectile-find-file  ; find file in project
  "pp"  'counsel-projectile-switch-project  ; switch to projects
  "ps"  '(:ignore t :which-key "Search")
  "psg" 'counsel-projectile-grep
  "pss" 'counsel-projectile-ag
  "psr" 'counsel-projectile-rg

  ;; Quit
  "q"   '(:ignore t :which-key "Emacs")
  "qq"  'save-buffers-kill-terminal ; exit emacs

  ;; Search
  "s"   '(:ignore t :which-key "Search")
  "ss"  'swiper  ; search for string in current buffer
  "sp"  'helm-multi-swoop-projectile  ; search in all open project buffers
  "si"  'counsel-semantic-or-imenu ; search with tags or imenu if no tags exist

  ;; Toggles
  "t"   '(:ignore t :which-key "Toggle")
  "tf"  'fci-mode
  "tF"  'auto-fill-mode
  "tK"  'which-key-mode
  "tl"  'linum-mode
  "tn"  'neotree-toggle
  "ts"  'flycheck-mode
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
  "xc"  'mc/edit-lines
  "xs"  'sort-lines  ; sort selection
  "xy"  'counsel-yank-pop
  "xd"  '(:ignore t :which-key "Delete")
  "xdw" 'delete-trailing-whitespace
  "xr"  '(:ignore t :which-key "Replace")
  "xrr" 'helm-regexp
  "xrs" 'replace-string
  "xrq" 'query-replace
  )

(general-define-key
 :prefix "<f6>"
 "" nil ; Unbind prefix key

 ;; Magit
 "b"  'magit-blame-popup
 "c"  'magit-commit-popup
 "C"  'magit-checkout
 "d"  'magit-diff-popup
 "f"  'magit-fetch-popup
 "i"  'magit-init
 "I"  'magit-gitignore
 "l"  'magit-log-popup
 "F"  'magit-pull-popup
 "P"  'magit-push-popup
 "s"  'magit-status
 "S"  'magit-stage-file
 "U"  'magit-unstage-fil
  )
