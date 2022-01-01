;;; editor/paredit/autoload.el -*- lexical-binding: t; -*-

;;;###autoload
(defun +paredit/evil-change-line ()
  "Works like evil-change-line but for the sexp."
  (interactive)
  (progn
    (paredit-kill)
    (evil-insert 0)))
