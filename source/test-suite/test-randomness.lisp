(in-package :caten/test-suite)
;; [TODO] Update thfeefry2x32 and compare the behaviour with the numpy (set-manual-seed 0)
(deftest compile-randn
  (ok (caten (!randn `(n))))
  (ok (caten (!randn `(a b)))))

(deftest compile-normal
  (ok (caten (!normal `(10 10)))))

(deftest test-with-inference-mode
  (with-inference-mode ()
    (ok (null (tensor-buffer (rand `(3 3) :requires-grad t))))))
