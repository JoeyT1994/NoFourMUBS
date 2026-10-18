import NoFourMUBs.PRM.CoverageTenArith
import NoFourMUBs.PRM.Defs

/-!
# A universal, anchored ten-corner sum rule and scalar escape

From the ten-corner return of 14 Oct 2026 (`covret/result`); repaired and compiled here.
These statements concern actual phase-orthogonal strips. They do not assume
criticality, invertible minors, side reconstruction, or Fourier routing.
-/

noncomputable section

open ComplexConjugate

namespace NoFourMUBs.PRM.CoverageTen

/-- The sum of `u` over the `k`-th three-column subset containing column 0: the first ten sorted
triples `tri 0, …, tri 9` are exactly these. -/
def threeSum (u : Fin 6 → ℂ) (k : Fin 10) : ℂ :=
  u (tri (Fin.castLE (by norm_num) k) 0) + u (tri (Fin.castLE (by norm_num) k) 1) +
    u (tri (Fin.castLE (by norm_num) k) 2)

def pairEnergy (u : Fin 6 → ℂ) (k : Fin 10) : ℝ :=
  Complex.normSq (threeSum u k)

/-- The exact quadratic identity before imposing unit modulus or orthogonality. -/
theorem anchored_quadratic_identity (u : Fin 6 → ℂ) :
    (∑ k, pairEnergy u k) =
      3 * (∑ j, Complex.normSq (u j)) + Complex.normSq (∑ j, u j) +
        6 * (u 0 * conj (∑ j, u j)).re := by
  simp [pairEnergy, threeSum, tri, Fin.sum_univ_succ,
    Complex.normSq_apply, Complex.mul_re, Complex.conj_re, Complex.conj_im]
  ring

/-- One pair of complete, orthogonal phase rows contributes exactly 18. -/
theorem anchored_pair_sum (u : Fin 6 → ℂ)
    (hu : ∀ j, Complex.normSq (u j) = 1) (hs : (∑ j, u j) = 0) :
    (∑ k, pairEnergy u k) = 18 := by
  rw [anchored_quadratic_identity, hs]
  norm_num [hu]

abbrev Strip := Matrix (Fin 3) (Fin 6) ℂ

def relativePhase (T : Strip) (i j : Fin 3) (c : Fin 6) : ℂ :=
  T i c * conj (T j c)

/-- No dephasing is required. -/
def IsPhaseOrthogonalStrip (T : Strip) : Prop :=
  (∀ i c, Complex.normSq (T i c) = 1) ∧
    ∀ i j, i ≠ j → (∑ c, relativePhase T i j c) = 0

/-- Sum of the three squared off-diagonal Gram entries of a corner. -/
def stripP (T : Strip) (k : Fin 10) : ℝ :=
  pairEnergy (relativePhase T 0 1) k +
    pairEnergy (relativePhase T 0 2) k +
      pairEnergy (relativePhase T 1 2) k

theorem relativePhase_unit {T : Strip} (hT : IsPhaseOrthogonalStrip T)
    (i j : Fin 3) (c : Fin 6) :
    Complex.normSq (relativePhase T i j c) = 1 := by
  simp only [relativePhase, Complex.normSq_mul, Complex.normSq_conj,
    hT.1 i c, hT.1 j c, one_mul]

/-- The fixed-row 108 sum rule, halved by anchoring column 0. -/
theorem anchored_strip_sum {T : Strip} (hT : IsPhaseOrthogonalStrip T) :
    (∑ k, stripP T k) = 54 := by
  have h01 := anchored_pair_sum (relativePhase T 0 1)
    (relativePhase_unit hT 0 1) (hT.2 0 1 (by decide))
  have h02 := anchored_pair_sum (relativePhase T 0 2)
    (relativePhase_unit hT 0 2) (hT.2 0 2 (by decide))
  have h12 := anchored_pair_sum (relativePhase T 1 2)
    (relativePhase_unit hT 1 2) (hT.2 1 2 (by decide))
  simp only [stripP, Finset.sum_add_distrib]
  linarith

/-- Every phase-orthogonal strip has an anchored corner outside the scalar bin. -/
theorem anchored_scalar_escape {T : Strip} (hT : IsPhaseOrthogonalStrip T) :
    ∃ k : Fin 10, ¬ ScalarBin (stripP T k) := by
  by_contra h
  exact ten_scalarBin_sum_ne_54 (stripP T) (fun k => not_not.1 fun hk => h ⟨k, hk⟩)
    (anchored_strip_sum hT)

end NoFourMUBs.PRM.CoverageTen
