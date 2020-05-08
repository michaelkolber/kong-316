# kong-316

Helpful programs for Kong's 316 class at QC. This repository does not contain
solutions as some other repositories do.

## Lisp Assignments

Lisp assignment testing scripts can be found in the `lisp` folder.

To use them, place your file in the same folder as the testing script. Then,
modify the script to load your file instead of `lastname-x.lsp`. Finally, run
the testing script. You should get a color-coded output telling you if each test
case passed or failed.

For example, if I wanted to check Assignment 3, I would:

1. Place `kolber-3.lsp` into `lisp/asn3/`.
1. Edit `test-asn-3.lsp` to load `kolber-3.lsp` instead of `lastname-3.lsp`.
1. From `lisp/asn3/`, run `clisp ./test-asn-3.lsp`.

## TinyJ Assignments

Read the README in the `tinyj/testing` folder.
