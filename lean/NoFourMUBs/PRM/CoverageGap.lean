import NoFourMUBs.PRM.Defs
import NoFourMUBs.PRM.CoverageTenStrip
import NoFourMUBs.PRM.CoverageTenKappa
import NoFourMUBs.PRM.CoverageSumArith
import NoFourMUBs.PRM.CoverageSumRule

/-!
# Strict-corner coverage (MC1): conditional assembly and the remaining scalar gap

This module combines the two external returns of 14 Oct 2026.

* **Ten-corner return** (`CoverageTen*`).  For every phase-orthogonal `3 × 6` strip the ten
  corners containing column `0` have `Σ p = 54` (`CoverageTen.anchored_strip_sum`).  Ten numbers in
  `{0, 5} ∪ (17/3, 29/5)` cannot sum to `54` (`CoverageTen.ten_scalarBin_sum_ne_54`).
* **Sum-rule return** (`CoverageSum*`).  All twenty corners of a strip have `Σ p = 108`
  (`CoverageSum.hadamard_strip_sum_108`).  No family whose values satisfy `p (p − 5) P(p) = 0`, with
  `P(t) = t³ − 17t² + 107t − 243`, sums to `108` (`CoverageSum.no_constrained_sum`, a mod-5 argument).

Both reduce MC1 to a statement confining the corner scalars `p` of an all-critical Hadamard matrix.
The weakest common form is `CriticalStripConfinement`: **some** row triple has its ten anchored
corners in `ScalarBin = {0, 5} ∪ (17/3, 29/5)`.  We prove

* `strictCornerCoverage_of_stripConfinement : CriticalStripConfinement → StrictCornerCoverage`;
* `stripConfinement_of_tenCornerConfinement` (the ten-corner return's gap, top strip);
* `stripConfinement_of_polynomialConstraint` (the sum-rule return's gap; `P` has its only real root
  in `(17/3, 29/5)`, `exceptional_root_mem_bin`);
* `strictCornerCoverage_of_polynomialConstraint`, the sum-rule return's own direct route.

The paper results that would discharge `CriticalStripConfinement` are decomposed into separate
propositions in `NoFourMUBs.PRM.CoverageInputs`.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open CoverageTen

/-- `H` is **all-critical**: the side signature of every positional corner is real.  By
`Side.RS_eq_im_sq` this says that every positional corner has reconstruction discriminant `R = 0`. -/
def AllCritical (H : Mat6) : Prop :=
  ∀ σ τ : Equiv.Perm I6, (Step2.sideSignature (Step2.rightBlock (H.submatrix σ τ))).im = 0

/-- Relabelling rows and columns preserves the all-critical property. -/
theorem allCritical_reindex {H : Mat6} (h : AllCritical H) (α β : Equiv.Perm I6) :
    AllCritical (H.submatrix α β) := by
  intro σ τ
  simpa only [Matrix.submatrix_submatrix, Equiv.coe_trans] using h (σ.trans α) (τ.trans β)

/-- MC1 in contrapositive form: an all-critical Hadamard matrix is equivalent to `F6`. -/
theorem strictCornerCoverage_iff : StrictCornerCoverage ↔
    ∀ H : Mat6, Hadamard6.IsHadamard H → AllCritical H →
      Equivalent H Step2.fourierHadamard.1 := by
  constructor
  · intro hc H hH hcrit
    by_contra hn
    obtain ⟨σ, τ, hs⟩ := hc H hH hn
    exact hs (hcrit σ τ)
  · intro hc H hH hn
    by_contra he
    exact hn (hc H hH fun σ τ => by_contra fun hs => he ⟨σ, τ, hs⟩)

/-- Without a strict corner, `H` is all-critical. -/
theorem allCritical_of_not_strict {H : Mat6}
    (h : ¬ ∃ σ τ : Equiv.Perm I6, (Step2.sideSignature (Step2.rightBlock (H.submatrix σ τ))).im ≠ 0) :
    AllCritical H :=
  fun σ τ => by_contra fun hs => h ⟨σ, τ, hs⟩

/-! ### Row strips of a Hadamard matrix -/

/-- Three complete rows `r 0, r 1, r 2` of `H`, columns in the order `inl 0, inl 1, inl 2, inr 0, …`. -/
def rowStrip (H : Mat6) (r : Fin 3 → I6) : CoverageTen.Strip :=
  fun i j => H (r i) (CoverageSum.sixIndex j)

/-- The top strip (rows `inl 0, inl 1, inl 2`). -/
def topStrip (H : Mat6) : CoverageTen.Strip := rowStrip H Sum.inl

theorem rowStrip_phaseOrthogonal {H : Mat6} (hH : Hadamard6.IsHadamard H) {r : Fin 3 → I6}
    (hr : Function.Injective r) : IsPhaseOrthogonalStrip (rowStrip H r) := by
  refine ⟨fun i j => hH.1 (r i) (CoverageSum.sixIndex j), fun a b hab => ?_⟩
  have hne : r a ≠ r b := fun h => hab (hr h)
  have h := congrArg (fun M : Mat6 => M (r a) (r b)) hH.2
  have hsum : (∑ j : I6, H (r a) j * conj (H (r b) j)) = 0 := by
    simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.one_apply,
      Complex.star_def, hne] using h
  change (∑ j : Fin 6, H (r a) (CoverageSum.sixIndex j) * conj (H (r b) (CoverageSum.sixIndex j))) = 0
  rw [CoverageSum.sum_sixIndex (fun j : I6 => H (r a) j * conj (H (r b) j))]
  exact hsum

