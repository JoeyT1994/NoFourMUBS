import Root0GlobalExclusion

set_option autoImplicit false
namespace Root0PhysicalFinalReview20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover CanonicalCorners GlobalCornerDomain
open ShoulderRoot0Actual20261003 ShoulderRoot0Centers20261003 ShoulderRadian20261003
noncomputable section

/-- The endpoint with every physical and closed-coordinate premise exposed.
It has no determinant threshold, eligible-side or covering-certificate premise. -/
theorem literal_closed_cube {H : Mat6}
    (hH : PhaseHadamard H)
    (hr : ∀ j, H 0 j=1) (hc : ∀ i, H i 0=1)
    (hmax : ∀ p q : Perm, score (candidate H p q)≤score H)
    (a b c d : ℝ)
    (ha : (-1074/512:ℝ)≤a ∧ a≤(-1072/512:ℝ))
    (hb : (-560/512:ℝ)≤b ∧ b≤(-558/512:ℝ))
    (hcv : (-2/512:ℝ)≤c ∧ c≤0)
    (hd : (-1610/512:ℝ)≤d ∧ d≤(-1608/512:ℝ))
    (h11 : H 1 1=cis a) (h12 : H 1 2=cis b)
    (h21 : H 2 1=cis c) (h22 : H 2 2=cis d) : False := by
  have hcube : Cube (![a,b,c,d] : Fin 4 → ℝ) := by
    intro k
    fin_cases k <;> norm_num [rootCenters] <;> rw [abs_le]
    all_goals constructor <;> linarith [ha.1,ha.2,hb.1,hb.2,hcv.1,hcv.2,hd.1,hd.2]
  exact globalMax_root0_excluded ⟨⟨hH,hr,hc⟩,hmax⟩
    ⟨![a,b,c,d],hcube,h11,h12,h21,h22⟩

end
#print axioms literal_closed_cube
end Root0PhysicalFinalReview20261003
