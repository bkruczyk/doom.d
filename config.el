;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;;; doom
(setq display-line-numbers-type nil)
(setq doom-font (font-spec :family "Monaco" :size 12))
(setq doom-theme 'doom-one-light)

;;; org-mode
(setq org-directory "~/org/")
(setq org-log-done 'time)

;;; evil
(map! :i "C-h" #'evil-delete-backward-char)
(map! :i "C-k" #'kill-line)
(setq +evil-want-o/O-to-continue-comments nil)

;;; paredit
(when (featurep! :editor paredit)
  (add-hook! 'emacs-lisp-mode-hook #'enable-paredit-mode)
  (add-hook! 'racket-mode-hook     #'enable-paredit-mode)
  (add-hook! 'clojure-mode-hook    #'enable-paredit-mode))
