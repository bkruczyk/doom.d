;;; lang/clj/config.el -*- lexical-binding: t; -*-

(after! projectile
  (pushnew! projectile-project-root-files "project.clj" "build.boot" "deps.edn"))

;; Large clojure buffers tend to be slower than large buffers of other modes, so
;; it should have a lower threshold too.
(add-to-list 'doom-large-file-size-alist '("\\.\\(?:clj[sc]?\\|dtm\\|edn\\)\\'" . 0.5))

;;
;;; Packages

(use-package! clojure-mode
  :hook (clojure-mode . rainbow-delimiters-mode))
(use-package! inf-clojure)
(use-package! flycheck-clj-kondo
  :when (featurep! :checkers syntax)
  :after flycheck)
