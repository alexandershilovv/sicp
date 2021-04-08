(define (cubeiter guess x)
(if (good? guess x)
  guess
  (cubeiter (improve guess x)
            x)))

(define (good? guess x)
(<(abs (- (cube guess) x)) 0.001))

(define (cube x) (* x x x))

(define (improve guess x)
(/ (+ (* 2 guess) (/ x (* guess guess))) 3)
)
(cubeiter 1.0 8)
