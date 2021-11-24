;;; paredit/config.el -*- lexical-binding: t; -*-

(use-package! paredit
  :init
  (remove-hook! 'doom-first-buffer-hook #'smartparens-global-mode)
  (remove-hook! 'racket-mode-hook #'racket-smart-open-bracket-mode)
  :config
  (add-hook! 'emacs-lisp-mode-hook #'enable-paredit-mode)
  (add-hook! 'racket-mode-hook #'enable-paredit-mode)
  (add-hook! 'clojure-mode-hook #'enable-paredit-mode)
  (map! :map paredit-mode-map :i "C-h" #'paredit-backward-delete)
  (map! :map paredit-mode-map :i "C-w" #'paredit-backward-kill-word)
  (map! :map paredit-mode-map :n "x"   #'paredit-forward-delete))
