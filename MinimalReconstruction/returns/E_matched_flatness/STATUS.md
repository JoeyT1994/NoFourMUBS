# Status: matched-flatness handoff

**G1 achieved. G2 achieved independently.** Both requested L-id identities
are certified exactly, and a smaller third-moment proof is supplied.
Consequently the supplied strict side-existence theorem implies
`MatchedExistence` throughout the entire domain `R > 0`.

## 1. Proved on paper

- The forced block has zero flatness defect once the two certified L-id
  identities are combined with the universal fourth-moment formula and the
  block Gram equations.
- Independently, zero row/column sums of the defect reduce flatness to four
  weighted defects. Their eight certified affine coefficients vanish. An
  invertible change of coordinates then forces every individual defect to
  vanish.
- All divisors in both proofs are nonzero throughout `R > 0`. There are no
  product-regular, determinant-discriminant, or additional genericity guards.
- The theorem holds for any actual normalized sides with conjugate matched
  signatures, and for both choices of matched sheet.
- Together with the supplied side-existence theorem, this proves L1 at the
  mathematical level. It does not rely on the classification paper or a
  density argument for completions.

## 2. Certified by exact computation

- `A01 - A10 = 0` and `A00 + (chi/g) A10 + eta A11 - 9 = 0` as identities
  of rational functions of four independent variables.
- All eight coefficients of the four weighted third-moment defects vanish
  in the same rational-function field.
- The smaller proof has **110 coefficient identities**, encoded with
  **255 distinct rational polynomials**. Every polynomial slice has at most
  **1,730 monomials**, with explicit integer coefficients.
- A separate standard-library checker verifies the coefficient sums and
  **136 distinct cofactor/product identities**, without FLINT or rational
  function simplification. Another verifier reconstructs the rational
  targets and checks the complete certificate data against those targets.
- Independent integer Laurent arithmetic verifies the actual-side
  invariant identities, horizontal/vertical scalar equality, the moment
  formulas, and both contractions.
- The supplied anchor is replayed in an explicit 16-dimensional rational
  field. Its matched defects are zero; its two nonmatched defects are
  exactly `216/49`.

No random evaluation, floating-point residual, tolerance, interpolation
guess, or assumed flatness is an acceptance step. The supplied coefficient
JSON is checked against freshly constructed symbolic expressions.

## 3. Numerical evidence

None is needed or used for the conclusions. Three finite rational seed
evaluations are retained under `audit/` as exact consistency checks. They
are not offered as a universal certificate. The anchor check is also exact
and is supplementary to the global symbolic proofs.

## 4. What remains open or outside this delivery

- A compiled Lean port of this new proof and its coefficient certificates.
- The supplied side-existence theorem's separate Lean formalization. The
  present result uses that theorem at its stated paper level.
- `MatchedDensityReach` (D), assigned to a separate handoff.
- Construction/replay of the finite atlas input to the end-to-end theorem.
- Any claim about `R = 0` when the original rational divisors vanish.

There is no remaining matched-flatness mathematical gap on `R > 0` within
the stated side-existence framework. This does not make the entire
no-four-MUB theorem unconditional.

## 5. Reproduction and measurements

Run `python verify_all.py`; use `requirements.txt` for the only external
Python dependency. The default checks both independent universal proofs.
Run `python verify_all.py --quick` for the complete third-moment route with
independent integer certificate replay, omitting only the large L-id proof.

The original successful L-id computation used 140.60 CPU seconds and
755,636 KiB peak RSS. The exported-certificate run used 157.04 seconds wall,
157.00 seconds CPU and 814,932 KiB peak RSS. The small rational cancellation
alone originally used 1.03 CPU seconds and 35,620 KiB peak RSS. Including
serialization and full coefficient-data binding increases its resource use;
the final end-to-end measurements below report that complete replay.

**Final combined replay: PASS, all stages exited zero.**

| Stage | Wall time | Peak process RSS |
|---|---:|---:|
| Third-moment targets and full certificate binding | 4.83 s | 533,820 KiB |
| Independent integer coefficients and cofactors | 9.87 s | 302,460 KiB |
| Original L-id and certificate regeneration | 156.63 s | 816,728 KiB |
| Complete `verify_all.py` | 171.83 s | 816,728 KiB (797.59 MiB) |

The complete replay used 171.79 child CPU seconds. Peak memory is the largest RSS of any sequential verifier process; the small wrapper process is separate. Full measurements and per-stage logs are in `reports/verification.json` and `reports/`.

The measurements describe this session's Python 3.12.14 / python-flint 0.9.0
Linux environment. The computation does not require the proposed 1.5 TB,
96-core final-replay machine. Individual verifier processes run sequentially.

## 6. Errors found

No mathematical error was found in the handoff's L-id formulas. The earlier
timeouts were computational failures, not counterexamples. The delivered
method removes the large common-denominator bottleneck by retaining small
source factors until the final exact numerator sums.
