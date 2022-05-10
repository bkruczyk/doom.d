;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;;; Notes

;; M-m back-to-indentation!

;;; doom
(setq doom-font (font-spec :family "JetBrains Mono" :size 15))
(setq doom-theme 'doom-one)

;;; org-mode
(setq org-directory "~/org/")
(setq org-log-done 'time)

;;; evil
(map! :i "C-h" #'evil-delete-backward-char)
(map! :i "C-k" #'kill-line)
(map! :n "]p" #'evil-collection-unimpaired-paste-below)
(map! :n "[p" #'evil-collection-unimpaired-paste-above)

(setq +evil-want-o/O-to-continue-comments nil)
