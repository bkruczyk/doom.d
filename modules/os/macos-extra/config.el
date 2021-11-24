;;; os/macos-extra/config.el -*- lexical-binding: t; -*-

(setq mac-right-option-modifier 'none
      mac-command-modifier      'meta
      mac-option-modifier       'alt)

;; MacOS does not populate env variables when Emacs is started in GUI
(use-package! exec-path-from-shell
  :init
  (exec-path-from-shell-initialize))
