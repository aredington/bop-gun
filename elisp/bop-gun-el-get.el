(setq bopgun-packages '(ack-and-a-half autopair auto-complete rust-mode
                                       cider spinner queue clojure-mode coffee-mode color-theme color-theme-ir-black
                                       dash  el-expectations flymake-ruby haml-mode highlight-symbol js2-mode
                                       kibit-mode magit markdown-mode paredit parseedn pasm pir-mode rspec-mode
                                       rvm smex sass-mode sesman textmate yaml-mode exec-path-from-shell))

(el-get 'sync bopgun-packages)
