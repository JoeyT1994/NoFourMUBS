import NoFourMUBs.Step2.CriticalZero.P7Triples
import NoFourMUBs.Step2.CriticalZero.P7CornerTransport

/-! Connect the row argument to the existing actual all-critical matrix model. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open scoped BigOperators
namespace NoFourMUBs.Step2.Critical.P7
open CriticalPhysical20261003 CriticalRowSum20261003
open Equicorrelation (tail)

/-- The oriented, row-phased p=7 Gram data is impossible. No coordinate
normal form or nonzero reconstruction denominator is assumed. -/
theorem phased_strip_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (u v : ℂ)
    (hu : Complex.normSq u = 1) (hv : Complex.normSq v = 1)
    (hsx : ∑ j : Fin 3, u * H 1 (front j) = 1)
    (hsy : ∑ j : Fin 3, v * H 2 (front j) = 1)
    (hc : ∑ j : Fin 3, (v * H 2 (front j)) * star (u * H 1 (front j)) =
      1 + 2 * Complex.I) : False := by
  have hxunit (j : Fin 6) : Complex.normSq (u * H 1 j) = 1 := by
    simp [map_mul, hu, hH.1.1.1]
  have hyunit (j : Fin 6) : Complex.normSq (v * H 2 j) = 1 := by
    simp [map_mul, hv, hH.1.1.1]
  obtain ⟨j, hxj, hyj⟩ := positive_triples_common_one
    (fun j => u * H 1 (front j)) (fun j => v * H 2 (front j))
    (fun j => hxunit (front j)) (fun j => hyunit (front j)) hsx hsy hc
  have hxsum : ∑ j : Fin 6, u * H 1 j = 0 := by
    rw [← Finset.mul_sum]
    have h := relative_row_sum_zero hH.1.1 (a := 1) (b := 0) (by decide)
    simpa only [relativeRow, hH.1.2.1, star_one, mul_one, mul_zero] using
      congrArg (fun z : ℂ => u * z) h
  have hysum : ∑ j : Fin 6, v * H 2 j = 0 := by
    rw [← Finset.mul_sum]
    have h := relative_row_sum_zero hH.1.1 (a := 2) (b := 0) (by decide)
    simpa only [relativeRow, hH.1.2.1, star_one, mul_one, mul_zero] using
      congrArg (fun z : ℂ => v * z) h
  have hcsum : ∑ j : Fin 6, (v * H 2 j) * star (u * H 1 j) = 0 := by
    calc
      _ = v * star u * ∑ j : Fin 6, relativeRow H 2 1 j := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro j _
        simp only [relativeRow, star_mul]
        ring
      _ = 0 := by rw [relative_row_sum_zero hH.1.1 (by decide)]; ring
  rw [Fin.sum_univ_add (a := 3) (b := 3)] at hxsum hysum hcsum
  have hxt : ∑ j : Fin 3, u * H 1 (tail j) = -1 := by
    change (∑ j : Fin 3, u * H 1 (front j)) +
      (∑ j : Fin 3, u * H 1 (tail j)) = 0 at hxsum
    rw [hsx] at hxsum
    linear_combination hxsum
  have hyt : ∑ j : Fin 3, v * H 2 (tail j) = -1 := by
    change (∑ j : Fin 3, v * H 2 (front j)) +
      (∑ j : Fin 3, v * H 2 (tail j)) = 0 at hysum
    rw [hsy] at hysum
    linear_combination hysum
  have hct : ∑ j : Fin 3, (v * H 2 (tail j)) * star (u * H 1 (tail j)) =
      -1 - 2 * Complex.I := by
    change (∑ j : Fin 3, (v * H 2 (front j)) * star (u * H 1 (front j))) +
      (∑ j : Fin 3, (v * H 2 (tail j)) * star (u * H 1 (tail j))) = 0 at hcsum
    rw [hc] at hcsum
    linear_combination hcsum
  obtain ⟨i, k, _, hxi, hyi, hxk, hyk⟩ := negative_triples_fixed_pair
    (fun j => u * H 1 (tail j)) (fun j => v * H 2 (tail j))
    (fun j => hxunit (tail j)) (fun j => hyunit (tail j)) hxt hyt hct
  let c : Fin 3 → Fin 6 := ![front j, tail i, tail k]
  have hinj : Function.Injective c := by
    intro a b hab
    have he := congrArg (fun l => u * H 1 l) hab
    fin_cases a <;> fin_cases b <;>
      first | rfl | norm_num [c, hxj, hxi, hxk, Complex.ext_iff] at he
  exact phased_corner_impossible hH c hinj u v hxj hyj hxi hyi hxk hyk

end NoFourMUBs.Step2.Critical.P7
