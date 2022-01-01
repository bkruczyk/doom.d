;;; lang/clj/autoloads.el -*- lexical-binding: t; -*-


;;;###autoload
(defun +clojure/repl (&optional classpath)
  "Starts plain Clojure REPL with inf-clojure, possibly using project's classpath."
  (interactive "P")
  (setq-local inf-clojure-custom-repl-type 'clojure)
  (cond ((consp classpath)
         (inf-clojure "clojure"))
        ((stringp classpath)
         (inf-clojure (format "clojure -Scp %s" classpath)))
        (t (inf-clojure (+clojure/proc-with-classpath-maybe)))))

;;;###autoload
(defun +clojure/proc-with-classpath-maybe ()
  "Return Clojure process command, possibly including classpath if started from Lein project."
  (let ((cp (shell-command-to-string "lein classpath")))
    (if (string-match-p (regexp-quote "Couldn't find project.clj, which is needed for classpath") cp)
        "clojure"
      (format "clojure -Scp %s" cp))))

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
