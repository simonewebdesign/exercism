(defmodule leap
  (export (leap-year 1)))

(defun leap-year (year)
  (if (== 0 (rem year 4))
    (or (!= 0 (rem year 100)) (== 0 (rem year 400)))))
