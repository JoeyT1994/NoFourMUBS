import NoFourMUBs.PRM.Defs
import NoFourMUBs.PRM.CoverageEndCount

/-!
# Strict-corner coverage (MC1, `PROOF.md` Theorem 2.5): the ten-corner count

For every phase-orthogonal `3 × 6` strip, the ten corners containing column `0` cannot all be of the
types left by the critical strip classification (`CoverageTen.CornerType`: `J = 0` with
`p ∈ {0, 5}`, `p` in the window `(5.722, 5.723)` of `p⋆`, or one of the two rational endpoints):
`CoverageTen.anchored_count` (return S, `CoverageEndCount`; it uses the anchored sum rule `Σ p = 54`,
the vertex sums `dᵢ = 0` of the signed `J` and the fourth moment `Σ X² ≥ 54`).  So MC1 follows from
`CriticalStripConfinement`: **some** row triple of an all-critical Hadamard matrix outside the Fourier
family has its ten anchored corners of these types (`strictCornerCoverage_of_stripConfinement`).

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

/-! ### The scalar confinement and MC1 -/

/-- **The scalar confinement.**  Every all-critical Hadamard matrix outside the Fourier family
(`Step2.InFourierFamily`) has a row triple whose ten corners containing its first column are of the
classified types `CoverageTen.CornerType` (with `stripP`, `stripJ`, `stripX` the `p`, `J`, `X` of the corner).

Paper source: `STRICT_CORNER_COVERAGE.md` and `PRM.md` §7.2: (i) the Fourier routing lemmas (§7.1,
`FOURIER_ROUTING.md`), with the block lemma of §5 (`FourierBlock`), (ii) the critical strip scalar
classification (`CRITICAL_STRIP_CLASSIFICATION.md`, built on
`CRITICAL_CORNER_REDUCTION.md`); `p⋆ ∈ (5.722, 5.723)` is `CoverageTen.pStar_bounds`.  It is proved
from the named inputs of `NoFourMUBs.PRM.CoverageInputs` (`stripConfinement_of_inputs`). -/
def CriticalStripConfinement : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → AllCritical H → ¬ Step2.InFourierFamily H →
    ∃ r : Fin 3 → I6, Function.Injective r ∧ ∀ k : Fin 10, CornerType (rowStrip H r) k

end Coverage

/-- **MC1 from the scalar confinement.** -/
theorem strictCornerCoverage_of_stripConfinement (h : Coverage.CriticalStripConfinement) :
    StrictCornerCoverage := by
  intro H hH hF
  by_contra hn
  obtain ⟨r, hr, htype⟩ := h H hH (Coverage.allCritical_of_not_strict hn) hF
  exact CoverageTen.anchored_count (Coverage.rowStrip_phaseOrthogonal hH hr) htype

end NoFourMUBs.PRM
