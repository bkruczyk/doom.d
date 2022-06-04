;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;;; Notes

;; Emacs
;; M-m     | back-to-indentation!
;; C-x +   | balance windows
;; C-x C-o | delete blank lines
;;
;; bury-buffer
;; list-matching-lines
;; goal-column
;;
;; Vim
;; _      | does the same in Vim normal mode
;; g;     | (Vim) jump to the place of last edit

;;; doom
(setq doom-font (font-spec :family "JetBrains Mono" :size 12))
(setq doom-theme 'doom-solarized-dark-high-contrast)
(setq doom-themes-enable-bold nil)
(setq doom-themes-enable-italic nil)

(map! :nvi "s-<return>" #'toggle-frame-maximized)

;;; decent settings for non-doom themes like modus-operandi and modus-vivendi
(doom-themes-set-faces nil
  '(fringe :background nil)
  '(line-number :background nil)
  '(line-number-current-line :inherit 'hl-line :background nil))

;; org-mode
(setq org-directory "~/org/")
(setq org-log-done 'time)

;;; evil
(map! :i "C-h" #'evil-delete-backward-char)
(map! :i "C-k" #'kill-line)
(map! :n "]p" #'evil-collection-unimpaired-paste-below)
(map! :n "[p" #'evil-collection-unimpaired-paste-above)

(setq +evil-want-o/O-to-continue-comments nil)
