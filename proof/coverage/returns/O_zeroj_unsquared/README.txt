Return O: zero-J critical strips from two weighted mixed-corner signatures
Checked and reduced: 18 October 2026
Input snapshot: 73152c64

RESULT: Z1 and Z2 are PROVED, with exact polynomial certificates.
Read REPORT.md first. The proof uses two unsquared sums over mixed corners,
then obtains geometric rows directly from the permanent identity.

REPLAY
  python3 -m pip install -r requirements.txt
  python3 verify.py --self-test

Normal replay requires only Python and python-flint. It does not require
SymPy, Lean, the input archive, a repository checkout, or network access.
The assertions must remain enabled; optimized Python (-O) is rejected.

All certificate data total 43,138 uncompressed bytes, below 50,000 bytes.
The 17 integer-DAG identities are accompanied by regeneration from original
signature/moment formulas, 21 Laurent moment checks, 2 regrouping checks,
9 geometric polynomial checks, an independent original-product source checker,
27 exact boundary audit checks, and rejection tests for invalid certificates.
The new repeated-modulus reduction removes one former mixed certificate and
saves 6,755 certificate bytes relative to the earlier return.

FILES
  REPORT.md                         Complete proof and status boundaries
  CERTIFICATE_FORMAT.md             Source binding, polynomial format, guards
  INTEGRATION.md                    Lean insertion and dependency audit
  certificates/                    All external polynomial certificate data
  support/                         Exact source calculations and verifiers
  review/                          Independent reviews, subproofs, import audit
  lean/CoverageStripGeom.candidate.lean
                                   Explicitly UNCOMPILED geometric simplification
  PROVENANCE.json                   Input hashes and dependency scope
  CERTIFICATE_STATISTICS.json       Exact data budget and check counts
  VERIFY_TRANSCRIPT.txt             Actual successful replay transcript
  SHA256SUMS                       Integrity manifest

LEAN STATUS
The complete Lean project and lean/check_axioms.py were not supplied.
No Lean build or full axiom audit is claimed. Shared gauge/moment modules
remain imported by K; extract their surviving contents before deleting them.

OPTIONAL REGENERATION
Install requirements-regenerate.txt, then run:
  python3 support/generate_mixed.py
  python3 support/verify_scalar_boundary.py --regenerate
  python3 support/verify_scalar_core.py --regenerate
The defining formulas regenerate the data. If any shipped bytes are
intentionally changed, rebuild SHA256SUMS before ordinary full replay.
