;;;; THIS FILE CAN BE VIEWED ON euclid USING: less -x4 lange-3.lsp
;;;; Bryan Lange

;;; Solution to Problem 1
(defun MIN-2 (A B)
    (cond ((or (not (numberp a)) (not (numberp b))) `ERROR)
          ((if (> A B) B))
          (t A)))

;;; Solution to Problem 2
(defun SAFE-AVG (x y)
    (cond ((or (not (numberp x)) (not (numberp y))) `NIL)
          (t (/ (+ x y) 2))))

;;; Solution to Problem 3
(defun ODD-GT-MILLION (x) 
    (and (integerp x)
         (oddp x)
         (> x 1000000)))

;;; Solution to Problem 4
(defun MULTIPLE-MEMBER (x lst) 
    (if (and (or (symbolp x)
                 (numberp x))
             (listp lst)) 
        (member x (cdr (member x lst))) 
        `NIL))

;;; Solution to Problem 5
(defun MONTH->INTEGER (x)
    ; EQUALP used to ignore case
    (cond ((equalp x `January) 1)
          ((equalp x `February) 2)
          ((equalp x `March) 3)
          ((equalp x `April) 4)
          ((equalp x `May) 5)
          ((equalp x `June) 6)
          ((equalp x `July) 7)
          ((equalp x `August) 8)
          ((equalp x `September) 9)
          ((equalp x `October) 10)
          ((equalp x `November) 11)
          ((equalp x `December) 12)
          (t `ERROR)))

;;; Solution to Problem 6
(defun SCORE->GRADE (s) 
    (cond ((not (numberp s)) `NIL)
          ((>= s 90) `A)
          ((>= s 87) `A-)
          ((>= s 83) `B+)
          ((>= s 80) `B)
          ((>= s 77) `B-)
          ((>= s 73) `C+)
          ((>= s 70) `C)
          ((>= s 60) `D)
          (t `F)))

;;; Solution to Problem 7
(defun GT (x y) 
    (and (numberp x) 
         (numberp y) 
         (> x y)))

;;; Solution to Problem 8
(defun SAME-PARITY (x y)
    (and (integerp x)
         (integerp y) 
         (or (and (evenp x) 
                  (evenp y)) 
             (and (oddp x)
                  (oddp y)))))

;;; Solution to Problem 9
(defun SAFE-DIV (x y) 
    (and (numberp x)
         (numberp y)
         (not (zerop y))
         (/ x y)))