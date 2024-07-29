(asdf:defsystem "caten.ajit"
  :description "Abstract JIT System"
  :author      "hikettei <ichndm@gmail.com>"
  :licence     "MIT"
  :depends-on ("trivia" "alexandria")
  :serial t
  :components
  ((:file "package")

   )
  :in-order-to ((test-op (asdf:test-op "caten.ajit/test"))))

(asdf:defsystem "caten.ajit/test"
  :depends-on
  ("rove" "caten.ajit")
  :components
  ((:file "test-suites"))
  :perform
  (test-op (o s) (uiop:symbol-call (find-package :rove) :run s :style :dot)))
