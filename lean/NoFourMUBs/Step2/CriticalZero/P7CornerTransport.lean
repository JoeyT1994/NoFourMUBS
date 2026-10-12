import NoFourMUBs.Step2.CriticalZero.P7FixedCorner
import NoFourMUBs.Step2.CriticalZero.RechartModel

/-! Only a column-permutation and dephasing adapter to the existing fixed corner. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.P7

theorem phased_corner_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 3 → Fin 6) (hc : Function.Injective c)
    (u v : ℂ)
    (hx0 : u * H 1 (c 0) = 1) (hy0 : v * H 2 (c 0) = 1)
    (hx1 : u * H 1 (c 1) = -1) (hy1 : v * H 2 (c 1) = Complex.I)
    (hx2 : u * H 1 (c 2) = Complex.I) (hy2 : v * H 2 (c 2) = -Complex.I) :
    False := by
  obtain ⟨q, hq⟩ := Equiv.Perm.exists_extending_pair cols c cols_injective hc
  have hq0 : q 0 = c 0 := hq 0
  have hq3 : q 3 = c 1 := hq 1
  have hq5 : q 5 = c 2 := hq 2
  have hu0 : (H 1 (c 0))⁻¹ = u := inv_eq_of_mul_eq_one_left hx0
  have hv0 : (H 2 (c 0))⁻¹ = v := inv_eq_of_mul_eq_one_left hy0
  have hrow1 (j : Fin 6) : candidate H (Equiv.refl _) q 1 j = u * H 1 (q j) := by
    simp [candidate, OAI.MUB6.dephase, OAI.MUB6.phaseTransform,
      Matrix.submatrix_apply, hH.1.2.1, hq0, hu0]
  have hrow2 (j : Fin 6) : candidate H (Equiv.refl _) q 2 j = v * H 2 (q j) := by
    simp [candidate, OAI.MUB6.dephase, OAI.MUB6.phaseTransform,
      Matrix.submatrix_apply, hH.1.2.1, hq0, hv0]
  apply normalized_strip_impossible (allCritical_candidate hH (Equiv.refl _) q)
  · simpa only [hrow1, hq3] using hx1
  · simpa only [hrow1, hq5] using hx2
  · simpa only [hrow2, hq3] using hy1
  · simpa only [hrow2, hq5] using hy2

end NoFourMUBs.Step2.Critical.P7
