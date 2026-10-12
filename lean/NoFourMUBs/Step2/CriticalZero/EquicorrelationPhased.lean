import NoFourMUBs.Step2.CriticalZero.EquicorrelationCoordinates
import NoFourMUBs.Step2.CriticalZero.EquicorrelationNormalized
import NoFourMUBs.Step2.CriticalZero.ColumnRechart

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open scoped BigOperators ComplexConjugate
namespace NoFourMUBs.Step2.Critical.Equicorrelation

theorem phased_corner_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 3 → Fin 6) (hc : Function.Injective c)
    (u v : ℂ)
    (hx0 : u * H 1 (c 0) = 1) (hy0 : v * H 2 (c 0) = 1)
    (hx1 : u * H 1 (c 1) = 1) (hy1 : v * H 2 (c 1) = conj alpha)
    (hx2 : u * H 1 (c 2) = alpha) (hy2 : v * H 2 (c 2) = 1) : False := by
  obtain ⟨q, hq⟩ := Equiv.Perm.exists_extending_pair front c front_injective hc
  have hq0 : q 0 = c 0 := hq 0
  have hq1 : q 1 = c 1 := hq 1
  have hq2 : q 2 = c 2 := hq 2
  have hu0 : (H 1 (c 0))⁻¹ = u := inv_eq_of_mul_eq_one_left hx0
  have hv0 : (H 2 (c 0))⁻¹ = v := inv_eq_of_mul_eq_one_left hy0
  have hrow1 (j : Fin 6) : candidate H (Equiv.refl _) q 1 j = u * H 1 (q j) := by
    rw [column_candidate_entry hH.1, hq0, Complex.star_def,
      ← OAI.MUB6.unit_inv_eq_conj (hH.1.1.1 1 (c 0)), hu0]
  have hrow2 (j : Fin 6) : candidate H (Equiv.refl _) q 2 j = v * H 2 (q j) := by
    rw [column_candidate_entry hH.1, hq0, Complex.star_def,
      ← OAI.MUB6.unit_inv_eq_conj (hH.1.1.1 2 (c 0)), hv0]
  apply normalized_block_impossible (allCritical_candidate hH (Equiv.refl _) q)
  · simpa only [hrow1, hq1] using hx1
  · simpa only [hrow1, hq2] using hx2
  · simpa only [hrow2, hq1, OAI.MUB6.unit_inv_eq_conj alpha_unit] using hy1
  · simpa only [hrow2, hq2] using hy2

/-- The actual phased Gram reaches the one existing corner obstruction. -/
theorem phased_selected_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 3 → Fin 6) (hc : Function.Injective c)
    (u v : ℂ)
    (hu : Complex.normSq u = 1) (hv : Complex.normSq v = 1)
    (hs : ∑ j : Fin 3, u * H 1 (c j) = 2 + alpha)
    (ht : ∑ j : Fin 3, v * H 2 (c j) = 2 + conj alpha)
    (hr : ∑ j : Fin 3, (v * H 2 (c j)) * star (u * H 1 (c j)) =
      1 + 2 * conj alpha) : False := by
  obtain ⟨p, hp, hx0, hy0, hx1, hy1, hx2, hy2⟩ := oriented_coordinate_allocation
    (fun j => u * H 1 (c j)) (fun j => v * H 2 (c j))
    (fun j => by simp [map_mul, hu, hH.1.1.1])
    (fun j => by simp [map_mul, hv, hH.1.1.1]) hs ht hr
  exact phased_corner_impossible hH (c ∘ p) (hc.comp hp)
    u v hx0 hy0 hx1 hy1 hx2 hy2

end NoFourMUBs.Step2.Critical.Equicorrelation
