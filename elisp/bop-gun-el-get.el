(setq el-get-sources
      '(ack ruby-mode el-expectations clojure-mode color-theme
	(:name smex
	       :type git
	       :url "https://github.com/nonsequitur/smex.git")
	(:name rvm.el
	       :type git
	       :url "https://github.com/senny/rvm.el.git")
	(:name rspec-mode
	       :type git
	       :url "https://github.com/aredington/rspec-mode.git")
	(:name paredit
	       :after (lambda () (add-hook 'clojure-mode-hook 'lisp-enable-paredit-hook)))
	(:name color-theme-ir-black 
	       :type git 
	       :url "git://github.com/burke/color-theme-ir-black.git")
	))
(el-get 'sync)
