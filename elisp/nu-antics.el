(with-eval-after-load 'cider
  (setq cider-test-infer-test-ns #'(lambda (ns)
                                             (when ns
                                               (if (or (string-prefix-p "postman." ns)
                                                       (string-prefix-p "integration." ns))
                                                   ns
                                                 (cider-test-default-test-ns-fn ns))))))
