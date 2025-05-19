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
(defun menors (n llista) 
  (cond 
    ((null llista) nil)
    ((< (car llista) n)
     (cons (car llista) (menors n (cdr llista))))
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

; retorna t si la llista comença amb un símbol i acaba amb un nombre
(defun simnum (llista))

; es poden usar funcions d'ordre superior
; Calcula la transposta d'una matriu
(defun transposta (llista))




; Escriure una funció en LISP que donats dos conjunts d’elements
; ens retorni una llista amb els elements que pertanyen a la seva intersecció.
; ?- (interseccio ‘(a b c d e) ‘(f g e a s))
; (a e)

; Escriure una funció en LISP que donats dos conjunts d’elements
; ens retorni el seu producte cartesià.
; Pista: recordau que podeu utilitzar disseny descendent!
; ?- (producte ‘(a b c) ‘(d e))
; ((a d) (a e) (b d) (b e) (c d) (c e))

; Escriure en LISP la funció partició que donat un número i una llista de números,
; ens torni dues llistes, una amb tots els valors de la llista inicial que siguin menors o iguals que
; l’element i una llista amb tots els valors que siguin majors que l’element

; Escriure una funció profunditat en LISP que ens retorni el màxim nivell
; n’anidament d’una llista (número màxim d’anidaments):
; >(profunditat ‘(1 2 (4 5 (7)) 5)) ; el 7 està dins 3 llistes
; 3
; >(profunditat ‘(9 (3 1) (7 (5 ((6)))) 8)) ; el 6 dins 5


; Implementau la funció sumar en LISP, que suma tots els elements continguts dins una llista i les
; seves subllistes. Tots els elements de darrer nivell son nombres:
; > (sumar '(1 2 (3 4 (5)) ((6))))
; 21


;  Implementau la funció longitudsiguals en LISP, que comprova si totes les llistes d’una llista tenen
; la mateixa longitud, de dues maneres: a) fent servir funcions d’ordre superior; b) sense fer servir funcions d’ordre superior
; (pensau un disseny descendent).
; > (longitudsiguals '((1 2) (3 4) (5 6)))
; T
; > (longitudsiguals '((1 2) (3 4 0) (5 6)))
; NIL


; % Escriure una funció en LISP que donats dos conjunts d’elements
; % ens retorni una llista amb els elements que pertanyen a la seva intersecció.
; % ?- (interseccio ‘(a b c d e) ‘(f g e a s))
; % (a e)


;  Implementau la funció alterna en LISP que, donades dues llistes, a i b, construeix la llista c amb els
; elements d’a i b intercalats:
; > (alterna '(a b c) '(1 2 3))
; (a 1 b 2 c 3)
; > (alterna '(a b c d e) '(1 2 3))
; (a 1 b 2 c 3 d e)
; > (alterna '(a b c) '(1 2 3 4 5))
; (a 1 b 2 c 3 4 5)
; Es valorarà que funcioni si a i b no tenen la mateixa mida (exemples de la dreta)

; Implementau la funció filtra en LISP que, donada una funció f (ja sigui a través del seu símbol o com
; a funció lambda) i una llista l, construeix una llista amb els elements d’l que satisfan la funció f. Notau que f accepta un sol
; argument i avalua a t o nil.
; > (filtra 'evenp '(1 2 3 4 5 6 7 8))
; (2 4 6 8)
; > (filtra (lambda (x) (< x 5)) '(2 3 4 5 6))
; (2 3 4)
; Hauríeu de fer servir una funció d’ordre superior. Si no vos surt, implementau dues funcions segons els exemples.

; Implementau la funció primers en LISP que, donada una llista de nombres, L, avalua a la llista amb
; els nombres de L que són primers. Suposau que s’ha definit (no l’heu de fer) la funció (esprimer n) que avalua a t si n és
; primer.
; > (primers '(5 6 7 8 127 128))
; (5 7 127)

; Implementau la funció coln en LISP que, donada una taula i un índex de columna n obté la columna
; indicada per n.
; > (coln '((1 2 3) (4 5 6) (7 8 9)) 2)
; (2 5 8)
; És recomanable que seguiu un disseny descendent: una funció per obtenir l’element a la posició n d’una llista


; Escriure una funció en LISP que ens digui si una llista és una permutació d’una
; altra.
; Ex: &gt;(permutacio ‘(a 2 b 4) ‘(b 4 2 a))
; t
; &gt;(permutacio ‘(a 1 2 3) ‘(3 1 2 b))
; nil

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