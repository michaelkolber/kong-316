(defun concat (list)
  (format nil "~{~a~}" list))

(defun test-expression (problem-number test-case-number expression expected-value)
    (print (concat (list "Problem " problem-number ", Case " test-case-number ": " (if (equal expression expected-value)
        (concat (list (format NIL "~c[32mPassed~c[0m" #\Esc #\Esc) " (evaluated to " expression ")"))
        (concat (list (format NIL "~c[31mFAILED~c[0m" #\Esc #\Esc) " (evaluated to " expression ", expected " expected-value ")")))))))

