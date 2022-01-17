;;;; Bryan Lange

;;; Solution to Problem 1
(defun index (N L)
    (cond ((null L) `ERROR)
          ((equal N 1) (car L))
          (t (index (- N 1) (cdr L)))))              

;;; Solution to Problem 2
(defun min-first (L)
    (if ((null (cdr L)) L)
        (let ((X (min-first (cdr L))))
            (cond ((<= (car L) (car X)) L)
                  (t (cons (car X) (cons (car L) (cdr X))))))))

(define (min-first l)
  (cond ((null? (cdr l)) l)
        (else
         (let ((min-first-cdr (min-first (cdr l))))
           (cond ((<= (car l) (car min-first-cdr)) l)
                 (else
                  (cons (car min-first-cdr)
                        (cons (car l) (cdr min-first-cdr)))))))))



;;; Solution to Problem 3
(defun ssort (L)
    (if (null (cdr L))
        L
        (let* ((L1 (min-first L))
              (X (ssort (cdr L1))))
            (cons (car L1) X))))

;;; Solution to Problem 4
(defun qsort (L)
    (if (endp L)
        `NIL
        (let ((PL (partition (cdr L) (car L))))
            (cons (cdr PL) (car L)))))

;;; Solution to Problem 5
(defun merge-lists (L1 L2)
    (cond ((endp L1) L2)
          ((endp L2) L1)
          ((and (endp L1) (endp L2)) `NIL)
          (t (let ((X (merge-lists (cdr L1) L2))
                  (Y (merge-lists L1 (cdr L2))))
                (if (< (car L1) (car L2))
                    (cons (car L1) X)
                    (cons (car L2) Y))))))

;;; Solution to Problem 6
(defun msort (L)
    (if (endp L)
        `NIL
        (let* ((X (split-list (cdr L)))
              (Y (merge-lists (car X) (cdr X)))
              (Z (msort (cdr L))))
            (if (> (car L) (cdr L))
                Z))))

(defun msort (L)
    (if (endp L)
        `NIL
        (let* ((X (split-list L))
              (Y (merge-lists (car X) (cadr X))))
            Y
            (print X)
            (print Y)
            )))

(msort `(5 4 3 2 1 0))

;;; Solution to Problem 7
(defun remove-adj-dupl (L)
    (if (endp L)
        `NIL
        (let ((X (remove-adj-dupl (cdr L))))
            (if (equal (car L) (car X))
                (cons (car L) (cdr X))
                (cons (car L) X)))))

(remove-adj-dupl `(a b a a a c c))

;;; Solution to Problem 8
(defun unrepeated-elts (L)
    (if (endp L)
        `NIL
        (let ((X (unrepeated-elts (cdr L))))
            (if (equal (car X) (cadr X))
                (cons (car L) (caddr X))
                (cons (car L) X)))))

(defun unrepeated-elts (L)
    (if (endp L)
        `NIL
        (let ((X (unrepeated-elts (cdr L))))
            (cond ((equal (car X) (cadr X)) (cons (car L) (caddr X)))
                  ((equal (car L) (car X)) (cons (car L) (cdr X)))
                  (t (cons (car L) X))))))

(unrepeated-elts `(a b a a a c c))

;;; Solution to Problem 9

;;; Solution to Problem 10
(defun count-repetitions (L)
    (if (endp L)
        `NIL
        (let ((X (count-repetitions (cdr L))))
            (if (equal (car L) (cdar X))
                (cons (cons (+ 1 (caar X)) (car L)) (cdr X))
                (cons (cons 1 (cons (car L) `NIL)) X)))))

(count-repetitions `(a b a a a c c))
