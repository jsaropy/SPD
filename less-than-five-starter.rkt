
;; less-than-five-starter.rkt

; 
; PROBLEM:
; 
; DESIGN function that consumes a string and determines whether its length is
; less than 5.  Follow the HtDF recipe and leave behind commented out versions 
; of the stub and template.


; String -> Integer
; given an string determine the length of this string is less than 5 (true)
(check-expect (lessthanfive "cat") true)
(check-expect (lessthanfive "banana") false)
(check-expect (lessthanfive "hello") false)

;(define (lessthanfive str) false) ;stub

;(define (lessthanfive str)
;  (... str)) ;template

(define (lessthanfive str)
  (< (string-length str) 5))
