(setq el-get-sources
      '(ack ruby-mode el-expectations color-theme haml-mode flymake-ruby sass-mode yaml-mode autopair markdown-mode
            (:name slime
                   :type elpa
                   :after (lambda ()
                            (require 'slime)
                            (require 'slime-repl)))
            (:name highlight-symbol
                   :after (lambda ()
                            (require 'highlight-symbol)
                            (add-hook 'clojure-mode-hook 'highlight-symbol-mode)
                            (add-hook 'ruby-mode-hook 'highlight-symbol-mode)))
            (:name clojure-mode
                   :type git
                   :url "https://github.com/technomancy/clojure-mode.git"
                   :after (lambda ()
                            (require 'clojure-mode)))
            (:name kibit-mode
                   :type git
                   :url "https://github.com/aredington/kibit-mode.git"
                   :after (lambda ()
                            (require 'kibit-mode)
                            (add-hook 'clojure-mode-hook 'kibit-mode)))
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
                   :url "https://github.com/philjackson/magit.git"
                   :after (lambda ()
                            (require 'magit)))
            (:name cucumber.el
                   :type git
                   :url "https://github.com/michaelklishin/cucumber.el.git"
                   :after (lambda ()
                            (require 'feature-mode)
                            (feature-mode)))
            (:name pir-mode
                   :type http
                   :url "https://raw.github.com/parrot/parrot/master/editor/pir-mode.el"
                   :after (lambda ()
                            (autoload 'pir-mode "pir-mode" nil t)
                            (add-to-list 'auto-mode-alist '("\\.pir\\'" . pir-mode))))
            (:name pasm
                   :type http
                   :url "https://raw.github.com/parrot/parrot/master/editor/pasm.el"
                   :after (lambda ()
                            (autoload 'pasm "pasm" nil t)
                            (add-to-list 'auto-mode-alist '("\\.pasm\\'" . pasm))))
            (:name rvm
                   :type git
                   :url "https://github.com/senny/rvm.el.git"
                   :after (lambda ()
                            (require 'rvm)
                            (rvm-autodetect-ruby)))
            (:name rspec-mode
                   :type git
                   :url "https://github.com/pezra/rspec-mode.git"
                   :after (lambda () (require 'rspec-mode)))
            (:name ruby-electric
                   :type git
                   :url "https://github.com/aredington/ruby-electric.git"
                   :after (lambda () (require 'ruby-electric)))
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
                            (ac-config-default)))))
(el-get 'sync)
