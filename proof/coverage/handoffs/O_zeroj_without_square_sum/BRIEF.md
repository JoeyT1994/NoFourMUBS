# Handoff O: zero-J critical strips without the twenty-corner square sum

## The task
Strict-corner coverage (MC1, `PROOF_v2.md` Theorem 1.5) rests on the critical-strip classification. Return K
(`proof/coverage/returns/K_nonzero_J/REPORT.md`) replaced its nonzero-J branch by two signed corner sums; that is now
integrated in Lean (`PRM/CoverageSigned*.lean`). After K, the zero-J branch is the last user of the twenty-corner **square sum** S and of its
whole toolchain:

| Lean (`lean/NoFourMUBs/PRM/`) | Content | Size |
|---|---|---|
| `CoverageStripIdZeroData` | reduced data of the zero-J identity | 216 KB (the largest data module after `L1/FlatData`) |
| `CoverageStripIdZero`, `…ZeroDefs`, `…ZeroCheckM`, `…ZeroCheckS` | the identity `zeroJAlgebra : ZeroJAlgebra` | 19 KB |
| `CoverageStripIdFormal`, `…QF`, `…Half`, `…Fast`, `…Stage` | shared square-sum machinery (row scaling, QF circuits) | 28 KB |
| `CoverageStripZero` | `ZeroJSquareSum`, `zero_moduli`, `zeroJ_classification` | 19 KB |

