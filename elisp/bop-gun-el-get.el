(setq el-get-sources
      '((:name dash
	       :type git
	       :url "https://github.com/magnars/dash.el.git"
	       :after (progn
			(require 'dash)))
	(:name s
	       :type git
	       :url "https://github.com/magnars/s.el.git"
	       :after (progn
			(require 's)))
	(:name pkg-info
	       :type git
	       :url "https://github.com/lunaryorn/pkg-info.el.git"
	       :after (progn 
			(require 's)
			(require 'dash)
			(require 'pkg-info)))
	(:name git-commit-mode
	       :type git
	       :url "https://github.com/magit/git-modes.git"
	       :after (progn 
			(require 'git-commit-mode)))
	(:name popup-el
	       :type git
	       :url "https://github.com/auto-complete/popup-el.git"
	       :after (progn
			(require 'popup)))
	(:name auto-complete
	       :type git
	       :url "https://github.com/auto-complete/auto-complete.git")
        (:name cucumber.el
               :type git
               :url "https://github.com/michaelklishin/cucumber.el.git"
               :after (progn
                        (require 'feature-mode)
                        (feature-mode)))
        (:name slime
               :type elpa
               :after (progn
                        (require 'slime)))
        (:name highlight-symbol
               :after (progn
                        (require 'highlight-symbol)
                        (add-hook 'clojure-mode-hook 'highlight-symbol-mode)
                        (add-hook 'ruby-mode-hook 'highlight-symbol-mode)))
        (:name clojure-mode
               :type git
               :url "https://github.com/technomancy/clojure-mode.git"
               :after (progn
                        (require 'clojure-mode)))
        (:name kibit-mode
               :type git
               :url "https://github.com/aredington/kibit-mode.git"
               :after (progn
                        (require 'kibit-mode)
                        ;(add-hook 'clojure-mode-hook 'kibit-mode)
                        ;(add-hook 'clojure-mode-hook 'flymake-mode-on)
                        ))
        (:name smex
               :type git
               :url "https://github.com/nonsequitur/smex.git"
               :after (progn
                        (require 'smex)
                        (smex-initialize)))
        (:name coffee-mode
               :type git
               :url "https://github.com/defunkt/coffee-mode.git"
               :after (progn
                        (require 'coffee-mode)
                        (add-hook 'coffee-mode-hook 'coffee-custom)))
        (:name cl-lib
               :type http
               :url "https://raw.github.com/emacsmirror/cl-lib/master/cl-lib.el"
               :after (progn (require 'cl-lib)))
        (:name magit
               :type git
               :url "https://github.com/magit/magit.git"
               :after (progn
                        (require 'magit)))
        (:name pir-mode
               :type http
               :url "https://raw.github.com/parrot/parrot/master/editor/pir-mode.el"
               :after (progn
                        (autoload 'pir-mode "pir-mode" nil t)
                        (add-to-list 'auto-mode-alist '("\\.pir\\'" . pir-mode))))
        (:name pasm
               :type http
               :url "https://raw.github.com/parrot/parrot/master/editor/pasm.el"
               :after (progn
                        (autoload 'pasm "pasm" nil t)
                        (add-to-list 'auto-mode-alist '("\\.pasm\\'" . pasm))))
        (:name rvm
               :type git
               :url "https://github.com/senny/rvm.el.git"
               :after (progn
                        (require 'rvm)
                        (rvm-autodetect-ruby)))
        (:name rspec-mode
               :type git
               :url "https://github.com/pezra/rspec-mode.git"
               :after (progn (require 'rspec-mode)))
        (:name ruby-electric
               :type git
               :url "https://github.com/aredington/ruby-electric.git"
               :after (progn (require 'ruby-electric)))
        (:name paredit
               :after (progn
                        (require 'paredit)
                        (add-hook 'clojure-mode-hook 'lisp-enable-paredit-hook)))
        (:name color-theme-ir-black
               :type git
               :url "git://github.com/burke/color-theme-ir-black.git"
               :after (progn nil))

        (:name textmate
               :type git
               :url "https://github.com/defunkt/textmate.el.git"
               :after (progn
                        (require 'textmate)
                        (textmate-mode)
                        (define-key *textmate-mode-map* [(control c)(control k)] nil)))))
(setq bopgun-packages
      (append
       (mapcar 'el-get-source-name el-get-sources)
       '(ack ruby-mode el-expectations
             color-theme
             haml-mode flymake-ruby sass-mode yaml-mode autopair markdown-mode js2-mode auto-complete nrepl)))

(el-get 'sync bopgun-packages)
