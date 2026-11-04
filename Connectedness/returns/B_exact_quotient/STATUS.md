# Status

## Fully proved in this bundle

| Task | Verdict | Exact scope |
|---|---|---|
| A: all positive local maxima | **Proved** | Exactly the 18-point orbit, on the full four-torus; both degeneracy surfaces, their intersection, and their exceptional fibers are handled. |
| A: exact representative/value | **Proved** | alpha=arccos(1/4), theta*=alpha(1,2,-1,-2), R*=1594323/4096. |
| A: nondegeneracy | **Proved** | Exact negative-definite Hessian at theta* and congruence transport under all seed maps. |
| Global upper bound | **Proved** | R<=1594323/4096 everywhere, with equality precisely at those 18 points. |
| B: seed-map action | **Proved relative to the permitted side theorem** | Row/column maps preserve sheet; transpose and conjugation each reverse it as in COVERAGE.md (3). |
| B: maximum classes | **Proved relative to the permitted side theorem** | All 18 positive-sheet completions are equivalent to one K*. |
| C1: continuity | **Proved relative to the permitted reconstruction identities** | Whole strict domain, including root cuts and the s=0 qualification. |
| C2: component maxima | **Proved** | Every component contains a positive local maximum; in particular S has at most 18 components. |
| C3: Record criterion | **Proved** | Full horizontal boundary transfer into a strict interior makes a finite union relatively clopen. |
| C3: executable checker | **Supplied and regression-checked** | Exact rational geometry, exhaustive binary partitions, full residual exclusions, explicit permutation/winding maps, outward Arb decisions. |
| C4: assembly | **Proved as the requested conditional theorem** | Any actual finite Record family satisfying the stated conditions covers every non-Tao class. |
| D on Fourier family | **Proved** | Exact squared singular spectrum 12×5, 9×12, 3×4, 0×4 for all two-parameter Fourier-family members. |

Theorem A uses the supplied universal side identities in the raw-Gram
boundary lifting lemma. Their explicit localization argument is examined
and applied at zero discriminant without introducing a hidden division by
that discriminant. The global classification imports are used only where
identified in COVERAGE.md.

## Exact computation versus numerical evidence

The acceptance calculations use:

- integer Laurent-polynomial identities;
- exact rational symbolic derivatives, determinants, resultants and
  Groebner bases;
- Sturm root counts with rational isolating intervals;
- rational interval sign checks;
- exact algebraic-field evaluation of the maximum;
- outward-rounded Arb intervals only for the reusable Record checker.

There is no sampled acceptance test, numerical optimization threshold,
floating-point Hessian decision, or uncertified four-dimensional cover
in the proof of Claim A.

The required preliminary supplied programs were run:

- toolkit/selftest.py: SELFTEST PASS;
- toolkit/maxima.py: 933 positive-seed ascents, one rounded maximum value,
  18 candidate points, all in one orbit.

These are exploration/regression results only and play no role in the
proof's acceptance decisions. The supplied floating constructor code is
not promoted into a certified implementation.

## What is not supplied or not proved

1. **No actual nonempty finite Record atlas was supplied.** The bundle does
   not invent Record centers, ellipsoids, boundary trees, contraction
   certificates or local quartet-exclusion data.
2. **No actual atlas boundary certificate has been verified.** The boundary
   checker's selftest is deliberately an empty-physical-tube regression.
   Its PASS is not an atlas PASS.
3. **The no-four-MUBs conclusion is not certified by this bundle alone.**
   Applying the coverage theorem requires the actual Records, their
   boundary checks, representative membership, conjugation closure, local
   quartet exclusions and the separately stipulated Tao exclusion.
4. **Global Task D remains open here.** The Fourier-family theorem does not
   establish rank 21 or the sqrt(3) lower bound for every other Hadamard.
5. The permitted published-classification inputs MC1–MC5 are not
   independently re-proved or audited here. They are accepted exactly as
   authorized in the prompt.

## Corrections and qualifications established

- MC5 alone does not justify the draft's maximum-orbit membership step.
  Pure row/column sheet preservation and the exact 18-point orbit repair
  it and give the stronger single-class conclusion.
- A reversed raw delta sign can be undefined at strict seeds with s=0.
  Local positive-rho branches nevertheless prove class continuity.
- The proposed unmodified interval-box tests cannot terminate on every
  torus box: the F3 seed has R=gradient=Hessian=0 with strict seeds
  arbitrarily nearby. The algebraic proof avoids that obstruction.
- Strict physical all-equal pole seeds exist. Only their R-criticality is
  excluded. The bundle includes an exact physical witness with
  q=313/185, preventing accidental use of a false domain exclusion.
- The q=1 real corners are positive critical points with R=256.
  They are saddles, not additional maxima, and are checked explicitly.

## Verification receipt

Run python3 verify_all.py from the output directory. The script checks
payload hashes and runs every acceptance verifier. It exits nonzero on
failure. VERIFICATION.json records the completed replay in the execution
environment used to produce this bundle.

All analytic geometry has been written out; a script PASS is scoped to
its specified algebra and arithmetic rather than represented as automated
verification of an unstated theorem.

