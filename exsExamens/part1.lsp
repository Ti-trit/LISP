(load "basicLibs\mathlib.lsp")
; donada una llista d'elements,que poden estar repetits, amb el format (v1 e1 v2 e2..)
;cerqui un element donat i retorni la suma dels seus valors
(defun cerca (e llista) 
  (cond 
    ((null llista) 0)
    ((equal e (car llista)) (+ (cadr llista) (cerca e (cdr llista))))
    (t + (cerca e (cdr llista)))
  )
)
; donada una llista, retorn una nova llista amb els elements
; que no són ni multiples de 3 ni de 5
(defun niMult3ni5 (llista) 
  (cond 
    ((null llista) nil)
    ((or (multiple 3 (car llista)) (multiple 5 (car llista)))
     (niMult3ni5 (cdr llista))
    )
    (t (cons (car llista) (niMult3ni5 (cdr llista))))
  )
)

; retorn t si n és multiple de a
(defun multiple (a n) 

  (equal 0 (mod n a))
)
; sumar tots els elements amb posicions senars d'una llista
(defun sumarPosSenar (llista) 
  (cond 
    ((null llista) 0)
    (t (+ (car llista) (sumarPosSenar (cddr llista))))
  )
)

(defun sumarPosParell (llista) 

  (cond 
    ((or (null (cdr llista)) (null llista)) 0)
    (t (+ (cadr llista) (sumarPosParell (cddr llista))))
  )
)

; donades dues llistes de la mateixa longitud intercalo la primera amb la segona al revés
(defun intercala (l1 l2))

; retorn t si una l1 és una permutació de l2
(defun permutacio (l1 l2))
;usant funcions auxiliars
(defun comprimir (llista)) 

; retorna tots els valors menors que n de la llista 
(defun menors (n llista))
; retorna t si els dos darrers arguments són menors que el primer
; i majors que el segon
(defun menor-major (llista))

; substitueix x per 'XXXXX..'
(defun sistituir (p frase))


; retorna una nova lista amb l(0) i l(l.length-1)
(defun primeroUltimo)

; retorna t si la llista comença amb un símbol i acaba amb un nombre
(defun simnum (llista))

; es poden usar funcions d'ordre superior
; Calcula la transposta d'una matriu
(defun transposta (llista))