plus `lean/generators/stripid/` and, upstream of it, `MinimalConstruction/Proofs/critical_moment_core.py` and
`verify_critical_square_sums.py`. Find a proof of the zero-J step that does not use S, or a certificate much smaller than
the current one. This branch also contains weak point 3 of the 15 Oct audit (`PROOF_v2.md` §7: "its zero-J
geometric-progression step").

## Definitions (self-contained)
- **Strip.** Three complete rows of an order-6 Hadamard, phased to (1; x; y) with x, y ∈ T⁶ and Σⱼxⱼ = Σⱼyⱼ = Σⱼx̄ⱼyⱼ = 0.
  It is **all-critical** if all twenty 3×3 blocks have real side signature, equivalently R = 0 at all twenty corners.
  Assume all twenty blocks are invertible (MC1's routing removes singular minors, `PRM.md` §7.1).
- **Halves.** A column split C | Cᶜ (|C| = 3). For C: s = Σ_{j∈C} xⱼ, t = Σ yⱼ, r = Σ x̄ⱼyⱼ; X = |s|², Y = |t|², Z = |r|²,
  p = X + Y + Z, J = 2 Re(s r t̄), W = XY + XZ + YZ − XYZ, K = XYZ, g = 27 − 3p + J, η = 9 − p + J,
  χ = W − (p − 9)(p − 18) + (p − 15)J, R = 4g²η − χ², z = χ/(2g). The half Cᶜ has data (−s, −t, −r).
- **Zero-J corner.** J = 0 at C (hence at Cᶜ). By `CRITICAL_CORNER_REDUCTION.md` and `CRITICAL_STRIP_CLASSIFICATION.md`
  §2: both halves have the same g = 3z², p = 9 − z², W = z²(z + 3)², z real, z ≠ 0, −3 ≤ z ≤ 3; z = −3 gives p = 0 and
  z = −2 gives p = 5; otherwise no λ-denominator L_j = z(3z + 9 − X_{(j)}) vanishes (X₍₀₎ = Z, X₍₁₎ = Y, X₍₂₎ = X).
- **λ-identities** (`SIDE_FIBER.md` §1): on each actual half, λ_j L_j = P_j with |λ_j| = 1, P₀ = rs² + r̄t² + (3 − Z)st,
  P₁ = t s̄² + r²t̄ + (3 − Y) r s̄, P₂ = s t̄² + r̄² s̄ + (3 − X) r̄ t̄; the products of the column coordinates and the
  permanent are U = λ₀λ̄₁, V = λ₀λ̄₂, π = zλ₀.

## Statements
> **Current proof (to replace).** `CRITICAL_STRIP_CLASSIFICATION.md` §2 (4): after row scaling, on a zero-J corner with
> z ∉ {−3, −2},
> S · [3z(z + 3)⁴ + (3z + 8)K]³ = −3888 z (z + 2)² (z + 3)² [K + (z − 1)(z + 3)³] [z²(z + 3)⁴ + (z + 2)²K]²,
> so S = 0 forces **K = (1 − z)(z + 3)³**. Then the modulus cubic is (T − (z + 3))²(T − (1 − z)(z + 3)) and a Vieta
> argument gives geometric rows (1; x; x̄) (Lean: `zero_moduli`, `strip_geometric`, `zeroJ_classification`).

> **Target Z1 (sufficient).** On an all-critical strip with invertible blocks, every zero-J corner with z ∉ {−3, −2} has
> K = (1 − z)(z + 3)³. (Lean: a theorem with the hypotheses of `ZeroJSquareSum`, `PRM/CoverageStripZero.lean:35`, plus
> all-criticality of the strip, concluding the K equation; `zero_moduli` and everything downstream stay.)

> **Target Z2 (stronger, optional).** The same hypotheses give directly that the rows are (1; x; x̄) after phasing, or
> p ∈ {0, 5}. This would also replace the Vieta step (`CoverageStripGeom`, 22 KB).

## A negative result first — EXACT (this survey; `zeroj_signed_sums.py`, `zeroj_weighted_xy.py`)
K's technique does **not** transfer. For a column weight f = x^m y^n, the weighted signed sum
Σ_C (Σ_{j∈C} f(xⱼ, yⱼ)) D_C (D_C = Ψ − Ψ̄ of the corner) is a polynomial in whole-strip moments (as in K's §2). On two
critical zero-J halves, with the λ-identities for each half (gauge s = t = 1, s̄ = X, t̄ = Y, r̄ = −rY/X), reduced
modulo r² = −XZ/Y and the W-relation XY + XZ + YZ − XYZ = z²(z + 3)², it vanishes **identically** for all eleven weights
tried: (m, n) = (0,0) [K's (3)], (1,1) [K's (4)], (1,0), (0,1), (1,−1), (−1,1), (2,−1), (−1,2), (1,−2), (−2,1),
(−1,−1). (The xy-weighted sum carries the W-relation as an explicit factor.) So any linear combination of the D_C
with column-sum weights gives no information on the zero-J stratum; quadratic information (or the individual mixed
corners) is needed. The whole-strip moments there are
M₁₁ = 6(z + 2) st/(3z + 9 − Z), M₂,₋₁ = 6(z + 2) s r̄/(3z + 9 − Y), M₋₁,₂ = 6(z + 2) t r/(3z + 9 − X).

## Suggested routes (yours to change)
1. **Swap corners.** The nine corners with two columns in C and one in Cᶜ are C_{e,c} = (C ∖ {e}) ∪ {c}, with Gram data
   s − x_e + x_c, t − y_e + y_c, r − x̄_e y_e + x̄_c y_c. Each is itself critical, so it is either zero-J (with data on the
   curve W = z′²(z′ + 3)²) or, by return K, one of three explicit nonzero-J types (k ∈ {1/3, 1, κ}). Combined with the
   ten-corner sum Σ_{C∋c} p_C = 54 and the column structure of each half (roots of explicit cubics), this may force
   Z1 or Z2 with very little algebra.
2. **Partial square sum** (the K brief's untested observation). S₉ = Σ_{e∈C, c∈Cᶜ} (−D(C_{e,c})²) ≥ 0 vanishes on an
   all-critical strip and S = S₉ + S₉′. On the zero-J stratum the two halves have the same scalar data, so S₉′ is S₉
   with (s, t, r) ↦ (−s, −t, −r). S₉ is symmetric in each half's columns separately, hence a polynomial in each half's
   moments (all given by the λ-identities). It may factor through K + (z − 1)(z + 3)³ at lower degree than S.
3. **Weighted quadratic sums.** Σ_C w(C) D_C² with small column weights, looking for an identity of the shape of K's
   (6)–(7), with a factor that is visibly nonzero unless K = (1 − z)(z + 3)³.
4. **Vieta pairing.** On each half the x-coordinates are the roots of T³ − sT² + U s̄ T − U and the y-coordinates of
   T³ − tT² + V t̄ T − V; for the two halves these data differ only by (s, t, r) ↦ (−s, −t, −r) and the λ's. What is free
   is the pairing of x- and y-roots and the matching across halves; the mixed corners then give finitely many cases.

## What may be used
The λ-identities and actual-side identities (`SIDE_FIBER.md` §1), `CRITICAL_CORNER_REDUCTION.md` (both critical
equations, (6), the sum rules Σp = 108 and ΣJ = 0 over a strip and Σ_{C∋c} p_C = 54), return K in full (including its
nine-moment Newton formulas and N1 for nonzero-J corners, which applies to the swap corners), Lemma 1.1 and the Jacobian
identity (J) (`proof/coverage/handoffs/J_side_existence_jacobian/RESULT.md`), K's supplementary rank lemma (every
all-critical Hadamard has all forty Fourier moments zero), and the Fourier-routing lemmas (`PRM.md` §7.1). Do not use
S, its splitting-algebra reduction, or [CT].

## Deliverables and checking
- `REPORT.md` with PROVED / CERTIFIED / NUMERICAL labels; an exact `verify.py` (standard library or python-flint), and
  `SHA256SUMS`. Certificates, if any, as integer polynomial identities in the format of
  `returns/K_nonzero_J/CERTIFICATE_FORMAT.md`, so that they replay through `lean/NoFourMUBs/Identity/`.
- Size target: under 50 KB of certificate data (the current zero-J data are 216 KB).
- **Where it plugs in.** A theorem replacing `ZeroJSquareSum` as the input of `zero_moduli` / `zeroJ_classification`
  (`PRM/CoverageStripZero.lean`), consumed through `PRM/CoverageStripParts.lean` and `Final.lean` line 26
  (`PRM.Coverage.zeroJAlgebra`). Then, after checking the import graph against K's new modules, delete
  `CoverageStripIdZero*`, the shared `CoverageStripId{Formal,QF,Half,Fast,Stage}` and `lean/generators/stripid/`.
  `PRM.strictCornerCoverage` keeps its statement. Check with `python3 lean/check_axioms.py --full` and `python3 verify.py`.

**Risks.** Medium–high. The negative result shows the zero-J stratum is invisible to linear signed sums, so the square
sum may be the natural object here and a smaller certificate may not exist. Route 1 is the most promising because it
uses K's classification, which did not exist when §2 was written. The build-time saving of the deleted modules has not
been measured (the 216 KB data module is the main item).

## Files to package
- `PROOF_v2.md` (§1, Theorem 1.5 and §7), `AUDIT.md`
- `MinimalConstruction/Proofs/CRITICAL_STRIP_CLASSIFICATION.md`, `CRITICAL_CORNER_REDUCTION.md`, `SIDE_FIBER.md`,
  `STRICT_CORNER_COVERAGE.md`, `FOURIER_ROUTING.md`, `critical_moment_core.py`, `exact_rational.py`,
  `verify_critical_square_sums.py`, `verify_critical_reduction.py`
- `proof/coverage/returns/K_nonzero_J/` (whole folder: `REPORT.md`, `INTEGRATION.md`, `CERTIFICATE_FORMAT.md`,
  `SUPPLEMENTARY_RANK_LEMMA.md`, `REVIEW.md`, `verify.py`, `support/`, `certificates/`)
- `proof/coverage/handoffs/K_nonzero_J_strips/BRIEF.md`, `proof/coverage/handoffs/J_side_existence_jacobian/RESULT.md`
- `proof/coverage/returns/G_prm/PRM.md` (§7.1), `proof/coverage/audits/AUDIT_2026-10-15.md`, `I4_ADDENDUM.md`
- `lean/NoFourMUBs/PRM/CoverageStripZero.lean`, `CoverageStripGeom.lean`, `CoverageInputs.lean`,
  `CoverageStripParts.lean`, `CoverageStripReduce.lean`, `CoverageStripIdZero.lean`, `CoverageStripIdZeroDefs.lean`,
  `CoverageStripNonzero.lean`, and return K's Lean `CoverageSigned*.lean`; `lean/generators/stripid/STATUS.md`, `gen_zero.py`
- `zeroj_signed_sums.py`, `zeroj_weighted_xy.py` (this folder; they import return K's `support/verify_full_weighted.py`
  from the repository path)
