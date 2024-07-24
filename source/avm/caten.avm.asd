(asdf:defsystem "caten.avm"
  :description "avm = Abstract + VM"
  :author      "hikettei <ichndm@gmail.com>"
  :licence     "MIT"
  :depends-on ("caten.air" "caten.aasm")
  :serial t
  :components
  ((:file "package")
   (:file "buffer")
   (:file "runtime")
   (:file "helpers")
   (:file "lisp-backend"))
  :in-order-to ((test-op (asdf:test-op "caten.avm/test"))))

(asdf:defsystem "caten.avm/test"
  :depends-on
  ("rove" "caten.avm")
  :components
  ((:file "test-suites"))
  :perform
  (test-op (o s) (uiop:symbol-call (find-package :rove) :run-suite :caten/avm.test)))