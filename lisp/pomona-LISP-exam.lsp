; addto is a function that takes a integer-list and an integer and adds that integer to each item in the list.
(defun addto (lst k)
	(cond ( (null (cdr lst)) (list (+ (car lst) k)) )
	      ( t (append (list (+ (car lst) k)) (addto (cdr lst) k)) )))

; interval is a function that will produce a list of consecutive integers starting at m and going up to, but not including, n.
(defun interval(m n)
  	(cond ( (>= m n) nil )
	      ( t (cons m (interval (1+ m) n)) )))

; summation of integers from 1 to n
(defun sumIntegers(n)
  	(cond ( (< n 0) 0 )
	      ( t (+ n (sumIntegers (1- n))) )))

; numList n creates a list of integers from n down to 1.
(defun numList(n)
  	(cond ( (<= n 0) nil )
	      ( t (cons n (numList (1- n))) )))

; sameValues listA listB returns true if listA and listB are the same.
(defun sameValues(listA listB)
  	(cond ( (null listA)
	       		(cond ( (null listB) t )
			      ( t nil )) )
	      ( (null listB) nil )
	      ( (eq (car listA) (car listB)) (sameValues (cdr listA) (cdr listB)) )
	      ( t nil )))

; squareAll squares all the integers in a list.
(defun square(n) (* n n))
(defun squareAll(lst)
  	(cond ( (null (cdr lst)) (list (square (car lst))) )
	      ( t (cons (square (car lst)) (squareALL (cdr lst))) )))

; listPair takes a pair of lists of the same lengths and forms a list of element-wise pairs. Ex) (listPair '(1 2 3) '(4 5 6)) returns ( (1 4) (2 5) (3 6) ).
(defun listPair(listA listB)
  	(cond ( (null (cdr listA)) (list (cons (car listA) listB)) )
	      ( t (cons (list (car listA) (car listB)) (listPair (cdr listA) (cdr listB))) )))

; split takes a list and produces an ordered pair of lists. The first element of the pair contains, in order, the first, third, etc. elements of the argument list, and the second element contains the elements at even positions.
; For example, (split '(1 2 3 4 5)) yields '( (1 3 5) (2 4) ).
(defun split(listA listB)
  	(cond ()
	      ( t )))

; cartesian takes two lists and forms a list of all the ordered pairs, with one element from the first list and on from the second.
; For example, (cartesian '(1 3 5) '(2 4)) will return '( (1 2) (1 4) (3 2) (3 4) (5 2) (5 4) ).
(defun cartesian(listA listB)
 )

