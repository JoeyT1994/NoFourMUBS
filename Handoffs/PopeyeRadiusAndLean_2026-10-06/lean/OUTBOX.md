# Centiradian Lean first-wave report

Date: 2026-10-06. Worker: `/root/centiradian_lean`. This additive packet preserves the corrected source package and every historical packet. No factory registry or cluster state was changed. No nested agent was used.

## Result and exact scope

Seven new modules and an aggregate audit compile successfully. They contain **49 checked theorems**, with no `sorry`, `admit`, `sorryAx`, new axiom, `native_decide`, or opaque computational assumption. Every theorem's axiom audit is exactly `propext`, `Classical.choice`, and `Quot.sound`.

**The radius-1/100 exclusion is not yet proved in Lean.** `Centiradian20261006.CentiradianExclusion` is an explicit target definition, not an asserted theorem. The aggregate audit prints its complete statement. It requires an actual six-by-six unit-entry matrix with `HH* = 6I`, dephasing, a positive leading invariant maximal over all 400 positional corners with ties allowed, and a punctured circular phase-lift neighborhood of either literal seed `(2,4,4,2) pi/3` or `(4,2,2,4) pi/3` of radius at most `1/100`. There is no quartet-occurrence premise and no H9, classification, good-minor threshold, or reconstruction hypothesis hidden in that target.

These are scoped checked components awaiting independent semantic review and director admission. They do not authorize pruning the unresolved numerical ledger or asserting the no-four-MUB theorem.

## New checked content

| Module | Mathematical content | Successful check |
|---|---|---|
| `CentiradianPhysical` | Scalar definition of an actual physical Hadamard; exact 400 subset count; actual partial-Gram transformation under arbitrary unit row/column phases; invariant gauge invariance; physical complementary-column Gram sign reversal; unchanged p/W and negated J; all-corner maximality bound on the correct complementary polynomial; literal dephased four-entry invariant binding. | `check-physical-03` |
| `CentiradianNormalization` | Explicit dephasing of an actual H preserves physicality, every positional invariant, the leading invariant, and maximality. | `check-normalization-01` |
| `CentiradianArithmetic` | Exact source R expansion; a sign-safe absolute-J envelope; quartic identity `L = 243(ad-bc)^2` and `L <= 972 rho^4` on the full cube; exact scalar majorant arithmetic for both .01 and .025; outward dyadic .01 comparison; `sqrt R < 48 rho^2` and `< 67 rho^2` under their explicit majorant hypotheses. | `check-arithmetic-04` |
| `CentiradianRadial` | Existence of an attained finite sup radius; contraction forces every normalized coordinate to zero at every scale, without division by R or the determinant cone; cubic-error/fourth-order-tail reduction; exact reported .01 maximum-score comparison. | `check-radial-02` |
| `CentiradianTaylor` | A checked degree-sixteen exponential remainder with factor two; finite complex-coefficient sum bound; four-coordinate integer frequency bound; tail `2 rho^17 / 17! * sum(norm(c_e) * norm1(e)^17)` whenever `norm1(e) rho <= 9`. | `check-taylor-03` |
| `CentiradianUnitPair` | Exhaustive two-orientation formula for unit complex u,v with prescribed nonzero sum; anchored unit-row formula; direct derivation of this chart for side rows of an actual dephased physical H, retaining the nonzero chart guard explicitly. | `check-unit-pair-02` |
| `CentiradianCover` | Exact closed-box bisection retains every point, including the midpoint; induction proving soundness of a finite tree whose leaves carry checked rejection proofs; finite-root composition theorem. | `check-cover-02` |

`CentiradianAudit.lean` imports all seven successful objects and audits all 49 theorem declarations in `check-audit-01/stdout.log`. There is no claim that the numerical leaf list has been instantiated as a `CertifiedCover`.

## Critical declarations

