# Triples results

Start with TRIPLES.md. It contains the conclusions, proofs, explicit
matrices and seed formulas, counting limits, and the corrected scope of a
global classification program.

The main result is a correction: T1 and T2 in the supplied brief are false.
An entire explicit circle of triple edges lies outside both Fourier
families. There are also positive existence and coordinate results.

## Contents

- TRIPLES.md: main report and full arguments.
- OMEGA_COMPLETION.md: detailed cubic specification of the non-Fourier
  omega-seed completion, its root proof, and reconstruction convention.
- STATUS.md: proved statements, exact computations, numerical diagnostics
  and remaining gaps, separated explicitly.
- verify_all.py: runs every exact verifier and fails if any check fails.
- verify_*.py and exact_field.py: reproducible acceptance checks.
- requirements.txt: the exact symbolic package version used.
- VERIFICATION.txt: successful complete replay.
- INPUT_SHA256.json: hashes of the original upload and relevant input
  definitions.

## Replay

Python 3.10 or later is intended. The completed replay used Python 3.12
and SymPy 1.14.0.

~~~bash
python3 -m pip install -r requirements.txt
python3 verify_all.py
~~~

The isolated fourth-root counterexample can also be verified without
installing any package:

~~~bash
python3 verify_dita.py
python3 verify_dita_corners.py
~~~

No search, internet access, random initialization, or precomputed numerical
root file is needed for replay. The cubic construction is verified by
exact identities and a discriminant argument, with no numerical root
selection.

The input archive and its exploratory code were not modified. This is a
separate result package.