/-- **Unconditional scalar escape**: every row strip of a Hadamard matrix has an anchored corner whose
`p` lies outside `{0, 5} ∪ (17/3, 29/5)`. -/
theorem hadamard_anchored_scalar_escape {H : Mat6} (hH : Hadamard6.IsHadamard H) {r : Fin 3 → I6}
    (hr : Function.Injective r) : ∃ k : Fin 10, ¬ ScalarBin (stripP (rowStrip H r) k) :=
  anchored_scalar_escape (rowStrip_phaseOrthogonal hH hr)

/-! ### The remaining gap and the conditional theorem -/

/-- **The remaining gap (weakest common form).**  Every all-critical Hadamard matrix not equivalent
to `F6` has a row triple whose ten corners containing its first column (`stripP … k`, the sum of the
three squared off-diagonal Gram moduli of the corner) all lie in
`ScalarBin = {0, 5} ∪ (17/3, 29/5)`.

Paper source: `STRICT_CORNER_COVERAGE.md` and `PRM.md` §7.2 derive the stronger statement "every
corner of every row triple has `p ∈ {0, 5, p⋆}`", `p⋆ = 9 − 4/(1 + κ²)`, `3κ³ + κ² + κ − 1 = 0`,
from (i) the Fourier routing lemmas (§7.1, `FOURIER_ROUTING.md`), (ii) the Fourier critical locus
(`FOURIER_CRITICAL_LOCUS.md`), (iii) the critical strip scalar classification
(`CRITICAL_STRIP_CLASSIFICATION.md`, built on `CRITICAL_CORNER_REDUCTION.md`), and (iv) the two
endpoint exclusions (`CRITICAL_P7_EXCLUSION.md`, `CRITICAL_EQUI_CORRELATION_EXCLUSION.md`).
`p⋆ ∈ (17/3, 29/5)` is `CoverageTen.pStar_bounds`.  The decomposition into these named inputs is in
`NoFourMUBs.PRM.CoverageInputs`. -/
def CriticalStripConfinement : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → AllCritical H → ¬ Equivalent H Step2.fourierHadamard.1 →
    ∃ r : Fin 3 → I6, Function.Injective r ∧ ∀ k : Fin 10, ScalarBin (stripP (rowStrip H r) k)

end Coverage

/-- **MC1 from the remaining gap.** -/
theorem strictCornerCoverage_of_stripConfinement (h : Coverage.CriticalStripConfinement) :
    StrictCornerCoverage := by
  intro H hH hF
  by_contra hn
  obtain ⟨r, hr, hbin⟩ := h H hH (Coverage.allCritical_of_not_strict hn) hF
  obtain ⟨k, hk⟩ := Coverage.hadamard_anchored_scalar_escape hH hr
  exact hk (hbin k)

namespace Coverage

open CoverageTen

/-! ### The ten-corner return's form of the gap -/

/-- The ten-corner return's gap: the top strip's ten anchored corners lie in `ScalarBin`. -/
def CriticalTenCornerConfinement : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → AllCritical H → ¬ Equivalent H Step2.fourierHadamard.1 →
    ∀ k : Fin 10, ScalarBin (stripP (topStrip H) k)

theorem stripConfinement_of_tenCornerConfinement (h : CriticalTenCornerConfinement) :
    CriticalStripConfinement :=
  fun H hH hc hF => ⟨Sum.inl, Sum.inl_injective, h H hH hc hF⟩

/-- The paper's conclusion on the top strip (three values; `p⋆` from the cubic). -/
def OriginalTenCornerClassification : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → AllCritical H → ¬ Equivalent H Step2.fourierHadamard.1 →
    ∃ k : ℝ, 0 < k ∧ 3 * k ^ 3 + k ^ 2 + k - 1 = 0 ∧
      ∀ c : Fin 10, stripP (topStrip H) c = 0 ∨ stripP (topStrip H) c = 5 ∨
        stripP (topStrip H) c = pStar k

theorem tenCornerConfinement_of_original (h : OriginalTenCornerClassification) :
    CriticalTenCornerConfinement := by
  intro H hH hcrit hF c
  obtain ⟨k, hk, hc, hp⟩ := h H hH hcrit hF
  exact scalarBin_of_original_alternatives hk hc (hp c)

