;;; lang/clj/autoloads.el -*- lexical-binding: t; -*-


;;;###autoload
(defun +clojure/repl (&optional classpath)
  "Starts REPL with inf-clojure, possibly for the project."
  (interactive "P")
  (setq-local inf-clojure-custom-repl-type 'clojure)
  (cond ((consp classpath)
         (inf-clojure "clojure"))
        ((stringp classpath)
         (inf-clojure (format "clojure -Scp %s" classpath)))
        (t (inf-clojure (+clojure/project-repl)))))

;;;###autoload
(defun +clojure/project-repl ()
  "Run REPL for the project, depending on projectile-project-type."
  (let ((project-type (symbol-name (projectile-project-type))))
    (if (string-match-p "lein.*" project-type)
        "lein repl"
      "clojure")))

;;;###autoload
(defun +clojure/socket-repl (&optional port)
  "Start socket REPL and connect to it."
  (interactive "P")
  (let ((p (or port 5555)))
    (unless (comint-check-proc "*socket-repl*")
      (progn
        (make-comint "socket-repl" "clojure" nil (format "-J-Dclojure.server.repl={:port %d :accept clojure.core.server/repl}" p))
        ;; hack for JVM startup time
        (sleep-for 2)))
    (setq-local inf-clojure-custom-repl-type 'clojure)
    (inf-clojure (cons "localhost" p))))
