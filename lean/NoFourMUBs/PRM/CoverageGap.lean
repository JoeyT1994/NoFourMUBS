import NoFourMUBs.PRM.Defs
import NoFourMUBs.PRM.CoverageTenStrip

/-!
# Strict-corner coverage (MC1, `PROOF.md` Theorem 2.5): the ten-corner count

For every phase-orthogonal `3 × 6` strip the ten corners containing column `0` have `Σ p = 54`
(`CoverageTen.anchored_strip_sum`), and ten numbers in `ScalarBin = {0, 5} ∪ (17/3, 29/5)` cannot sum
to `54` (`CoverageTen.ten_scalarBin_sum_ne_54`).  So every row strip of a Hadamard matrix has an
anchored corner outside `ScalarBin` (`hadamard_anchored_scalar_escape`), and MC1 follows from
`CriticalStripConfinement`: **some** row triple of an all-critical Hadamard matrix not equivalent to
`F6` has its ten anchored corners in `ScalarBin` (`strictCornerCoverage_of_stripConfinement`).

`CriticalStripConfinement` is proved from the inputs of `NoFourMUBs.PRM.CoverageInputs`, all of which
are proved (assembled in `NoFourMUBs.Final`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open CoverageTen

/-- `H` is **all-critical**: the side signature of every positional corner is real.  By
`Side.RS_eq_im_sq` this says that every positional corner has reconstruction discriminant `R = 0`. -/
def AllCritical (H : Mat6) : Prop :=
  ∀ σ τ : Equiv.Perm I6, (Step2.sideSignature (Step2.rightBlock (H.submatrix σ τ))).im = 0

/-- Without a strict corner, `H` is all-critical. -/
theorem allCritical_of_not_strict {H : Mat6}
    (h : ¬ ∃ σ τ : Equiv.Perm I6, (Step2.sideSignature (Step2.rightBlock (H.submatrix σ τ))).im ≠ 0) :
    AllCritical H :=
  fun σ τ => by_contra fun hs => h ⟨σ, τ, hs⟩

/-! ### Row strips of a Hadamard matrix -/

/-- Three complete rows `r 0, r 1, r 2` of `H`, columns in the order `inl 0, inl 1, inl 2, inr 0, …`. -/
def rowStrip (H : Mat6) (r : Fin 3 → I6) : CoverageTen.Strip :=
  fun i j => H (r i) (e6.symm j)

/-- The top strip (rows `inl 0, inl 1, inl 2`). -/
def topStrip (H : Mat6) : CoverageTen.Strip := rowStrip H Sum.inl

theorem rowStrip_phaseOrthogonal {H : Mat6} (hH : Hadamard6.IsHadamard H) {r : Fin 3 → I6}
    (hr : Function.Injective r) : IsPhaseOrthogonalStrip (rowStrip H r) := by
  refine ⟨fun i j => hH.1 (r i) (e6.symm j), fun a b hab => ?_⟩
  exact (Equiv.sum_comp e6.symm (fun j : I6 => H (r a) j * conj (H (r b) j))).trans
    (row_orth hH (hr.ne hab))

/-- **Unconditional scalar escape**: every row strip of a Hadamard matrix has an anchored corner whose
`p` lies outside `{0, 5} ∪ (17/3, 29/5)`. -/
theorem hadamard_anchored_scalar_escape {H : Mat6} (hH : Hadamard6.IsHadamard H) {r : Fin 3 → I6}
    (hr : Function.Injective r) : ∃ k : Fin 10, ¬ ScalarBin (stripP (rowStrip H r) k) :=
  anchored_scalar_escape (rowStrip_phaseOrthogonal hH hr)

/-! ### The scalar confinement and MC1 -/

/-- **The scalar confinement.**  Every all-critical Hadamard matrix not equivalent
to `F6` has a row triple whose ten corners containing its first column (`stripP … k`, the sum of the
three squared off-diagonal Gram moduli of the corner) all lie in
`ScalarBin = {0, 5} ∪ (17/3, 29/5)`.

Paper source: `STRICT_CORNER_COVERAGE.md` and `PRM.md` §7.2 derive the stronger statement "every
corner of every row triple has `p ∈ {0, 5, p⋆}`", `p⋆ = 9 − 4/(1 + κ²)`, `3κ³ + κ² + κ − 1 = 0`,
from (i) the Fourier routing lemmas (§7.1, `FOURIER_ROUTING.md`), (ii) the Fourier critical locus
(`FOURIER_CRITICAL_LOCUS.md`), (iii) the critical strip scalar classification
(`CRITICAL_STRIP_CLASSIFICATION.md`, built on `CRITICAL_CORNER_REDUCTION.md`), and (iv) the two
endpoint exclusions (`CRITICAL_P7_EXCLUSION.md`, `CRITICAL_EQUI_CORRELATION_EXCLUSION.md`).
`p⋆ ∈ (17/3, 29/5)` is `CoverageTen.pStar_bounds`.  It is proved from the named inputs of
`NoFourMUBs.PRM.CoverageInputs` (`stripConfinement_of_inputs`). -/
def CriticalStripConfinement : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → AllCritical H → ¬ Equivalent H Step2.fourierHadamard.1 →
    ∃ r : Fin 3 → I6, Function.Injective r ∧ ∀ k : Fin 10, ScalarBin (stripP (rowStrip H r) k)

end Coverage

/-- **MC1 from the scalar confinement.** -/
theorem strictCornerCoverage_of_stripConfinement (h : Coverage.CriticalStripConfinement) :
    StrictCornerCoverage := by
  intro H hH hF
  by_contra hn
  obtain ⟨r, hr, hbin⟩ := h H hH (Coverage.allCritical_of_not_strict hn) hF
  obtain ⟨k, hk⟩ := Coverage.hadamard_anchored_scalar_escape hH hr
  exact hk (hbin k)

end NoFourMUBs.PRM
