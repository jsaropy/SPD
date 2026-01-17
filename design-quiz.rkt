(require 2htdp/image)

;; HtDF Design Quiz

; PROBLEM:
; 
; Design a function that consumes two images and produces true if the first is larger than the second.
; 
; Note that limitations of the edX assessment tool mean that you cannot use images directly in your .rkt file.
; You can of course use image primitives like rectangle.
; But you cannot paste actual images into your .rkt file for this quiz, even though you normally can do that in BSL.
; Furthermore, unfortunately the assessment tool does not preserve the indentation of your code.
; When it comes time for the self-assessment, you can assess your original .rkt file,
; or copy your submission back into DrRacket and press cmd/ctr-I.


;; Image Image -> Boolean
;; given an image produce true if the first image is larger (bigger width and height) than the second
(check-expect (larger? (rectangle 10 20 "solid" "red")
                      (rectangle 20 30 "solid" "red"))
              false)
(check-expect (larger? (rectangle 50 40 "solid" "red")
                      (rectangle 20 30 "solid" "red"))
              true)
(check-expect (larger? (circle 20 "solid" "red")
                      (rectangle 20 30 "solid" "red"))
              true)
(check-expect (larger? (star 10 "solid" "red")
                      (rectangle 20 30 "solid" "red"))
              false)
(check-expect (larger? (rectangle 20 40 "solid" "red")
                      (rectangle 20 30 "solid" "red"))
              false)

#;
(define (larger? i1 i2) true) ; stub

#;
(define (larger? i1 i2)
  (... i1 i2)); template

(define (larger? i1 i2)
  (and (> (image-width i1)(image-width i2))
       (> (image-height i1)(image-height i2))))
