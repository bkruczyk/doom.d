;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;;; Notes

;; M-m   back-to-indentation!
;; _     does the same in Vim normal mode

;;; doom
(setq doom-font (font-spec :family "Roboto Mono" :size 14))
(setq doom-theme 'doom-solarized-dark-high-contrast)
(setq doom-themes-enable-bold nil)
(setq doom-themes-enable-italic nil)

;;; decent settings for non doom themes like modus-operandi and modus vivendi
(doom-themes-set-faces nil
  '(fringe :background nil)
  '(line-number :background nil)
  '(line-number-current-line :inherit 'hl-line :background nil))

;;; org-mode
(setq org-directory "~/org/")
(setq org-log-done 'time)

;;; evil
(map! :i "C-h" #'evil-delete-backward-char)
(map! :i "C-k" #'kill-line)
(map! :n "]p" #'evil-collection-unimpaired-paste-below)
(map! :n "[p" #'evil-collection-unimpaired-paste-above)

(setq +evil-want-o/O-to-continue-comments nil)
