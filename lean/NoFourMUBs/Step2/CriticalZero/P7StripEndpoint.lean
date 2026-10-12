import NoFourMUBs.Step2.CriticalZero.P7PositiveEndpoint
import NoFourMUBs.Step2.CriticalZero.ColumnRechart

/-! The same p=7 exclusion for every column triple and both signs of J. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.P7
open CriticalPhysical20261003 CriticalRowSum20261003

theorem selected_p7_positive_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 3 → Fin 6) (hc : Function.Injective c)
    (hp : sideP (H.submatrix front c) = 7)
    (hj : sideJ (H.submatrix front c) = 2)
    (hk : Complex.normSq (sideS (H.submatrix front c)) *
      Complex.normSq (sideT (H.submatrix front c)) *
      Complex.normSq (sideR (H.submatrix front c)) = 5) : False := by
  obtain ⟨q, hq⟩ := Equiv.Perm.exists_extending_pair front c front_injective hc
  have he : H.submatrix front (q ∘ front) = H.submatrix front c := by
    ext i j
    change H (front i) (q (front j)) = H (front i) (c j)
    rw [hq]
  have hi := column_candidate_invariants hH.1 q front
  rw [he] at hi
  exact leading_p7_positive_impossible (allCritical_candidate hH (Equiv.refl _) q)
    (hi.1.trans hp) (hi.2.1.trans hj) (hi.2.2.2.trans hk)

/-- The actual p=7, |J|=2, K=5 scalar candidate is impossible in every one
of the twenty strip corners. Pole values and repeated roots are included. -/
theorem strip_p7_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 20)
    (hp : sideP (stripCorner H c) = 7)
    (hj : |sideJ (stripCorner H c)| = 2)
    (hk : Complex.normSq (sideS (stripCorner H c)) *
      Complex.normSq (sideT (stripCorner H c)) *
      Complex.normSq (sideR (stripCorner H c)) = 5) : False := by
  rcases (abs_eq (by norm_num : (0 : ℝ) ≤ 2)).mp hj with hj | hj
  · exact selected_p7_positive_impossible hH (triples c) (strip_triples_injective c) hp hj hk
  · obtain ⟨hS, hT, hR⟩ := strip_complementary_moments hH.1 c
    apply selected_p7_positive_impossible hH (triples (Fin.rev c))
      (strip_triples_injective (Fin.rev c))
    · change sideP (stripCorner H (Fin.rev c)) = 7
      simp only [sideP, hS, hT, hR, momentP_neg]
      exact hp
    · change sideJ (stripCorner H (Fin.rev c)) = 2
      simp only [sideJ, hS, hT, hR, momentJ_neg]
      change -sideJ (stripCorner H c) = 2
      rw [hj]
      norm_num
    · change Complex.normSq (sideS (stripCorner H (Fin.rev c))) *
        Complex.normSq (sideT (stripCorner H (Fin.rev c))) *
        Complex.normSq (sideR (stripCorner H (Fin.rev c))) = 5
      simpa only [hS, hT, hR, Complex.normSq_neg] using hk

end NoFourMUBs.Step2.Critical.P7
