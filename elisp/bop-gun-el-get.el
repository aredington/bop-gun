(setq el-get-sources
      '(ack ruby-mode el-expectations clojure-mode color-theme haml-mode flymake-ruby slime sass-mode autopair
        (:name highlight-symbol
               :after (lambda ()
                        (require 'highlight-symbol)
                        (add-hook 'clojure-mode-hook 'highlight-symbol-mode)
                        (add-hook 'ruby-mode-hook 'highlight-symbol-mode)))
	(:name smex
	       :type git
	       :url "https://github.com/nonsequitur/smex.git"
               :after (lambda ()
                        (require 'smex)
                        (smex-initialize)))
	(:name javascript
	       :type elpa)
        (:name coffee-mode
               :type git
               :url "https://github.com/defunkt/coffee-mode.git"
               :after (lambda ()
                        (require 'coffee-mode)
                        (add-hook 'coffee-mode-hook 'coffee-custom)))
	(:name magit
	       :type git
	       :url "https://github.com/philjackson/magit.git")
	(:name cucumber.el
	       :type git
	       :url "https://github.com/michaelklishin/cucumber.el.git"
               :after (lambda ()
                        (require 'feature-mode)
                        (feature-mode)))
	(:name rvm
	       :type git
	       :url "https://github.com/senny/rvm.el.git"
               :after (lambda ()
                        (require 'rvm)
                        (rvm-autodetect-ruby)))
	(:name rspec-mode
	       :type git
	       :url "https://github.com/pezra/rspec-mode.git")
	(:name ruby-electric
	       :type git
               :url "https://github.com/aredington/ruby-electric.git")
	(:name slime-repl
	       :type elpa
               :after (lambda () (require 'slime)))
	(:name paredit
	       :after (lambda ()
                        (require 'paredit)
                        (add-hook 'clojure-mode-hook 'lisp-enable-paredit-hook)))
	(:name color-theme-ir-black
	       :type git
	       :url "git://github.com/burke/color-theme-ir-black.git"
               :after (lambda ()
                        (require 'color-theme-ir-black)
                        (color-theme-ir-black)))
	(:name textmate
	       :type git
	       :url "https://github.com/defunkt/textmate.el.git"
               :after (lambda ()
                        (require 'textmate)
                        (textmate-mode)))
	(:name autocomplete
	       :type git
	       :url "https://github.com/m2ym/auto-complete.git"
               :after (lambda ()
                        (require 'auto-complete-config)
                        (ac-config-default)
                        (autopair-global-mode)))
	))
(el-get 'sync)


