(require 'doom-themes)
(require 'solaire-mode)

;(load-theme 'gruvbox-dark-hard t)
(solaire-mode-swap-bg)

;(set-face-attribute 'default t :font "Iosevka Term" :height 110)
(add-to-list 'default-frame-alist
                       '(font . "Iosevka Term-11"))

;; Disable GUI elements
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq-default sp-highlight-pair-overlay nil)
(setq-default sp-highlight-wrap-overlay nil)
(setq-default sp-highlight-wrap-tag-overlay nil)

(setq-default left-fringe-width 8)
(setq-default right-fringe-width 0)


;; Set git fringe bitmaps to vertical bars
(fringe-helper-define 'git-gutter-fr:added '(top repeat)
  "XXXX....")

(fringe-helper-define 'git-gutter-fr:deleted '(top repeat)
  "XXXX....")

(fringe-helper-define 'git-gutter-fr:modified '(top repeat)
  "XXXX....")
