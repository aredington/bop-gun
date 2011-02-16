;; Set config options
(setq save-abbrevs nil)
(setq js-indent-level 2)

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
(textmate-mode)
(feature-mode)
(highlight-symbol-mode)
(smex-initialize)
(ac-config-default)
(rvm-autodetect-ruby)

;; custom keybindings
;; SMEX:
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Select the color theme
(color-theme-ir-black)
