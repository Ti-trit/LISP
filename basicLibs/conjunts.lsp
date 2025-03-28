(load "listLib.lsp")
; no ha d'haver-hi elements repetits
(defun conjunt-correcte (llista) 
  (cond 
    ((null llista) t)
    ((equal t (memberL (car llista) (cdr llista))) nil)
    (t (conjunt-correcte (cdr llista)))
  )
)
; elimina elements duplicats, mantenguint només la darrera aparició d'aquests elements
(defun fer-conjunt (llista) 
  (cond 
    ((null llista) nil)
    ((equal t (memberL (car llista) (cdr llista)))
     (fer-conjunt (cdr llista))
    )
    (t (cons (car llista) (fer-conjunt (cdr llista))))
  )
)

(defun unio (l1 l2) 

  (cond 
    ((null l1) l2)
    ((memberL (car l1) l2) (unio (cdr l1) l2))
    (t (unio (cdr l1) (cons (car l1) l2)))
  )
)

(defun interseccio (l1 l2) 
  (cond 
    ((null l1) nil)
    ((memberL (car l1) l2) (cons (car l1) (interseccio (cdr l1) l2)))
    (t (interseccio (cdr l1) l2))
  )
)

; l1-l2
(defun diferencia (l1 l2) 

  (cond 
    ((null l1) nil)
    ((memberL (car l1) l2) (diferencia (cdr l1) l2))
    (t (cons (car l1) (diferencia (cdr l1) l2)))
  )
)
;( l1-l2) U (l2 -l1)
(defun diferencia-simetrica (l1 l2) 

  (unio (diferencia l1 l2) (diferencia l2 l1))
)

(defun producte-cartesia (l1 l2) 

  (cond 

    ((null (cdr l1)) nil)
    (t (append (crea-lista (car l1) l2) (crea-lista (cadr l1) l2)))
  )
)

(defun crea-lista (e l) 

  (cond 
    ((null l) nil)
    (t (cons (list e (car l)) (crea-lista e (cdr l))))
  )
)