- `physical_gram_complement`, `physical_corner_complement`, and `physical_maximal_complement_bound` prove the actual physical Gram/maximality side of the corrected complementary-invariant argument. The determinant-square identity is still separate.
- `normalize_physical`, `normalize_dephased`, `normalize_cornerR`, and `normalize_maximal` establish actual full-matrix dephasing transport.
- `physical_side_row_pair` connects the exhaustive unit-circle formula to a physical row. Its explicit premise is that the normalized residual sum `a0` is nonzero; it does not select an orientation or prove chart guards from the radius.
- `quartic_gram_identity` and `quartic_gram_bound` include the cone `ad-bc=0`, with no division or lower cutoff.
- `scalar_majorant` requires `0 <= p`, `0 <= W`, `p <= 19 rho^2`, `abs J <= 22 rho^3`, `W <= 121 rho^4`, and the displayed quartic-plus-error bound on `324W-81p^2`. `enlarged_scalar_majorant` replaces 22 by 23 and regenerates the .025 coefficients exactly.
- `sqrt_bound_from_majorant` proves the .01 result through the exact outward dyadic radius `1441151880758559/144115188075855872`. The .025 corollary currently covers the exact rational `1/40`; its slightly outward native radius is not silently substituted.
- `radial_contraction` proves the sup-coordinate contradiction from exact error/residual inequalities and row scores strictly below one. It does not assert that native Taylor outputs satisfy those inequalities.
- `finite_frequencyTaylor16_error` supplies a reusable analytic bridge for the radius worker's new Laurent expansion, using the readily checked factor-two Mathlib remainder. The generated Laurent coefficients are not accepted by this theorem without a future exact binding proof.

## Still-open obligations for the actual .01 theorem

1. **Signed determinant binding.** Prove the 48-term raw Laurent determinant, its pure imaginary character and relevant symmetries, and `f(Q)^2 = R(Q complement)` for actual corners. The physical Gram sign reversal is now checked, but the polynomial identity `R(p,-J,W) = -D^2` is not. The off-physical residual extension using conjugates instead of inverses must also be bound to the precise functions used by the engine.
2. **Seed analytic bounds.** Bind the actual exponential seed phases to the p/J/W and quartic-error inequalities required by `scalar_majorant`, including all Taylor remainder constants. The exact quartic cancellation and subsequent rational arithmetic are checked. The new finite-frequency remainder offers an alternative route, but the full Laurent coefficient table, zero coefficients through degree three, and polynomial reconstruction are still unverified in Lean.
3. **Complete physical completion chart.** From the radius domain, prove the nonzero residual sums and real square-root guards, opposite side orientations, permitted anchor selection and ordering, K invertibility, and the exact lower-block formula. Dephasing and the individual exhaustive side-row formula are checked; the full two-sided normalization and its uniform guards are not.
4. **Symmetry and root-domain coverage.** Prove the actual full-H operations induce the advertised phase maps, preserve the selected side conventions, and transport maximality and the local boxes. Establish the full 324 starting cells and their 102 representative orbits without discarding physical branches.
5. **Reference and local coefficient data.** Check all 63 exact reference matrices, reference residual zeros, the exact dyadic preconditioner bindings, and the 504 row inequalities against their actual Taylor functions. The reported maximum score being below one is only exact scalar arithmetic until this binding exists.
6. **Interval/Taylor arithmetic soundness and finite replay.** Prove the outward arithmetic and radial Taylor enclosures consumed by the corrected engine, instantiate all 114019 terminal rejections and the local alternatives, and connect their exact boxes to the finite cover. The generic bisection composition theorem is now checked; the actual certificate is not.
7. **Final assembly and review.** Assemble the above into `CentiradianExclusion`, audit its axioms and semantic scope independently, and obtain director admission. No conditional wrapper has been presented as that theorem.

## Runtime and reproducibility

`FORMALIZATION_RECORD.json` records exact declaration names, source/object/log/result hashes, source-package pins, Lean version and executable hash, the pinned Mathlib directory, and resource measurements. Lean is `4.33.0-rc2`, commit `d8b18978322de05a8f3dba51ef03cf5461676c17`; the Mathlib directory is pinned to `51e6992efd06126df61a496bebf8f49482a4e129`.

Every compile used the existing `full-proof-integration-2026-10-03/lean_guard.py`, with the director's reviewed standalone-runtime option, the same serialization lock, one Lean thread, a 2304 MiB heap cap, process-RSS and wall-time monitoring, and an 8 GiB minimum free-disk guard. Successful module checks took about 8–22 seconds each, with measured peak process-tree RSS at most 2.16 billion bytes. The aggregate audit also passed. No unguarded compilation was run.

The first attempted broad `Mathlib.Tactic` import exceeded the configured Lean heap. It was repaired by using specific tactic imports; failed attempts are preserved and are not evidence. Two early attempts exposed missing prebuilt square-root import paths; the successful arithmetic module imports the available `Mathlib.Analysis.Real.Sqrt`. All successful source hashes match the final source files.

Inherited project configuration, worker sources, factory scripts, and the solver role file were cloud-only placeholders when read. The director recovered a scoped runtime mode in the existing guard. This packet consequently imports only the pinned local Mathlib, avoiding unverified reuse of unavailable project objects or historical H9-dependent reductions.
