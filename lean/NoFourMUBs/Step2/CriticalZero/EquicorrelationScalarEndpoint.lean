import NoFourMUBs.Step2.CriticalZero.EquicorrelationGram
import NoFourMUBs.Step2.Reconstruction.RowNormFlatness

/-! Reuse the existing AM-GM equality theorem on the normalized correlation
triple. This binds the scalar candidate to the same Gram obstruction. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open scoped BigOperators
namespace NoFourMUBs.Step2.Critical.Equicorrelation
open CriticalPhysical20261003 CriticalRowSum20261003

theorem equal_moduli_of_scalar_data (s t r : ℂ)
    (hp : Complex.normSq s + Complex.normSq t + Complex.normSq r = 27 / 5)
    (hk : Complex.normSq s * Complex.normSq t * Complex.normSq r = 729 / 125) :
    Complex.normSq s = 9 / 5 ∧ Complex.normSq t = 9 / 5 ∧
      Complex.normSq r = 9 / 5 := by
  let D : Hadamard6.Mat3 := fun _ => ![s / (2 + alpha), t / (2 + alpha), r / (2 + alpha)]
  have hA : Complex.normSq (2 + alpha) = 9 / 5 := oriented_gram_constants.1
  have hsum (i : Fin 3) : ∑ j, Complex.normSq (D i j) = 3 := by
    simp [D, Fin.sum_univ_three, Complex.normSq_div, hA]
    linear_combination (5 / 9 : ℝ) * hp
  have hprod (i : Fin 3) : Complex.normSq (∏ j, D i j) = 1 := by
    simp [D, map_prod, Fin.prod_univ_three, Complex.normSq_div, hA]
    linear_combination (125 / 729 : ℝ) * hk
  have hD := Reconstruction.entrywiseUnit_of_row_norms_and_products D hsum hprod
  have h0 := hD 0 0
  have h1 := hD 0 1
  have h2 := hD 0 2
  simp [D, Complex.normSq_div, hA] at h0 h1 h2
  exact ⟨by linarith only [h0], by linarith only [h1], by linarith only [h2]⟩

/-- The actual scalar candidate p=27/5, |J|=54/25, K=729/125 is impossible
at every strip corner. All coordinate normalization premises are discharged. -/
theorem strip_scalar_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 20)
    (hp : sideP (stripCorner H c) = 27 / 5)
    (hj : |sideJ (stripCorner H c)| = 54 / 25)
    (hk : Complex.normSq (sideS (stripCorner H c)) *
      Complex.normSq (sideT (stripCorner H c)) *
      Complex.normSq (sideR (stripCorner H c)) = 729 / 125) : False := by
  obtain ⟨hs, ht, hr⟩ := equal_moduli_of_scalar_data
    (sideS (stripCorner H c)) (sideT (stripCorner H c)) (sideR (stripCorner H c)) hp hk
  exact strip_gram_impossible hH c hs ht hr hj

end NoFourMUBs.Step2.Critical.Equicorrelation
