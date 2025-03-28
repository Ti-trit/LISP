

(defun darrer (L)
 (cond ((null (cdr L)) (car L))
 (t (darrer (cdr L)))))

(defun exponen(x1 x2)
  (cond ((eq x2 0) x1) 
  (t (exponen((* x1 x2) ( - x2 1 ))))
  )
)

(defun fib (n)
  (cond ((= n 0 ) 0 )
  ((= n 1) 1) 
  (t  (+ (fib (- n 1))
           (fib (- n 2))))  
  
  )
)


(defun parell (n)

  (cond (  ( = (* 2  (dividir n 2)) n ) t)  
    (t nil ) 
  )
    
)


(defun dividir (x1 x2 )
  (cond ((< x1 x2 ) 0 )
    (t  (+ 1 (dividir (- x1 x2) x2 )))

  )

)

; (1 2 3 4 5)
(defun senars (llista)
  (cond (null llista  0 )
     
    (( = nil (parell (car llista)))
          
          cons (car llista) nova
      ; se añade el elemento a la list anueva
     (t (senars cdr llista )))
    (t (senars cdr llista ))
     
   )
  
)




(defun darrer (L)
 (cond ((null (cdr L)) (car L))
 (t (darrer (cdr L)))))

(defun exponen(x1 x2)
  (cond ((eq x2 0) x1) 
  (t (exponen((* x1 x2) ( - x2 1 ))))
  )
)

(defun fib (n)
  (cond ((= n 0 ) 0 )
  ((= n 1) 1) 
  (t  (+ (fib (- n 1))
           (fib (- n 2))))  
  
  )
)


(defun parell (n)

  (cond (  ( = (* 2  (dividir n 2)) n ) t)  
    (t nil ) 
  )
    
)


(defun dividir (x1 x2 )
  (cond ((< x1 x2 ) 0 )
    (t  (+ 1 (dividir (- x1 x2) x2 )))

  )

)

; (1 2 3 4 5)
(defun senars (llista)
  (cond (null llista  0 )
     
    (( = nil (parell (car llista)))
          
          cons (car llista) nova
      ; se añade el elemento a la list anueva
     (t (senars cdr llista )))
    (t (senars cdr llista ))
     
   )
  
)

