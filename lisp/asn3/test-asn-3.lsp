;; Load the testing functions
(load "../lisp-tester.lsp")

;; Load the functions
(load "lastname-3.lsp")

;; Problem 1
(test-expression 1 1 (MIN-2 21.3 7/2)    7/2)
(test-expression 1 2 (MIN-2 17.5 29)     17.5)
(test-expression 1 3 (MIN-2 5 'APPLE)    'ERROR)
(test-expression 1 4 (MIN-2 '(31) '(54)) 'ERROR)
(terpri)  ; Print a blank line

;; Problem 2
(test-expression 2 1 (SAFE-AVG 23 47.4)       35.2)
(test-expression 2 2 (SAFE-AVG 3 8)           11/2)
(test-expression 2 3 (SAFE-AVG '(23.1) 47.3)  NIL)
(test-expression 2 4 (SAFE-AVG 'ORANGE 'PLUM) NIL)
(terpri)

;; Problem 3
(test-expression 3 1 (ODD-GT-MILLION 92010231)      T)
(test-expression 3 2 (ODD-GT-MILLION 17)            NIL)
(test-expression 3 3 (ODD-GT-MILLION 92010232)      NIL)
(test-expression 3 4 (ODD-GT-MILLION 21/5)          NIL)
(test-expression 3 5 (ODD-GT-MILLION 1718671.24)    NIL)
(test-expression 3 6 (ODD-GT-MILLION '(2010231))    NIL)
(test-expression 3 7 (ODD-GT-MILLION 'APPLE)        NIL)
(terpri)

;; Problem 4
(test-expression 4 1 (MULTIPLE-MEMBER 'A '(B A B B A C A D)) '(A C A D))
(test-expression 4 2 (MULTIPLE-MEMBER 'A '(B A B B C C A D)) '(A D))
(test-expression 4 3 (MULTIPLE-MEMBER 'A '(B A B B C D))     NIL)
(terpri)

;; Problem 5
(test-expression 5 1 (MONTH->INTEGER 'MARCH)  3)
(test-expression 5 2 (MONTH->INTEGER 'JUNE)   6)
(test-expression 5 3 (MONTH->INTEGER 'C)      'ERROR)
(test-expression 5 4 (MONTH->INTEGER 7)       'ERROR)
(test-expression 5 5 (MONTH->INTEGER 'QUOTE)  'ERROR)
(test-expression 5 6 (MONTH->INTEGER '(MAY))  'ERROR)
(terpri)

;; Problem 6
(test-expression 6 " 1" (SCORE->GRADE 86.3)     'B+)
(test-expression 6 " 2" (SCORE->GRADE 106)      'A)
(test-expression 6 " 3" (SCORE->GRADE -10.1)    'F)
(test-expression 6 " 4" (SCORE->GRADE 59.9)     'F)
(test-expression 6 " 5" (SCORE->GRADE 83)       'B+)
(test-expression 6 " 6" (SCORE->GRADE 74)       'C+)
(test-expression 6 " 7" (SCORE->GRADE 67)       'D)
(test-expression 6 " 8" (SCORE->GRADE 87.0)     'A-)
(test-expression 6 " 9" (SCORE->GRADE '(86.3))  NIL)
(test-expression 6 "10" (SCORE->GRADE 'DOG)     NIL)
(terpri)

;; Problem 7
(test-expression 7 1 (GT 0 -1)   T)
(test-expression 7 2 (GT -3 -7)  T)
(test-expression 7 3 (GT 40 40)  NIL)
(test-expression 7 4 (GT 'B 'A)  NIL)
(terpri)

;; Problem 8
(test-expression 8 1 (SAME-PARITY 0 -1)     NIL)
(test-expression 8 2 (SAME-PARITY -3 -9)    T)
(test-expression 8 3 (SAME-PARITY 30 90)    T)
(test-expression 8 4 (SAME-PARITY 'A 'A)    NIL)
(test-expression 8 5 (SAME-PARITY 4.1 3.7)  NIL)
(test-expression 8 6 (SAME-PARITY 0 0)      T)
(terpri)

;; Problem 9
(test-expression 9 1 (SAFE-DIV 6 4)     3/2)
(test-expression 9 2 (SAFE-DIV 6.0 4)   1.5)
(test-expression 9 3 (SAFE-DIV 6 0)     NIL)
(test-expression 9 4 (SAFE-DIV 6 0.0)   NIL)
(test-expression 9 5 (SAFE-DIV '(6) 4)  NIL)
(test-expression 9 6 (SAFE-DIV 6 T)     NIL)

;; Print out a final blank line
(terpri)