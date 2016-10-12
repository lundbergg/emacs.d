
(add-to-list 'custom-theme-load-path "~/.emacs.d/config/themes/")

(require 'doom-themes)
(load-theme 'doom-one t)

(add-to-list 'default-frame-alist '(font . "Office Code Pro-10" ))
(set-face-attribute 'default t :font "Office Code Pro-10" )

(setq-default sp-highlight-pair-overlay nil)
(setq-default sp-highlight-wrap-overlay nil)
(setq-default sp-highlight-wrap-tag-overlay nil)

;; (set-face-foreground 'git-gutter-fr:modified "yellow")
;; (set-face-foreground 'git-gutter-fr:added    "blue")
;; (set-face-foreground 'git-gutter-fr:deleted  "white")

;; Set git fringe bitmaps to vertical bars
(fringe-helper-define 'git-gutter-fr:added nil
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX.....")

(fringe-helper-define 'git-gutter-fr:deleted nil
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX.....")

(fringe-helper-define 'git-gutter-fr:modified nil
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX....." "XXX....."
  "XXX....." "XXX.....")
