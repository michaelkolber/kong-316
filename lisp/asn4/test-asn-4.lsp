;; Load the testing functions
(load "../lisp-tester.lsp")

;; Load the functions
(load "lastname-4.lsp")

;; Problem 1
(test-expression 1 1 (SUM '(1 2 3 4 5))          15)
(test-expression 1 2 (SUM '(5))                  5)
(test-expression 1 3 (SUM '(1 0 2 3 4 5))        15)
(test-expression 1 4 (SUM '(10 15 85 46 35 3))   194)
(test-expression 1 5 (SUM '())                   0)
(terpri)  ; Print a blank line

;; Problem 2
(test-expression 2 " 1" (NEG-NUMS '(1 2 3 4 5))                       '())
(test-expression 2 " 2" (NEG-NUMS '(5))                               '())
(test-expression 2 " 3" (NEG-NUMS '(1 0 2 3 4 5))                     '())
(test-expression 2 " 4" (NEG-NUMS '(-10 15 -85 46 35 3))              '(-10 -85))
(test-expression 2 " 5" (NEG-NUMS '(-10 15 -85 0 35 3))               '(-10 -85))
(test-expression 2 " 6" (NEG-NUMS '(-10 -15 -85 -0 -35 -3))           '(-10 -15 -85 -35 -3))
(test-expression 2 " 7" (NEG-NUMS '(0 0 0))                           '())
(test-expression 2 " 8" (NEG-NUMS '(0 -0 0))                          '())
(test-expression 2 " 9" (NEG-NUMS '(-1 0 -8 2 0 8 -1 -8 2 8 4 -3 0))  '(-1 -8 -1 -8 -3))
(test-expression 2 "10" (NEG-NUMS '())                                NIL)
(terpri)  ; Print a blank line

;; Problem 3
(test-expression 3 1 (INC-LIST-2 '(3 2.1 1 7.9) 5)  '(8 7.1 6 12.9))
(test-expression 3 2 (INC-LIST-2 '(1 2 3) 0)        '(1 2 3))
(test-expression 3 3 (INC-LIST-2 '(1 2 3) -1)       '(0 1 2))
(test-expression 3 4 (INC-LIST-2 '(-1 2 3) 1)       '(0 3 4))
(test-expression 3 5 (INC-LIST-2 '(0) -1)           '(-1))
(test-expression 3 6 (INC-LIST-2 '() 5)             NIL)
(terpri)  ; Print a blank line

;; Problem 4
(test-expression 4 1 (INSERT  4 '(0 0 1 2 4))           '(0 0 1 2 4 4))
(test-expression 4 2 (INSERT  4 '(0 0 1 3 3 7 8 8))     '(0 0 1 3 3 4 7 8 8))
(test-expression 4 3 (INSERT  5 '(0 0 1 2 4))           '(0 0 1 2 4 5))
(test-expression 4 4 (INSERT  0 '(-1 0 0 1 3 3 7 8 8))  '(-1 0 0 0 1 3 3 7 8 8))
(test-expression 4 5 (INSERT -1 '(0 0 1 3 3 7 8 8))     '(-1 0 0 1 3 3 7 8 8))
(test-expression 4 6 (INSERT  8 '())                    '(8))
(terpri)  ; Print a blank line

;; Problem 5
(test-expression 5 1 (ISORT '(0 0 1 2 4))     '(0 0 1 2 4))
(test-expression 5 2 (ISORT '(2 7 3 7 5 2))   '(2 2 3 5 7 7))
(test-expression 5 3 (ISORT '(9 8 7 6 1 -1))  '(-1 1 6 7 8 9))
(test-expression 5 4 (ISORT '(0))             '(0))
(test-expression 5 5 (ISORT '())              NIL)
(terpri)  ; Print a blank line

;; Problem 6
(test-expression 6 1 (SPLIT-LIST '(0 0 1 2 4))          '((0 1 4) (0 2)))
(test-expression 6 2 (SPLIT-LIST '(2 7 3 7 5 2))        '((2 3 5) (7 7 2)))
(test-expression 6 3 (SPLIT-LIST '(9 8 7 6 1 -1))       '((9 7 1) (8 6 -1)))
(test-expression 6 4 (SPLIT-LIST '(0))                  '((0) NIL))
(test-expression 6 5 (SPLIT-LIST '())                   '(NIL NIL))
(test-expression 6 6 (SPLIT-LIST '(A B C D 1 2 3 4 5))  '((A C 1 3 5) (B D 2 4)))
(test-expression 6 7 (SPLIT-LIST '(B C D 1 2 3 4 5))    '((B D 2 4) (C 1 3 5)))
(test-expression 6 8 (SPLIT-LIST '(A))                  '((A) NIL))
(terpri)  ; Print a blank line

;; Problem 7
(test-expression 7 1 (PARTITION '(7 5 3 2 1 5) 1)        '(NIL (7 5 3 2 1 5)))
(test-expression 7 2 (PARTITION '(4 0 5 3 1 2 4 1 4) 4)  '((0 3 1 2 1) (4 5 4 4)))
(test-expression 7 3 (PARTITION '(9 8 7 6 1 -1) 0)       '((-1) (9 8 7 6 1)))
(test-expression 7 4 (PARTITION '() 9)                   '(NIL NIL))
(terpri)  ; Print a blank line

;; Problem 8
(test-expression 8 1 (POS 5 '(1 2 5 3 5 5 1 5))                         3)
(test-expression 8 2 (POS 'A '(3 2 1))                                  0)
(test-expression 8 3 (POS '(3 B) '(3 B))                                0)
(test-expression 8 4 (POS '(A B) '((K) (3 R C) A (A B) (K L L) (A B)))  4)
(test-expression 8 4 (POS '(3 B) '((3 B)))                              1)
(terpri)  ; Print a blank line

;; Problem 9
(test-expression 9 1 (SPLIT-NUMS 0)  '((0) NIL))
(test-expression 9 2 (SPLIT-NUMS 7)  '((6 4 2 0) (7 5 3 1)))
(test-expression 9 3 (SPLIT-NUMS 8)  '((8 6 4 2 0) (7 5 3 1)))
(terpri)  ; Print a blank line

;; Problem 10
(test-expression 10 "1 (possible false negative)" (SET-UNION '(A B C) '(D E F))  '(A B C D E F))
(test-expression 10 "2 (possible false negative)" (SET-UNION '(A B C) '(D A F))  '(B C D A F))
(test-expression 10 "3 (possible false negative)" (SET-UNION '() '(D A F))       '(D A F))
(test-expression 10 "4 (possible false negative)" (SET-UNION '(D A F) '())       '(D A F))
(test-expression 10 "5"                           (SET-UNION '() '())            '())
(terpri)  ; Print a blank line

;; Problem 11
(test-expression 11 1 (SET-REMOVE 'A '(A B C))  '(B C))
(test-expression 11 2 (SET-REMOVE 'A '(B A C))  '(B C))
(test-expression 11 3 (SET-REMOVE 'A '(B C A))  '(B C))
(test-expression 11 4 (SET-REMOVE 'A '(D F))    '(D F))
(test-expression 11 5 (SET-REMOVE 'A '())       '())
(terpri)  ; Print a blank line

;; Problem 12
(test-expression 12 "1 (possible false negative)" (SET-EXCL-UNION '(A B C) '(D E F))  '(A B C D E F))
(test-expression 12 "2 (possible false negative)" (SET-EXCL-UNION '(A B C) '(D A F))  '(B C D F))
(test-expression 12 "3 (possible false negative)" (SET-EXCL-UNION '() '(D A F))       '(D A F))
(test-expression 12 "4 (possible false negative)" (SET-EXCL-UNION '(D A F) '())       '(D A F))
(test-expression 12 "5"                           (SET-EXCL-UNION '(D A F) '(D A F))  '())
(test-expression 12 "6"                           (SET-EXCL-UNION '() '())            '())
(terpri)  ; Print a blank line

;; Problem 13
(test-expression 13 1 (SINGLETONS ())              NIL)
(test-expression 13 2 (SINGLETONS '(G A B C B))    '(G A C))
(test-expression 13 3 (SINGLETONS '(H G A B C B))  '(H G A C))
(test-expression 13 4 (SINGLETONS '(A G A B C B))  '(G C))
(test-expression 13 5 (SINGLETONS '(B G A B C B))  '(G A C))
(terpri)  ; Print a blank line


;; Print out a final blank line
(terpri)