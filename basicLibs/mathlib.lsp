(defun parell (n) 
  (cond 
    ((= n (* 2 (div n 2))) t)
    (t nil)
  )
)

(defun senar (n) 
  (not (parell n))
)
(defun abs (n) 

  (cond 
    ((>= n 0) n)
    (t (- n))
  )
)


(defun mod (x y) 
  (cond 
    ((= y 0) nil)
    (t (- x (* (div x y) y)))
  )
)

(defun exp (x y) 
  (cond 
    ((= y 0) 1)
    (t (* x (exp x (- y 1))))
  )
)
(defun div (x y) 

  (cond 
    ((< x y) 0)
    (t (+ 1 (div (- x y) y)))
  )
)
(defun maxim (llista) 
  (cond 
    ((null (cdr llista)) (car llista))
    ((< (car llista) (cadr llista)) ; llista(i)< llista(i+1) , we remove llista(i)
     (maxim (cdr llista))
    )
    (t (maxim (cons (car llista) (cddr llista)))) ; llista(i)>llista(i+1), we "remove" llista(i+1)
  )
)

(defun minim (llista) 
  (cond 
    ((null (cdr llista)) (car llista))
    ((> (car llista) (cadr llista)) ; llista(i)> llista(i+1) , we remove llista(i)
     (minim (cdr llista))
    )
    (t (minim (cons (car llista) (cddr llista)))) ; llista(i)<llista(i+1), we "remove" llista(i+1)
  )
)

(defun senars (l) 
  (cond 
    ((null l) nil)
    ((not (parell (car l)))
     (cons (car l) (senars (cdr l)))
    )
    (t (senars (cdr l)))
  )
)

