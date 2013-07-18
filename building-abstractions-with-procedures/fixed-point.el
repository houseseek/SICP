(defconst tolerance 0.00001)

(defun fixed-point (f first-guess)
  (defun close-enough? (v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (defun try (guess)
    (let ((next (funcall f guess)))
      (if (close-enough? guess next)
	  next
	(try next))))
  (try first-guess))

(fixed-point #'cos 1.0)

((lambda (f first-guess)
   (defconst tolerance 0.00001)
  (defun close-enough? (v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (defun try (guess)
    (let ((next (funcall f guess)))
      (if (close-enough? guess next)
	  next
	(try next))))
  (try first-guess)
  ) #'cos 1.0)
