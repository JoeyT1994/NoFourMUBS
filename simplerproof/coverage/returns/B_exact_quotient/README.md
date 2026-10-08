# Coverage proof return

Read COVERAGE.md for the main results and proof assembly, then STATUS.md
for the exact proved/conditional/open split.

The main result is an exact algebraic proof that all positive local maxima
of R are the 18-point orbit of alpha(1,2,-1,-2), alpha=arccos(1/4).
The requested quotient coverage argument is proved, with a concrete finite
boundary-certificate format for actual Records.

Run all acceptance verifiers from this directory:

~~~text
python3 verify_all.py
~~~

The replayed environment used Python 3.12.14, SymPy 1.14.0 and
python-flint 0.9.0. The core algebra uses SymPy and the standard library;
the reusable boundary checker uses Arb through python-flint.

The original permitted proof inputs are copied under reference/.
The exact supplied Fourier table and the original prompt are under inputs/.
The structural polynomial is independently regenerated before the Fourier
table is used in a derivative certificate.

No actual nonempty Record atlas or boundary tree was included in the
handoff. Accordingly the boundary selftest is an explicitly empty-tube
arithmetic regression; it is not an atlas certificate. The local
quartet-exclusion certificates remain inputs supplied by the integrator.

