;;; paredit/config.el -*- lexical-binding: t; -*-

(use-package! paredit
  :config
  (map! :map paredit-mode-map :i "C-h" #'paredit-backward-delete)
  (map! :map paredit-mode-map :i "C-w" #'paredit-backward-kill-word)
  (map! :map paredit-mode-map :n "x"   #'paredit-forward-delete)
  (map! :map paredit-mode-map :i "C-j" #'paredit-newline))
