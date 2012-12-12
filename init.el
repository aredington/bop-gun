(when
    (load
     (expand-file-name "~/bop-gun/elpa/package.el"))
  (package-initialize))
(add-to-list 'load-path "~/bop-gun/el-get/el-get/")
(add-to-list 'load-path "~/bop-gun/elisp/")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(load "bop-gun-el-get")
(load "integrations")

(setq custom-file "~/.emacs.d/elisp/custom.el")
(load custom-file)

;; Set config options
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.dtm$" . clojure-mode))
(add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t)))
(add-hook 'clojure-mode-hook (lambda ()
                               (local-set-key (kbd "C-c )") 'paredit-forward-barf-sexp)
                               (local-set-key (kbd "C-c (") 'paredit-forward-slurp-sexp)))

;; Kill excess UI
(if (fboundp 'tabbar-mode) (tabbar-mode t))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (and (fboundp 'menu-bar-mode)
         (not window-system))
    (menu-bar-mode nil))
;; Don't go opening new frames
(if (featurep 'aquamacs)
    (one-buffer-one-frame-mode 0))

(menu-bar-mode -1)
(show-paren-mode t)
(require 'auto-complete)
(global-auto-complete-mode t)
;; custom keybindings
;; SMEX:
(global-set-key (kbd "A-o") 'ido-find-file)
(global-set-key (kbd "A-b") 'ido-switch-buffer)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(global-set-key (kbd "C-c n") 'cleanup-buffer)
(global-set-key (kbd "M-/") 'hippie-expand)

(put 'upcase-region 'disabled nil)
;; Doesn't play nice with swank, paredit covers this anyway
;; (autopair-global-mode)
