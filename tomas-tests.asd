(in-package :asdf-user)
(defsystem "tomas-tests"
  :description "Test suite for the tomas system"
  :author "chu <chufilthymutt@gmail.com>"
  :version "0.0.1"
  :depends-on (:tomas
               :fiveam)
  :license "BSD"
  :serial t
  :components ((:module "tests"
                        :serial t
                        :components ((:file "packages")
                                     (:file "test-tomas"))))

  ;; The following would not return the right exit code on error, but still 0.
  ;; :perform (test-op (op _) (symbol-call :fiveam :run-all-tests))
  )
