;; enable paredit mode for clojure hook
(defun lisp-enable-paredit-hook () (paredit-mode 1))

(server-start)

(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2))

(defun untabify-buffer ()
 (interactive)
 (untabify (point-min) (point-max)))

(defun indent-buffer ()
 (interactive)
 (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
 "Perform a bunch of operations on the whitespace content of a buffer."
 (interactive)
 (indent-buffer)
 (untabify-buffer)
 (delete-trailing-whitespace))

(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")
     (when (not window-system)
       (set-face-background 'magit-item-highlight "black"))))

(require 'uniquify)
(setq
 uniquify-buffer-name-style 'post-forward
 uniquify-separator ":")
