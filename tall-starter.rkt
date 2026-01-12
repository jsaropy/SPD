
;; tall-starter.rkt
(require 2htdp/image)

; 
; PROBLEM:
; 
; DESIGN a function that consumes an image and determines whether the 
; image is tall.
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 


; Image -> Boolean
; given an image produce true if the image is tall (height bigger than width) false otherwise
(check-expect (tall (rectangle 40 20 "solid" "black")) false)
(check-expect (tall (rectangle 30 60 "solid" "black")) true)

;(define (tall img) "") ; stub

;(define (tall img)
;  (... img)) ;template

(define (tall img)
  (if (> (image-height img) (image-width img))
         true
         false))
