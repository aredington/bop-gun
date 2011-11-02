;; Set config options
(setq save-abbrevs nil)
(setq js-indent-level 2)
(setq tab-width 1)
(setq c-basic-offset 2)
(setq-default indent-tabs-mode nil)
(setq javascript-indent-level 2)
(setq inferior-lisp-program "java -cp /Users/alex/clojure-core/clojure/clojure.jar clojure.main")
(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))
(setq make-backup-files nil)
(add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 210 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(confirm-kill-emacs nil)
 '(debug-on-error t)
 '(global-linum-mode t)
 '(initial-buffer-choice t)
 '(line-number-mode nil)
 '(ns-tool-bar-display-mode nil t)
 '(ns-tool-bar-size-mode nil t)
 '(rspec-rake-command "/usr/bin/env rake")
 '(rspec-use-rvm t)
 '(show-trailing-whitespace t)
 '(visual-line-mode nil t))

;; Kill excess UI
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'tabbar-mode) (tabbar-mode t))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (and (fboundp 'menu-bar-mode)
         (not window-system))
    (menu-bar-mode t))
;; Don't go opening new frames
(if (featurep 'aquamacs)
    (one-buffer-one-frame-mode 0))

;; start up globally desirable minor modes
(ido-mode)

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

;; Select the color theme
(color-theme-ir-black)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
