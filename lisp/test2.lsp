(defun flatten (x)
   (cond ( (null x) x )
	 ( (atom (car x)) (cons (car x) (flatten (cdr x))) )
	 ( t (append (flatten (car x)) (flatten (cdr x))) )
   )
)

(defun memberp (atm lst)
   (cond  ( (null lst) nil )
          ( (eq atm (car lst)) t )
   	  ( t (memberp atm (cdr lst)) )
   )
)

(defun sum-of ()
   (prog (n)
	 (princ "Input integer: ")
	 (setq n (read))
  	 (do ( (i 1 (+ i 1))
  	       (sum 0 (+ sum i)) )
   	     ( (> i n) sum )
   	     (princ "1 + ... + ")
   	     (prin1 (1- i))
   	     (princ " = ")
   	     (prin1 sum)
   	     (terpri)
   	 )
   	 (return n)
   )
)

(defun list-reverse (list)
   (do ( (x list (cdr x))
         (y '() (cons (car x) y)) )
       ( (endp x) y )
   )
)

(defun depth (x)
   (cond ( (atom x) 0 )
         ( t (max (1+ (depth (car x))) (depth (cdr x))) )
   )
)