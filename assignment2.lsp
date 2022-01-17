;6) 
(defun SQR (x) 
	(list 
		(* x 4) 
		(* x x)))
;(print (sqr 2))



;7)
;(defun QUADRATIC (a b c) (list((/ (+ (* -1 b) (SQRT ((- (* b b) (* 4 a c))))) (* 2 a)) (/ (- (* -1 b) (SQRT ((- (* b b) (* 4 a c))))) (* 2 a)))))
;(print (QUADRATIC 2 2 2))
(defun quadratic (a b c) 
	(list 
		(/ 
			(+ 
				(* b -1) 
				(sqrt 
					(- 
						(* b b) 
						(* 4.0 a c))) 
			(* 2.0 a))) 
		(/ 
			(- 
				(* b -1) 
				(sqrt 
					(- 
						(* b b) 
						(* 4.0 a c))) 
			(* 2.0 a)))))
;(print (QUADRATIC 2 5 -3))



;8)
(defun CIRCLEAREA (r) (* PI (* r r)))
;(print (circlearea 2))



;9)
(defun FTOC (f) (* (- f 32.0) 5/9))
;(print (FTOC 60))



;10)
;(defun ROTATE-LEFT (l) (append (cdr l) (cons (car l) nil)))
(defun rotate-left (lst)
       (append (cdr lst) (list (car lst))))
;(print (ROTATE-LEFT `(A B C D)))



;11)
(defun pointdistanceVOID (x1 y1 x2 y2) 
	(sqrt (+ (expt (- x1 x2) 2) 
			 (expt (- y1 y2) 2))))

(defun pointdistance1 (lst1 lst2) 
	(sqrt (+ (expt (- (car lst1) 
                    (car lst2)) 
			 2) 
            (expt (- (cadr lst1) 
			          (cadr lst2)) 
		     2))))
			 
(defun square (x) (* x x))		 
(defun pointdistance2 (p1 p2)
       (sqrt (+ (square (- (car p1) (car p2)))
                (square (- (cadr p1) (cadr p2))))))
;(print (pointdistance2 `(5 2) `(7 1)))



;12)
(defun head (lst) 
	(first lst)) ; use car probably
(defun tail (lst)
	(second lst)) ; use cdr probably
;(print (head `(A B C D)))
;(print (tail `(A B C D)))



;13)
(defun switch (lst) 
	(list (cadr lst) 
		  (car lst)))
;(print (switch `(A B)))

;14)
; it returns 70




;15)
;a)
(setf e '(a b x d)) 
(car (cdr (cdr e)))
;b)
(setf e ' (A (B (X D))))
(car (car (cdr (car (cdr e)))))
;c)
(setf e `((((a (b (x) d))))))
(car (car (cdr (car (cdr (car (car e)))))))



;16)
;a)
(cons `a (cons `b (cons `x (cons `d nil))))
;b)
(cons `a (cons (cons `b (cons (cons `x (cons `d nil)) nil)) nil))
;c)
(cons (cons (cons `a (cons `b (cons (cons `x nil) (cons `d nil)))) nil) nil)



(setf E
 '((90 91 92 93 94 95 96 97 98 99) (+ 3 4 -) (9 19 29 39 49 59 69 79 89 99)))
;17)
(list (cons (list (caar e) (cadar e)) (cddar e)) (append (list `a) (list `b) (cddr (caddr e))))


;18)
(list (append (list (caar e) `a) (cddar e)) 
      (cadadr e)
      (cadr (cdaddr e))	  
	  (cons (car (cddadr e)) (cdr (cdaddr e))))

;19)
(list (append (car e) (cons (cadadr e) nil)) 
   (append (cadr e) (cdr (cdaddr e))))

;20)
(list (cons `a (cdar e)) 
     (append (list (caar e)) 
	       (cons (list (car (cdaddr e)) (cadr (cdaddr e))) nil) 
		   (cddr (cdaddr e))))












;17
(setf E
 '((90 91 92 93 94 95 96 97 98 99) (+ 3 4 –) (9 19 29 39 49 59 69 79 89 99)))
(list (cons (cons (caar e) (cons (cadar e) nil)) (cddar e))
	  (list `a `b (cddar e)))


(list (cons `a (cdar e))
	  (cons (caar e)
	  		(cons (cons (car (cdaddr e)) (cons (car (cdr (cdaddr e))) nil))
			  	  (cddr (cdaddr e)))))





(all-odd `(6 7 3 1 3))
(all-odd `(1 3 5 7))
(defun all-odd (L)
	(null (funcall #'oddp L)))
(defun all-odd (L)
	(null (mapcar #'oddp L)))
(defun all-odd (L)
	(null (remove-if #'oddp L))) ; correct



(cons (cons (cons 1 2) (cons ) nil))


(cons 1  (cons 2  (cons (cons 3 (cons 4 (cons 5 nil))) nil)))