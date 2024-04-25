(setq bopgun-packages '(ack-and-a-half autopair auto-complete rust-mode
                                       queue coffee-mode color-theme color-theme-ir-black
                                       dash  el-expectations flymake-ruby haml-mode highlight-symbol js2-mode
                                       kibit-mode magit markdown-mode paredit pasm pir-mode rspec-mode
                                       rvm smex sass-mode textmate yaml-mode exec-path-from-shell lsp-mode lsp-ui))

(el-get 'sync bopgun-packages)
