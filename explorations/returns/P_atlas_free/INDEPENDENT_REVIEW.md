# Review boundary for return P

## Local isolation

**PROVED / CERTIFIED.** The primary reviewer read the full phase gauge,
the 96 residual definitions, the modular rank argument, the exact inverse,
and the weighted Taylor proof in `local/LOCAL_ISOLATION.md`. Independent
execution of `python3 -S local/verify_isolated.py` passed. The phase norm
and the meaning of the radius are explicit; no structural ansatz is imposed
on the perturbed triple. The finite equivalence action transfers isolation,
not the identical numerical coordinate radius, to other representatives.

The product triple is distinct from the continuous construction because an
isolated point cannot lie on an embedded two-dimensional solution surface.
Together with the supplied component theorem this gives two complete known
components in the equivalence quotient. It does not exhaust all components.

## Fourier-fibre classification and local A

**PROVED / CERTIFIED, relative to the supplied companion-surface input.**
The primary reviewer read the full analytic reduction and exact verifier.
A separate reviewer independently derived the ray equations, exhausted the
sixteen slope profiles, checked the conservative graph argument, and
recomputed the block normalization into the specific supplied orbit GM.
Both reviewers independently replayed the finite checker successfully.
The detailed second review and its source hashes are retained in
`global/FOURIER_INDEPENDENT_AUDIT.md` and `global/FOURIER_AUDIT_RECEIPT.json`.

The exact fibre at D=diag(1,1,i) has 48 rays and eight bases. Rational
interval enclosures certify 960 strictly nonzero cross overlaps and all
48 full five-phase Jacobian determinants. The implicit-function theorem
and compactness rule out additional ray branches near that parameter;
the conservative graph and explicit canonical completions then give
exactly eight bases, all in GM, on some parameter neighbourhood.
This is a qualitative local theorem. No neighbourhood radius or global
Fourier-parameter classification is claimed.

## Ray-algebra length and dimension

**PROVED with an explicitly declared literature input.** A second reviewer
independently read Sun, arXiv:2610.12180v1, Theorem 3.1 and checked its
specified scheme and conclusions. The scheme is exactly the unsaturated
zero scheme of ten bidegree-(1,1)
equations, and each of its 2Z₂ boundary local rings has length one.
Consequently the regular-sequence/Koszul argument gives total length 252
and affine length 252−2Z₂. The coefficient identity, minor counts, and
counterexample arithmetic passed exact replay.

The ≤72 framed completion bound uses two matched signature choices and
six permutations per normalized side. The finite-fibre semialgebraic
dimension argument gives an upper bound of four; it gives no lower bound
and no openness of the projection. The trace-form criterion is applied to
the fixed **real** algebra, and its validity includes nilpotents.

This literature input is cited in the supplied L follow-up's
`globalization/PRIMARY_RESULTS.md`, §3, so it falls within the brief's
permission to use literature cited in the supplied material. The local
isolation theorem, the topology consequence, the predicate counterexample,
and the spectral obstruction do not depend on it.

## Global inequalities and maximum-principle audit

**PROVED relative to the stated return-L single-Hadamard and operator
identities.** The primary reviewer checked the factor-of-six normalization,
the capped moment inequality, the two branches of the single-Hadamard
dichotomy, interlacing, the rank conclusion, and the weighted variance
estimate. These conditions are necessary for a quartet; no contradiction
with quartet existence follows from them alone.

The Fritz–John caveat is substantive: because there are 96 residuals but
55 phase variables, abnormal multipliers for the raw residual presentation
exist at every point. A normalized nonzero multiplier does not cure this.
The report also distinguishes actual real solution branches from a
Jacobian kernel at singular points.

## What this review does not certify

- No Lean compilation or kernel replay is claimed.
- The external boundary theorem and the supplied component theorem are
  mathematical inputs, not assertions verified by hashing their sources.
- No four-dimensional atlas, atlas ball cover, or numerical triple census
  is used to prove any claim in this return. Exact rational intervals are
  used for the explicitly stated finite Fourier-fibre certificate.
- Global classification A, C, F, F′, and a replacement for Steps 3–4 remain
  unproved. The final `REPORT.md` distinguishes the results obtained from
  those remaining targets.
