# TinyJ

This software assumes a Windows installation and Python >= 3.6.2.

## TJ1asn

- Copy the `testing` folder (this folder) into your TinyJ folder. This is usually `C:\316java` if
you followed his instructions.
- Open a command line **at the TinyJ folder path, e.g. `C:\316java`**. You must run the commands
from this directory. If you run them from any other directory (e.g. the `testing` folder), it won't
work.
- Run `python testing\TJ1asn\generate_solutions.py` to generate the solutions into the `solutions`
folder. You only have to do this once.
- Run `python testing\TJ1asn\compile_and_run.py` to compile your `Parser.java` file and run it
against each of the example files. This will show the output of each run, allowing you to check
the results of each one and fix any errors you see.
- Once all of the examples run without errors, run `python testing\TJ1asn\compare.py` to compare all
of your attempts against the solutions to make sure the parse trees match. The program will tell you
which files did not match. If all files match, it will tell you `All good!`.

Tip: Add a stacktrace to Kong's `accept()` method so you know where exactly the issue happened
(i.e. in which actual function the error occurred).

Tip 2: Use Notepad++ with the Compare plugin to help you debug. It will show you the files side by
side and highlight the differences so you can see if your version missed any tokens.

## TJ3asn

- Follow the first two steps above.
- Run `python testing\TJ3asn\generate_solutions.py` to generate the solutions into the `solutions`
folder. You only have to do this once.
- Run `python testing\TJ3asn\generate_attempts.py` to run the virtual machine against each of the
example files using your instruction code.
- Run `python testing\TJ3asn\compare.py` to compare all of your attempts against the solutions to
make sure the generated instructions and memory dumps (and parse trees) match. The program will tell
you which files did not match. If all files match, it will tell you `All good!`.
