;; enable paredit mode for clojure hook
(defun lisp-enable-paredit-hook () (paredit-mode 1))
(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2))
