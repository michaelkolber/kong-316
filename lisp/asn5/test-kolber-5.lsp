;; Load the testing functions
(load "../lisp-tester.lsp")

;; Load the functions
(load "lastname-5.lsp")

;; Problem 1
(test-expression 1 1 (INDEX 3 '(A S (A S) (A) D))    '(A S))
(test-expression 1 2 (INDEX 6 '(A S (A S) (A) D))    'ERROR)
(test-expression 1 3 (INDEX 1 '(A S (A S) (A) D))    'A)
(test-expression 1 4 (INDEX 3 NIL)                   'ERROR)
(test-expression 1 5 (INDEX 10 '(A S (A S) (A) D))   'ERROR)
(terpri)  ; Print a blank line

;; Problem 2
(test-expression 2 1 (MIN-FIRST '(0 3 1 1 0 3 5))          '(0 3 1 1 0 3 5))
(test-expression 2 2 (MIN-FIRST '(4 3 1 1 0 3 5 0 3 0 2))  '(0 4 3 1 1 3 5 0 3 0 2))
(test-expression 2 3 (MIN-FIRST '(1))                      '(1))
(terpri)  ; Print a blank line

;; Problem 3
(test-expression 3 1 (SSORT '(0 3 1 1 0 3 5))          '(0 0 1 1 3 3 5))
(test-expression 3 2 (SSORT '(4 3 1 1 0 3 5 0 3 0 2))  '(0 0 0 1 1 2 3 3 3 4 5))
(test-expression 3 3 (SSORT '(1))                      '(1))
(test-expression 3 4 (SSORT '(1 0))                      '(0 1))
(test-expression 3 5 (SSORT '(0 1))                      '(0 1))
(terpri)  ; Print a blank line

;; Problem 4
(test-expression 4 1 (QSORT '(0 3 1 1 0 3 5))          '(0 0 1 1 3 3 5))
(test-expression 4 2 (QSORT '(4 3 1 1 0 3 5 0 3 0 2))  '(0 0 0 1 1 2 3 3 3 4 5))
(test-expression 4 3 (QSORT '(1))                      '(1))
(test-expression 4 4 (QSORT '(1 0))                      '(0 1))
(test-expression 4 5 (QSORT '(0 1))                      '(0 1))
(terpri)  ; Print a blank line

;; Problem 5
(test-expression 5 1 (MERGE-LISTS '(2 4 5 5 7 8 9) '(3 4 6 9 9))  '(2 3 4 4 5 5 6 7 8 9 9 9))
(test-expression 5 2 (MERGE-LISTS '(1 2 3) '(4 5 6 7))            '(1 2 3 4 5 6 7))
(test-expression 5 3 (MERGE-LISTS '(3 4 5 6 7) '(0 1 2 3))        '(0 1 2 3 3 4 5 6 7))
(test-expression 5 4 (MERGE-LISTS NIL '(0 1 2 3))                 '(0 1 2 3))
(test-expression 5 5 (MERGE-LISTS '(0 1 2 3) NIL)                 '(0 1 2 3))
(test-expression 5 5 (MERGE-LISTS NIL NIL)                        NIL)
(terpri)  ; Print a blank line

;; Problem 6
(test-expression 6 1 (MSORT '(0 3 1 1 0 3 5))          '(0 0 1 1 3 3 5))
(test-expression 6 2 (MSORT '(4 3 1 1 0 3 5 0 3 0 2))  '(0 0 0 1 1 2 3 3 3 4 5))
(test-expression 6 3 (MSORT '(1))                      '(1))
(test-expression 6 4 (MSORT '(1 0))                      '(0 1))
(test-expression 6 5 (MSORT '(0 1))                      '(0 1))
(terpri)  ; Print a blank line

;; Problem 7
(test-expression 7 1 (REMOVE-ADJ-DUPL '(a b a a c c))            '(a b a c))
(test-expression 7 2 (REMOVE-ADJ-DUPL '(0 3 1 1 0 3 5))          '(0 3 1 0 3 5))
(test-expression 7 3 (REMOVE-ADJ-DUPL '(4 3 1 1 0 3 5 0 3 0 2))  '(4 3 1 0 3 5 0 3 0 2))
(test-expression 7 4 (REMOVE-ADJ-DUPL '(1))                      '(1))
(test-expression 7 5 (REMOVE-ADJ-DUPL '(1 0))                    '(1 0))
(test-expression 7 6 (REMOVE-ADJ-DUPL '(1 1))                    '(1))
(terpri)  ; Print a blank line

;; Problem 8
(test-expression 8 1 (UNREPEATED-ELTS '(a b a a a c c))          '(a b))
(test-expression 8 2 (UNREPEATED-ELTS '(0 3 1 1 0 3 5))          '(0 3 0 3 5))
(test-expression 8 3 (UNREPEATED-ELTS '(4 3 1 1 0 3 5 0 3 0 2))  '(4 3 0 3 5 0 3 0 2))
(test-expression 8 4 (UNREPEATED-ELTS '(1))                      '(1))
(test-expression 8 5 (UNREPEATED-ELTS '(1 0))                    '(1 0))
(test-expression 8 6 (UNREPEATED-ELTS '(1 1))                    NIL)
(terpri)  ; Print a blank line

;; Problem 9
(test-expression 9 1 (REPEATED-ELTS '(a b a a a c c))            '(a c))
(test-expression 9 2 (REPEATED-ELTS '(0 3 1 1 0 3 5))            '(1))
(test-expression 9 3 (REPEATED-ELTS '(4 3 1 1 0 3 5 0 3 0 0 2))  '(1 0))
(test-expression 9 4 (REPEATED-ELTS '(1))                        NIL)
(test-expression 9 5 (REPEATED-ELTS '(1 0))                      NIL)
(test-expression 9 6 (REPEATED-ELTS '(1 1))                      '(1))
(terpri)  ; Print a blank line

;; Problem 10
(test-expression 10 1 (COUNT-REPETITIONS '(a b a a a c c))  '((1 a) (1 b) (3 a) (2 c)))
(test-expression 10 2 (COUNT-REPETITIONS '(0 3 1 1 0 3 5))  '((1 0) (1 3) (2 1) (1 0) (1 3) (1 5)))
(test-expression 10 3 (COUNT-REPETITIONS '(1))              '((1 1)))
(test-expression 10 4 (COUNT-REPETITIONS NIL)               NIL)
(terpri)  ; Print a blank line

;; Problem 11
(test-expression 11 1 (SUBSET #'numberp '(a b a a a c c))  NIL)
(test-expression 11 2 (SUBSET #'numberp '(0 3 1 1 0 3 5))  '(0 3 1 1 0 3 5))
(test-expression 11 3 (SUBSET #'numberp '(1 a 2 b 3 c))    '(1 2 3))
(test-expression 11 4 (SUBSET #'numberp '(a 2 b 3 c))      '(2 3))
(terpri)  ; Print a blank line

;; Problem 12
(test-expression 12 1 (our-some  #'numberp '(A B 2 C D))  '(2 C D))
(test-expression 12 2 (our-some  #'numberp '(A B C D))    NIL)
(test-expression 12 3 (our-every #'symbolp '(A B 2 C D))  NIL)
(test-expression 12 4 (our-every #'symbolp '(A B C D))    T)
(terpri)  ; Print a blank line

;; Problem 13
(test-expression 13 1 (QSORT1 #'> '(2 8 5 1 5 7 3))                                                                  '(8 7 5 5 3 2 1))
(test-expression 13 2 (QSORT1 #'< '(2 8 5 1 5 7 3))                                                                  '(1 2 3 5 5 7 8))
(test-expression 13 3 (QSORT1 (LAMBDA (L1 L2) (< (LENGTH L1) (LENGTH L2))) '((X) (A D X E G) (1 2 Q R) NIL (S D F))) '(NIL (X) (S D F) (1 2 Q R) (A D X E G)))
(terpri)  ; Print a blank line

;; Problem 14
(test-expression 14 1 (FOO #'- '(1 2 3 4 5))  '((-1 2 3 4 5) (1 -2 3 4 5) (1 2 -3 4 5) (1 2 3 -4 5) (1 2 3 4 -5)))
(terpri)  ; Print a blank line

;; Problem 15(a)
(test-expression "15(a)" "1 (TR-ADD)" (TR-ADD '(1 2 3 4 5) 0)  15)
(test-expression "15(a)" "2 (TR-MUL)" (TR-MUL '(1 2 3 4 5) 1)  120)
(test-expression "15(a)" "3 (TR-FAC)" (TR-FAC 5 1)             120)
(terpri)  ; Print a blank line

;; Problem 15(b)
(compile 'tr-fac)  ; To avoid stack overflow issues
(test-expression "15(b)" " 1 (20,001)"         (SLOW-PRIMEP 20001)  NIL)
(test-expression "15(b)" " 2 (20,002)"         (SLOW-PRIMEP 20002)  NIL)
(test-expression "15(b)" " 3 (20,003)"         (SLOW-PRIMEP 20003)  NIL)
(test-expression "15(b)" " 4 (20,004)"         (SLOW-PRIMEP 20004)  NIL)
(test-expression "15(b)" " 5 (20,005)"         (SLOW-PRIMEP 20005)  NIL)
(test-expression "15(b)" " 6 (20,006)"         (SLOW-PRIMEP 20006)  NIL)
(test-expression "15(b)" " 7 (20,007)"         (SLOW-PRIMEP 20007)  NIL)
(test-expression "15(b)" " 8 (20,008)"         (SLOW-PRIMEP 20008)  NIL)
(test-expression "15(b)" " 9 (20,009)"         (SLOW-PRIMEP 20009)  NIL)
(test-expression "15(b)" "10 (20,010)"         (SLOW-PRIMEP 20010)  NIL)
(test-expression "15(b)" "11 (20,011 - PRIME)" (SLOW-PRIMEP 20011)  T)
(test-expression "15(b)" "12 (20,012)"         (SLOW-PRIMEP 20012)  NIL)
(test-expression "15(b)" "13 (20,013)"         (SLOW-PRIMEP 20013)  NIL)
(terpri)  ; Print a blank line1

;; Problem 16
(test-expression 16 "1 (TRANSPOSE1)" (TRANSPOSE1 '((1 2 3 4) (5 6 7 8) (9 10 11 12)))  '((1 5 9) (2 6 10) (3 7 11) (4 8 12)))
(test-expression 16 "2 (TRANSPOSE2)" (TRANSPOSE2 '((1 2 3 4) (5 6 7 8) (9 10 11 12)))  '((1 5 9) (2 6 10) (3 7 11) (4 8 12)))
(test-expression 16 "3 (TRANSPOSE3)" (TRANSPOSE3 '((1 2 3 4) (5 6 7 8) (9 10 11 12)))  '((1 5 9) (2 6 10) (3 7 11) (4 8 12)))
(terpri)  ; Print a blank line1


;; Print out a final blank line
(terpri)