
; remove all intern () of the given list
(defun aplanar (llista) 
  (cond 
    ((null llista) nil)
    ((listp (car llista))
     (append (aplanar (car llista)) (aplanar (cdr llista)))
    )
    (t (cons (car llista) (aplanar (cdr llista))))
  )
)


; agafar-n is the same function as getElementI in listLib.lsp


