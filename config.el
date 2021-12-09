;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Bartłomiej Kruczyk"
      user-mail-address "bartlomiej.kruczyk@gmail.com")

(setq display-line-numbers-type t)

;;; org-mode
(setq org-directory "~/org/")
(setq org-log-done 'time)

;;; doom

(setq doom-font (font-spec :family "Monaco" :size 12))
(setq doom-theme 'doom-one-light)

;;; evil
(map! :i "C-h" #'evil-delete-backward-char)

(when (featurep! :editor paredit)
  (add-hook! 'emacs-lisp-mode-hook #'enable-paredit-mode)
  (add-hook! 'racket-mode-hook #'enable-paredit-mode)
  (add-hook! 'clojure-mode-hook #'enable-paredit-mode))

(when IS-MAC
  (setq mac-right-option-modifier 'none
        mac-command-modifier      'meta
        mac-option-modifier       'alt))
