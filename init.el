(when
    (load
     (expand-file-name "./elpa/package.el"))
  (package-initialize))
(add-to-list 'load-path "./el-get/el-get/")
(add-to-list 'load-path "./elisp/")
(require 'el-get)
(load "bop-gun-el-get")
(load "integrations")
(setq custom-file "~/.emacs.d/elisp/custom.el")
(load custom-file 'noerror)
