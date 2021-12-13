;;; lang/clj/autoloads.el -*- lexical-binding: t; -*-


;;;###autoload
(defun +clojure-lein-repl ()
  (interactive)
  (let ((cp (shell-command-to-string "lein classpath")))
    (inf-clojure (format "clojure -Scp %s" cp))))

;;;###autoload
(defun +clojure-socket-repl ()
  "TODO add ability to define classpath, use comint for underlying clojure process"
  (interactive)
  (unless (comint-check-proc "*socket-repl*")
    (progn
      (message "Starting Clojure Socket REPL...")
      (start-process "clojure"
                     "*socket-repl*"
                     "clojure"
                     "-J-Dclojure.server.repl={:port 5555 :accept clojure.core.server/repl}")
      ;; hack for JVM startup time
      (sleep-for 2)))
  (inf-clojure (cons "localhost" 5555)))
