(defmodule accumulate
  (export (accumulate 2)))

(defun accumulate
  ((_ []) [])
  ((func (cons head tail)) (cons (funcall func head) (accumulate func tail))))
