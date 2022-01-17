;;;; Bryan Lange

;;; Solution to Problem 1
(defun sum (L)
    (if (null L)
        0
        (+ (car L) (sum (cdr L)))))   

;;; Solution to Problem 2
(defun neg-nums (L) 
    (if (null L)
        `NIL
        (let ((X (neg-nums (cdr L))))
            (if (minusp (car L))
                (cons (car L) X)
                X))))

;;; Solution to Problem 3
(defun inc-list-2 (L N)
    (if (null L) 
        `NIL
        (cons (+ (car L) 5) (inc-list-2 (cdr L) N))))

;;; Solution to Problem 4
(defun insert (N L)
    (cond ((null L) (cons N `NIL))
          ((<= N (car L)) (cons N L))
          (t (cons (car L) (insert N (cdr L))))))

;;; Solution to Problem 5
(defun isort (L)
    (if (null L)
        `NIL
        (insert (car L) (isort (cdr L)))))

;;; Solution to Problem 6
(defun split-list (L)
    (if (null L)
        `NIL
        (let ((X (split-list (cdr L))))
            (list (cons (car L) (cadr X)) 
                  (car X)))))
    
;;; Solution to Problem 7
(defun partition (L P)
    (if (null L)
        `NIL
        (let ((X (partition (cdr L) P)))
            (if (< (car L) P)
                (list (cons (car L) (car X)) (cadr X))
                (list (car X) (cons (car L) (cadr X)))))))

;;; Solution to Problem 8
(defun pos (E L)
    (cond ((endp L) 0) 
          ((equal E (car L)) 1)
          (t (let ((X (pos E (cdr L))))
                (if (zerop X) 
                    0 
                    (+ X 1))))))
    
;;; Solution to Problem 9
(defun split-nums (N) 
    (if (minusp N)
        `NIL 
        (let ((X (split-nums(- N 1))))
            (if (evenp N)
                (list (cons N (car X)) (cadr X))
                (list (car X) (cons N (cadr X)))))))

;;; Solution to Problem 10
(defun set-union (s1 s2)
    (if (null s1)
        s2
        (let ((X (set-union (cdr s1) s2)))
            (if (member (car s1) X)
                X
                (cons (car s1) X)))))

;;; Solution to Problem 11
(defun set-remove (x s)
    (if (null s)
        `NIL
        (let ((Y (set-remove x (cdr s))))
            (if (equal x (car s))
                Y
                (cons (car s) Y)))))

;;; Solution to Problem 12
(defun set-excl-union (s1 s2)
    (if (null s1)
        s2
        (let ((X (set-excl-union (cdr s1) s2)))
            (if (member (car s1) X)
                (set-remove (car s1) X)
                (cons (car s1) X)))))

;;; Solution to Problem 13
(defun singletons (e)
    (if (null e)
        `NIL
        (let ((X (singletons (cdr e))))
            (if (member (car e) X)
                (set-remove (car e) X)
                (cons (car e) X)))))