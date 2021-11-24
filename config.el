;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Bartłomiej Kruczyk"
      user-mail-address "bartlomiej.kruczyk@gmail.com")

(setq display-line-numbers-type t)

(setq org-directory "~/org/")
(setq org-log-done 'time)

;;;

(setq doom-font (font-spec :family "Inconsolata" :size 14))
(setq doom-theme 'doom-one-light)

(map! :i "C-h" #'evil-delete-backward-char)
