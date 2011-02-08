(setq el-get-sources
      '(ack ruby-mode el-expectations clojure-mode
	(:name smex
	       :type git
	       :url "https://github.com/nonsequitur/smex.git")
	(:name rspec-mode
	       :type git
	       :url "https://github.com/pezra/rspec-mode.git")
	(:name paredit
	       :after (lambda () (add-hook 'clojure-mode-hook 'lisp-enable-paredit-hook)))
	))
(el-get 'sync)
