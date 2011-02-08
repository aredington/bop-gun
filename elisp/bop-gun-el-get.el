(setq el-get-sources
      '(ack ruby-mode el-expectations
	(:name smex
	       :type git
	       :url "https://github.com/nonsequitur/smex.git")
	(:name rspec-mode
	       :type git
	       :url "https://github.com/pezra/rspec-mode.git")
	))
(el-get 'sync)
