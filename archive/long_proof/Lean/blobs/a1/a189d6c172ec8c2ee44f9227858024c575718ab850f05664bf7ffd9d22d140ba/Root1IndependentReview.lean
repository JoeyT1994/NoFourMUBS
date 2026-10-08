import Root1GlobalExclusion

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

namespace Root1IndependentReview20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover CanonicalCorners GlobalCornerDomain ShoulderRadian20261003
noncomputable section

/-- Independent expected-type replay with normalization and maximality exposed,
and every physical entry bound written as a closed radian interval. -/
theorem literal_physical_exclusion {H : Mat6} {a b c d : ℝ}
    (hH : PhaseHadamard H)
    (hrow : ∀ j, H 0 j = 1) (hcol : ∀ i, H i 0 = 1)
    (hmax : ∀ p q : Equiv.Perm (Fin 6), score (candidate H p q) ≤ score H)
    (ha : (-1074 : ℝ)/512 ≤ a ∧ a ≤ (-1072 : ℝ)/512)
    (hb : (-560 : ℝ)/512 ≤ b ∧ b ≤ (-558 : ℝ)/512)
    (hc : (-2 : ℝ)/512 ≤ c ∧ c ≤ 0)
    (hd : (-1608 : ℝ)/512 ≤ d ∧ d ≤ (-1606 : ℝ)/512)
    (h11 : H 1 1 = cis a) (h12 : H 1 2 = cis b)
    (h21 : H 2 1 = cis c) (h22 : H 2 2 = cis d) : False := by
  exact ShoulderRoot1Actual20261003.globalMax_root1_literal_excluded
    ⟨⟨hH,hrow,hcol⟩,hmax⟩ ha hb hc hd h11 h12 h21 h22

/-- The original positive-width closed cube, with no cover or certificate
hypothesis. The radius and all four rational centers are explicit. -/
theorem literal_closed_cube {H : Mat6} {θ : Fin 4 → ℝ}
    (hH : GlobalMax H)
    (hθ : ∀ k, |θ k - (![(-1073 : ℝ)/512,(-559 : ℝ)/512,
      (-1 : ℝ)/512,(-1607 : ℝ)/512] : Fin 4 → ℝ) k| ≤ (1 : ℝ)/512)
    (h11 : H 1 1 = cis (θ 0)) (h12 : H 1 2 = cis (θ 1))
    (h21 : H 2 1 = cis (θ 2)) (h22 : H 2 2 = cis (θ 3)) : False := by
  apply ShoulderRoot1Actual20261003.globalMax_root1_excluded hH
  refine ⟨θ,?_,h11,h12,h21,h22⟩
  intro k
  have hk := hθ k
  fin_cases k <;>
    simpa [ShoulderRoot1Centers20261003.rootCenters,
      ShoulderRoot1Centers20261003.radii] using hk

#print axioms literal_physical_exclusion
#print axioms literal_closed_cube
end
end Root1IndependentReview20261003
