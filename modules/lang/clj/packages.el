;; -*- no-byte-compile: t; -*-
;;; lang/clj/packages.el

(package! clojure-mode :pin "e1dc7caee76d117a366f8b8b1c2da7e6400636a8")
(when (featurep! :checkers syntax)
  (package! flycheck-clj-kondo :pin "a558bda44c4cb65b69fa53df233e8941ebd195c5"))
