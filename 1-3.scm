(define (sqr a) (* a a))

(define (sum-of-2-largest x y z)
  (cond (
	 (and (> x y) (> x z)) ;; x is the largest
	 (if (> y z)
	     (+ (sqr y) (sqr x)) ;; y is the second largest
	     (+ (sqr z) (sqr x)))) ;; z is the second largest
	(
	 (and (> y z) (> y x)) ;; y is the largest
	 (if (> z x)
	     (+ (sqr z) (sqr y)) ;; z is the second largest
	     (+ (sqr x) (sqr y)))) ;; x is the second largest
	(else ;; y is the largest
	 (if (> x y) 
	     (+ (sqr z) (sqr x))
	     (+ (sqr z) (sqr y))))))
