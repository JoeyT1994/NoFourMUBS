# MomentReduction return — 15 October 2026

Read `REPORT.md` first.

**Proved and exactly certified from primary inputs:** the suggested identity (R), plus two additional scalar identities. The main certificate has five moment and 43 orthogonality cofactor templates.

**Full Eq. (sos):** proved as a paper implication using the explicitly accepted upstream all-corner conjugacy and strict-corner coverage theorems. An independent proof/certificate from inputs 1–3 alone is **not established** here.

**Paper:** Eq. (sos) is unnecessary for the stated Fourier reduction, given those upstream results. `PAPER_REPLACEMENT.tex` supplies replacement text without S.7 or the Fourier-vanishing appeal at that step.

Replay:

```sh
python3 -I verify.py
python3 -I audit.py
sha256sum -c SHA256SUMS
```

The verifier and audit use only the Python standard library. Acceptance uses integer/rational arithmetic exclusively. The numerical transcript is separate and has no role in acceptance.

`CERTIFICATE_FORMAT.md` explains the finite-symmetry encoding, its explicit rational Laurent cofactors, and the checker trust boundary. `PROVENANCE.json` pins the copied inputs; `SHA256SUMS` pins all returned files other than the manifest itself. No new Lean build or end-to-end no-four-MUB verification is claimed.
