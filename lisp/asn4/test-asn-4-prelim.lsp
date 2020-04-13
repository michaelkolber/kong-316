;; Load the testing functions
(load "../lisp-tester.lsp")

;; Load the functions
(load "lastname-4-prelim.lsp")

;; Problem A
(test-expression "A" 1 (MY-SUM '(1 2 3 4 5))          (SUM '(1 2 3 4 5)))
(test-expression "A" 2 (MY-SUM '(5))                  (SUM '(5)))
(test-expression "A" 3 (MY-SUM '(1 0 2 3 4 5))        (SUM '(1 0 2 3 4 5)))
(test-expression "A" 4 (MY-SUM '(10 15 85 46 35 3))   (SUM '(10 15 85 46 35 3)))
(terpri)  ; Print a blank line

;; Problem B
(test-expression "B" 1 (MY-NEG-NUMS '(1 2 3 4 5))              (NEG-NUMS '(1 2 3 4 5)))
(test-expression "B" 2 (MY-NEG-NUMS '(5))                      (NEG-NUMS '(5)))
(test-expression "B" 3 (MY-NEG-NUMS '(1 0 2 3 4 5))            (NEG-NUMS '(1 0 2 3 4 5)))
(test-expression "B" 4 (MY-NEG-NUMS '(-10 15 -85 46 35 3))     (NEG-NUMS '(-10 15 -85 46 35 3)))
(test-expression "B" 5 (MY-NEG-NUMS '(-10 15 -85 0 35 3))      (NEG-NUMS '(-10 15 -85 0 35 3)))
(test-expression "B" 6 (MY-NEG-NUMS '(-10 -15 -85 -0 -35 -3))  (NEG-NUMS '(-10 -15 -85 -0 -35 -3)))
(test-expression "B" 7 (MY-NEG-NUMS '(0 0 0))                  (NEG-NUMS '(0 0 0)))
(test-expression "B" 8 (MY-NEG-NUMS '(0 -0 0))                 (NEG-NUMS '(0 -0 0)))
(test-expression "B" 9 (MY-NEG-NUMS '(-1 0 -8 2 0 8 -1 -8 2 8 4 -3 0))  (NEG-NUMS '(-1 0 -8 2 0 8 -1 -8 2 8 4 -3 0)))
(terpri)  ; Print a blank line

;; Problem C
(test-expression "C" 1 (MY-INC-LIST-2 '(3 2.1 1 7.9) 5)  (INC-LIST-2 '(3 2.1 1 7.9) 5))
(test-expression "C" 2 (MY-INC-LIST-2 '(1 2 3) 0)        (INC-LIST-2 '(1 2 3) 0))
(test-expression "C" 3 (MY-INC-LIST-2 '(1 2 3) -1)       (INC-LIST-2 '(1 2 3) -1))
(test-expression "C" 4 (MY-INC-LIST-2 '(-1 2 3) 1)       (INC-LIST-2 '(-1 2 3) 1))
(test-expression "C" 5 (MY-INC-LIST-2 '(0) -1)           (INC-LIST-2 '(0) -1))
;; (test-expression "C" 6 (MY-INC-LIST-2 '() 5)             (INC-LIST-2 '() 5))
(terpri)  ; Print a blank line

;; Problem D
(test-expression "D" 1 (MY-INSERT  4 '(0 0 1 2 4))           (INSERT  4  '(0 0 1 2 4)))
(test-expression "D" 2 (MY-INSERT  4 '(0 0 1 3 3 7 8 8))     (INSERT  4  '(0 0 1 3 3 7 8 8)))
(test-expression "D" 3 (MY-INSERT  5 '(0 0 1 2 4))           (INSERT  5  '(0 0 1 2 4)))
(test-expression "D" 4 (MY-INSERT  0 '(-1 0 0 1 3 3 7 8 8))  (INSERT  0  '(-1 0 0 1 3 3 7 8 8)))
(test-expression "D" 5 (MY-INSERT -1 '(0 0 1 3 3 7 8 8))     (INSERT -1  '(0 0 1 3 3 7 8 8)))
;; (test-expression "D" 6 (MY-INSERT  8 '())                    (INSERT  8  '()))
(terpri)  ; Print a blank line

;; Problem E
(test-expression "E" 1 (MY-ISORT '(0 0 1 2 4))     (ISORT '(0 0 1 2 4)))
(test-expression "E" 2 (MY-ISORT '(2 7 3 7 5 2))   (ISORT '(2 7 3 7 5 2)))
(test-expression "E" 3 (MY-ISORT '(9 8 7 6 1 -1))  (ISORT '(9 8 7 6 1 -1)))
(test-expression "E" 4 (MY-ISORT '(0))             (ISORT '(0)))
(terpri)  ; Print a blank line

;; Problem F
(test-expression "F" 1 (MY-SPLIT-LIST '(0 0 1 2 4))     (SPLIT-LIST '(0 0 1 2 4)))
(test-expression "F" 2 (MY-SPLIT-LIST '(2 7 3 7 5 2))   (SPLIT-LIST '(2 7 3 7 5 2)))
(test-expression "F" 3 (MY-SPLIT-LIST '(9 8 7 6 1 -1))  (SPLIT-LIST '(9 8 7 6 1 -1)))
(test-expression "F" 4 (MY-SPLIT-LIST '(0))             (SPLIT-LIST '(0)))
(terpri)  ; Print a blank line

;; Problem G
(test-expression "G" 1 (MY-PARTITION '(7 5 3 2 1 5) 1)        (PARTITION '(7 5 3 2 1 5) 1))
(test-expression "G" 2 (MY-PARTITION '(4 0 5 3 1 2 4 1 4) 4)  (PARTITION '(4 0 5 3 1 2 4 1 4) 4))
(test-expression "G" 3 (MY-PARTITION '(9 8 7 6 1 -1) 0)       (PARTITION '(9 8 7 6 1 -1) 0))
;; (test-expression "G" 4 (MY-PARTITION '() 9)                   (PARTITION '() 9))
(terpri)  ; Print a blank line


;; Print out a final blank line
(terpri)