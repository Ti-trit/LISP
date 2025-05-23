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

; retorna tots els valors menors que n de la llista 
(defun menors (n llista) 
  (cond 
    ((null llista) nil)
    ((< (car llista) n)
     (cons (car llista) (menors n (cdr llista)))
    )
    (t (menors n (cdr llista)))
  )
)
; retorna t si els dos darrers arguments són menors que el primer
; i majors que el segon
(defun menor-major (llista))

; substitueix x per 'XXXXX..'
(defun sistituir (p frase))


; retorna una nova lista amb l(0) i l(l.length-1)
(defun primeroUltimo (llista) 
  (list (car llista) (last llista))
)



; es poden usar funcions d'ordre superior
; Calcula la transposta d'una matriu
(defun transposta (llista))




; Escriure una funció en LISP que donats dos conjunts d’elements
; ens retorni una llista amb els elements que pertanyen a la seva intersecció.
; ?- (interseccio ‘(a b c d e) ‘(f g e a s))
; (a e)

(defun interseccio (l1 l2) 
  (cond 
    ((null l1) nil)
    ((member (car l1) l2) (cons (car l1) (interseccio (cdr l1) l2)))
    (t (interseccio (cdr l1) l2))
  )
)



; Escriure en LISP la funció partició que donat un número i una llista de números,
; ens torni dues llistes, una amb tots els valors de la llista inicial que siguin menors o iguals que
; l’element i una llista amb tots els valors que siguin majors que l’element

(defun menor-major-llistes (n l1 menors majors) 
  (cond 
    ((null l1) (list menors majors))
    ((< (car l1) n) (menor-major-llistes n (cdr l1) (cons (car l1) menors) majors))
    ((> (car l1) n) (menor-major-llistes n (cdr l1) menors (cons (car l1) majors)))
    (t (menor-major-llistes n (cdr l1) menors majors))
  )
)




;  Implementau la funció longitudsiguals en LISP, que comprova si totes les llistes d’una llista tenen
; la mateixa longitud, de dues maneres: a) fent servir funcions d’ordre superior; b) sense fer servir funcions d’ordre superior
; (pensau un disseny descendent).
; > (longitudsiguals '((1 2) (3 4) (5 6)))
; T
; > (longitudsiguals '((1 2) (3 4 0) (5 6)))
; NIL



; Implementau la funció filtra en LISP que, donada una funció f (ja sigui a través del seu símbol o com
; a funció lambda) i una llista l, construeix una llista amb els elements d’l que satisfan la funció f. Notau que f accepta un sol
; argument i avalua a t o nil.
; > (filtra 'evenp '(1 2 3 4 5 6 7 8))
; (2 4 6 8)
; > (filtra (lambda (x) (< x 5)) '(2 3 4 5 6))
; (2 3 4)
; Hauríeu de fer servir una funció d’ordre superior. Si no vos surt, implementau dues funcions segons els exemples.


; Definir una funció LISP que comprimeixi una llista segons el següent esquema:

; ex: &gt; (comprimir ‘(a b b c d d d e e e e e f f f f f f f))
; (a (2 b) c (3 d) (5 e) (7 f))

;  Definir la función primero Ultimo que tenga por argumento una lista y devuelva otra lista con el primer y último elemento de la lista dada. (0.83 puntos).
; Ejemplo: (primero Ultimo '(1 2 3 4 5)) → (15)

; Define la función longitud con una lista como argumento que simule la acción de la función length utilizando prog. (0.83 puntos).
; Ejemplo: (longitud '(23)) → 2

; Definir la función simnum de forma que devuelva el valor verdadero si el argumento dado es una lista que además comienza por un símbolo y termina con un número, y el valor falso en caso. (0.84 puntos)
; Ejemplo: (simnum '(a 1 2 3 b 5)) →T
; I
; (simnum '(a b c 23 d)) → NIL



; Escriure una funció en LISP que compti el número total d’àtoms que té
; una llista qualsevol.
; &gt;(atoms ‘(a (b c (d e) f g) h (i)))
; 9

(defun atoms (llista) 
  (cond 
    ((null llista) 0)
    ((atom (car llista))
     (+ 
       1
       (atoms (cdr llista))
     )
    )
    (t (+ (atoms (car llista)) (atoms (cdr llista))))
  )
)

; Escriure una funció en LISP que ens digui si una llista és una permutació d’una
; altra.
; Ex: &gt;(permutacio ‘(a 2 b 4) ‘(b 4 2 a))
; t
; &gt;(permutacio ‘(a 1 2 3) ‘(3 1 2 b))
; nil

(defun permutacio (l1 l2) 
  (cond 
    ((and (null l1) (null l2)) t)
    ((member (car l1) l2)

     (permutacio (cdr l1) (remove (car l1) l2))
    )
    (t nil)
  )
)

; Implementau la funció coln en LISP que, donada una taula i un índex de columna n obté la columna
; indicada per n.
; > (coln '((1 2 3) (4 5 6) (7 8 9)) 2)
; (2 5 8)
; És recomanable que seguiu un disseny descendent: una funció per obtenir l’element a la posició n d’una llista
(defun coln (taula n) 
  (cond 
    ((> n (length (car taula))) nil)
    ((null taula) nil)
    (t (cons (nth (- n 1) (car taula)) (coln (cdr taula) n)))
  )
)

;  Implementau la funció alterna en LISP que, donades dues llistes, a i b, construeix la llista c amb els
; elements d’a i b intercalats:
; > (alterna '(a b c) '(1 2 3))
; (a 1 b 2 c 3)
; > (alterna '(a b c d e) '(1 2 3))
; (a 1 b 2 c 3 d e)
; > (alterna '(a b c) '(1 2 3 4 5))
; (a 1 b 2 c 3 4 5)
; Es valorarà que funcioni si a i b no tenen la mateixa mida (exemples de la dreta)
(defun alterna (l1 l2) 
  (cond 
    ((null l2) l1)
    ((null l1) l2)
    (t (append (list (car l1) (car l2)) (alterna (cdr l1) (cdr l2))))
  )
)


; Escriure una funció profunditat en LISP que ens retorni el màxim nivell
; d’anidament d’una llista (número màxim d’anidaments):
; >(profunditat ‘(1 2 (4 5 (7)) 5)) ; el 7 està dins 3 llistes
; 3
; >(profunditat ‘(9 (3 1) (7 (5 ((6)))) 8)) ; el 6 dins 5

(defun profunditat (llista) 
  (cond 
    ((null llista) 1)
    ((atom llista) 0)
    (t
    (maxim (+ 1 (profunditat (car llista))) (profunditat(cdr llista)))
    )
    
  )
)
(defun maxim (e1 e2)
(cond
((> e1 e2)
 e1
 )
  (t e2)

)
)
