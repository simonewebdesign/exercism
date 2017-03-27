(defmodule accumulate
  (export (accumulate 2)))

(defun accumulate
  ((_ []) [])
  ((fun (cons head tail)) (cons (funcall fun head) (accumulate fun tail))))
