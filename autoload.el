;;; autoload.el -*- lexical-binding: t; -*-

;;; evil-collection
;;; https://github.com/emacs-evil/evil-collection/commit/9be3805b60d03fc6e0d45cb3decb5c6703395cf4


;;;###autoload
(defun evil-collection-unimpaired-paste-above ()
   "Paste above current line with preserving indentation."
   (interactive)
   (let ((indent (current-indentation))
         (column (current-column)))
     (evil-insert-newline-above)
     (indent-to indent)
     (evil-paste-after 1)
     (move-to-column column)))

;;;###autoload
 (defun evil-collection-unimpaired-paste-below ()
   "Paste below current line with preserving indentation."
   (interactive)
   (let ((indent (current-indentation))
         (column (current-column)))
     (evil-insert-newline-below)
     (indent-to indent)
     (evil-paste-after 1)
     (move-to-column column)))
