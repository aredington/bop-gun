(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
(add-to-list 'load-path "~/.emacs.d/el-get/el-get/")
(add-to-list 'load-path "~/.emacs.d/elisp/")
(require 'el-get)
(load "integrations")
(load "bop-gun-el-get")
(require 'auto-complete-config)
(require 'color-theme-ir-black)
(load "custom")
