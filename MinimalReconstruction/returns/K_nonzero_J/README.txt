Return K: nonzero-J critical strips from two signed moment sums
Input snapshot: 368fbe04
Date: 2026-10-17

Read REPORT.md for the proof of N1 and N2.
Read INTEGRATION.md for the replacement Lean theorem boundary.

Full exact replay:
  python3 -m pip install -r requirements.txt
  python3 verify.py

Independent integer-polynomial replay without third-party packages:
  python3 verify.py --circuits-only

Integrity rejection check:
  python3 verify.py --self-test

Do not run Python with -O or PYTHONOPTIMIZE.

The proof uses no old nonzero-J square sum, quartic, Bernstein sign
certificate, Sturm root count, or numerical sampling. Only nine moments
and two sums of the unsquared corner signature are needed.

The new Lean integration and full repository axioms check have not been
compiled or run here; the full repository and Identity API were omitted
from the supplied handoff. No generated Lean proof is falsely labelled
as checked.

SUPPLEMENTARY_RANK_LEMMA.md is an independent optional improvement to
the Fourier-moment route. It is not a dependency of the N1/N2 proof.
