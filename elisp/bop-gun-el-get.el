(setq el-get-sources
      '(ack ruby-mode
	(:name smex
	       :type git
	       :url "https://github.com/nonsequitur/smex.git"
	       :after (smex-initialize))
	))

(el-get)
