(in-package :caten/aasm)

(define-page ("caten/aasm" "packages/caten.aasm.md")
  (title "caten/aasm")
  (body (node-build-documentation-by-class "UnaryOps" :UnaryOps))
  (body (node-build-documentation-by-class "BinaryOps" :BinaryOps))
  (body (node-build-documentation-by-class "TernaryOps" :TernaryOps))
  (body (node-build-documentation-by-class "Buffer" :Buffer))
  (body (node-build-documentation-by-class "Indexing" :INDEXING))
  (body (node-build-documentation-by-class "JIT Specific Ops" :JIT)))