/-! ### The sum-rule return's form of the gap -/

open CoverageSum in
/-- The sum-rule return's gap: some injective row triple has all twenty corner values on
`p (p − 5) P(p) = 0`. -/
def CriticalStripPolynomialConstraint : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → ¬ Equivalent H Step2.fourierHadamard.1 →
    AllCritical H → ∃ r : Fin 3 → I6, Function.Injective r ∧
      ∀ k : Fin 20, scalarConstraint (cornerP (CoverageSum.rowStrip H r) k)

/-- The real roots of `P(t) = t³ − 17t² + 107t − 243` lie in `(17/3, 29/5)`: `P` is strictly
increasing, `P(17/3) = −16/27` and `P(29/5) = 104/125`. -/
theorem exceptional_root_mem_bin {t : ℝ} (ht : CoverageSum.exceptionalPolynomial t = 0) :
    (17 : ℝ) / 3 < t ∧ t < (29 : ℝ) / 5 := by
  unfold CoverageSum.exceptionalPolynomial at ht
  have key : ∀ y : ℝ, t ^ 3 - 17 * t ^ 2 + 107 * t - 243 - (y ^ 3 - 17 * y ^ 2 + 107 * y - 243) =
      (t - y) * ((3 * t + 3 * y - 34) ^ 2 + 3 * (t - y) ^ 2 + 128) / 12 := fun y => by ring
  have pos : ∀ y : ℝ, 0 < (3 * t + 3 * y - 34) ^ 2 + 3 * (t - y) ^ 2 + 128 := fun y => by positivity
  constructor
  · by_contra h
    have h1 := key (17 / 3)
    have := mul_nonpos_of_nonpos_of_nonneg (show t - 17 / 3 ≤ 0 by linarith) (pos (17 / 3)).le
    nlinarith
  · by_contra h
    have h1 := key (29 / 5)
    have := mul_nonneg (show 0 ≤ t - 29 / 5 by linarith) (pos (29 / 5)).le
    nlinarith

theorem scalarBin_of_scalarConstraint {t : ℝ} (h : CoverageSum.scalarConstraint t) : ScalarBin t := by
  rcases (CoverageSum.scalarConstraint_iff t).1 h with h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr (exceptional_root_mem_bin h))

/-- The anchored triples are the first ten sorted triples. -/
theorem anchorCols_eq : ∀ (k : Fin 10) (j : Fin 3),
    anchorCols k j = CoverageSum.triples (Fin.castLE (by norm_num) k) j := by
  decide

/-- The ten-corner `p` is the sum-rule `p` of the same corner. -/
theorem stripP_eq_cornerP (T : CoverageTen.Strip) (k : Fin 10) :
    stripP T k = CoverageSum.cornerP T (Fin.castLE (by norm_num) k) := by
  have e : ∀ a b : Fin 3, pairEnergy (CoverageTen.relativePhase T a b) k =
      Complex.normSq (∑ j : Fin 3,
        CoverageSum.relativeRow T b a (CoverageSum.triples (Fin.castLE (by norm_num) k) j)) := by
    intro a b
    have hs : (∑ j : Fin 3,
        CoverageSum.relativeRow T b a (CoverageSum.triples (Fin.castLE (by norm_num) k) j)) =
        conj (threeSum (CoverageTen.relativePhase T a b) k) := by
      simp only [Fin.sum_univ_three, threeSum, ← anchorCols_eq, CoverageSum.relativeRow,
        CoverageTen.relativePhase, map_add, map_mul, Complex.conj_conj]
      ring
    rw [hs, Complex.normSq_conj, pairEnergy]
  rw [stripP, CoverageSum.cornerP, e 0 1, e 0 2, e 1 2]

theorem stripConfinement_of_polynomialConstraint (h : CriticalStripPolynomialConstraint) :
    CriticalStripConfinement := by
  intro H hH hcrit hF
  obtain ⟨r, hr, hp⟩ := h H hH hF hcrit
  refine ⟨r, hr, fun k => ?_⟩
  rw [stripP_eq_cornerP]
  exact scalarBin_of_scalarConstraint (hp _)

end Coverage

/-- The sum-rule return's direct route: twenty corners, total `108`, and the mod-5 obstruction. -/
theorem strictCornerCoverage_of_polynomialConstraint
    (hgeom : Coverage.CriticalStripPolynomialConstraint) : StrictCornerCoverage := by
  intro H hH hn
  by_contra he
  obtain ⟨r, hr, hp⟩ := hgeom H hH hn (Coverage.allCritical_of_not_strict he)
  exact CoverageSum.no_constrained_sum Finset.univ (CoverageSum.cornerP (CoverageSum.rowStrip H r))
    (fun k _ => hp k) (CoverageSum.hadamard_strip_sum_108 H hH r hr)

end NoFourMUBs.PRM
