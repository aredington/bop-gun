(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 308 t)
 '(aquamacs-scratch-file nil)
 '(aquamacs-tool-bar-user-customization nil t)
 '(c-basic-offset 2)
 '(cider-inject-dependencies-at-jack-in nil)
 '(cider-jack-in-auto-inject-clojure nil)
 '(cider-lein-parameters "repl :headless :host ::")
 '(confirm-kill-emacs nil)
 '(debug-on-error t)
 '(default-frame-alist
    (quote
     ((menu-bar-lines . 0)
      (tool-bar-lines . 0)
      (fringe)
      (right-fringe)
      (left-fringe . 1)
      (internal-border-width . 0)
      (cursor-type . box)
      (background-color . "#000000")
      (background-mode . dark)
      (border-color . "#000000")
      (cursor-color . "#FFA560")
      (foreground-color . "#F6F3E8")
      (mouse-color . "sienna1"))))
 '(global-auto-complete-mode t)
 '(global-linum-mode t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(inferior-lisp-program "lein repl")
 '(initial-buffer-choice t)
 '(javascript-indent-level 4)
 '(js-indent-level 4)
 '(json-reformat:indent-width 2)
 '(line-number-mode nil)
 '(magit-commit-arguments nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(ns-tool-bar-display-mode (quote both) t)
 '(ns-tool-bar-size-mode nil t)
 '(package-selected-packages
   (quote
    (clojure-mode cider json-reformat exec-path-from-shell sayid pinentry queue)))
 '(rspec-rake-command "/usr/bin/env rake")
 '(rspec-use-rvm t)
 '(save-abbrevs nil)
 '(show-scratch-buffer-on-startup nil)
 '(show-trailing-whitespace t)
 '(tab-width 1)
 '(textmate-mode t)
 '(tool-bar-mode nil)
 '(visual-line-mode nil t))

;; Select the color theme
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "#F6F3E8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Monaco"))))
 '(Custom-mode-default ((t (:inherit autoface-default :height 120 :family "Monaco"))) t))
