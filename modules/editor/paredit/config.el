;;; paredit/config.el -*- lexical-binding: t; -*-

(use-package! paredit
  :hook ((lisp-mode . paredit-mode)
         (emacs-lisp-mode . paredit-mode)
         (clojure-mode . paredit-mode)
         (inf-clojure . paredit-mode)
         (racket-mode . paredit-mode))
  :config
  (add-hook 'paredit-mode-hook #'turn-off-smartparens-mode)
  (after! evil
    (map! :map paredit-mode-map :i "C-h" #'paredit-backward-delete)
    (map! :map paredit-mode-map :i "C-w" #'paredit-backward-kill-word)
    (map! :map paredit-mode-map :n "x"   #'paredit-forward-delete)
    (map! :map paredit-mode-map :i "C-j" #'paredit-newline)
    (map! :map paredit-mode-map :i "C-k" #'paredit-kill)
    (map! :map paredit-mode-map :n "C"   #'+paredit/evil-change-line)
    (map! :map paredit-mode-map "M-l" #'paredit-forward-slurp-sexp)
    (map! :map paredit-mode-map "M-h" #'paredit-forward-barf-sexp)))
