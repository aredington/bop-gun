(setq bopgun-packages '(ack autopair auto-complete rust-mode
                            cider spinner queue clojure-mode coffee-mode color-theme color-theme-ir-black
                            dash  el-expectations flymake-ruby haml-mode highlight-symbol js2-mode
                            kibit-mode magit markdown-mode paredit pasm pir-mode rspec-mode
                            rvm sass-mode smex textmate yaml-mode))

(el-get 'sync bopgun-packages)
