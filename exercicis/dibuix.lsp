(load "basicLibs\mathlib.lsp")
(defun drawSquare (m) 
  ;(color 10 39 50)
  (move 0 0)
  (drawrel m 0)
  (drawrel 0 m)
  (drawrel (- m) 0)
  (drawrel 0 (- m))
)

(putprop 'colors '(0 0 0) '0)
(putprop 'colors '(255 0 0) '1)
(putprop 'colors '(0 255 0) '2)
(putprop 'colors '(0 0 255) '3)

; PROBLEMA GRÀFIC
(setq xi 40)
(setq yi 40)
(setq m 25)
(setq p 2); posició inicial
; (setq l (list 0 0 0 0 0))

; sets llista[index]=value.
;Returns llista
(defun canvia (index llista value) 
  (cond 
    ((= 0 index) (cons value (cdr llista)))
    (t (cons (car llista) (canvia (- index 1) (cdr llista) value)))
  )
)

; pinta una llista

(defun pinta (l ) 
  (cond 
    ((null (cdr l))
     (progn 
       (move xi yi)
       (eval (cons 'color (get 'colors (car l))))
       (drawrel (- m 1) 0)
       (drawrel 0 (- m 1))
       (drawrel (- (- m 1)) 0)
       (drawrel 0 (- (- m 1)))
     )
    )

    (t
     (progn 
       (move xi yi)
       (eval (cons 'color (get 'colors (car l))))
       (drawrel (- m 1) 0)
       (drawrel 0 (- m 1))
       (drawrel (- (- m 1)) 0)
       (drawrel 0 (- (- m 1)))

       (setq xi (+ xi m))
       (pinta (cdr l))
     )
    )
  )
)

(defun dreta (p)
(setq p ( mod (+ 1 p) 5))
)

(defun esquerra (p)
(setq p (mod (- p 1) 5))

)
