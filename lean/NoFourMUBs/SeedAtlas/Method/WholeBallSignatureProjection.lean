import NoFourMUBs.SeedAtlas.Method.WholeBallSignatureBounds

/-! The side variation is measured after the two three-dimensional centering
projections. The signature frequencies annihilate all row and column phases. -/

open Matrix Complex Hadamard6 NoFourMUBs.Step2

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

def sideIndex (i j : Fin 3) : Fin 9 := finProdFinEquiv (i, j)

noncomputable def sideHorizontal (q : Fin 9 → ℝ) (a : Fin 9) : ℝ :=
  let p := (finProdFinEquiv (m := 3) (n := 3)).symm a
  q a - (∑ j : Fin 3, q (sideIndex p.1 j)) / 3 -
    (∑ i : Fin 3, q (sideIndex i p.2)) / 3 + (∑ b : Fin 9, q b) / 9

set_option maxHeartbeats 0 in
theorem signatureDot_horizontal (i : Fin 24) (q : Fin 9 → ℝ) :
    signatureDot i (sideHorizontal q) = signatureDot i q := by
  fin_cases i <;>
    norm_num [signatureDot, signatureFrequency, sideHorizontal, sideIndex, Fin.sum_univ_succ] <;>
    ring!

lemma signatureDot_add (i : Fin 24) (q v : Fin 9 → ℝ) :
    signatureDot i (q + v) = signatureDot i q + signatureDot i v := by
  simp [signatureDot, mul_add, Finset.sum_add_distrib]

theorem signature_horizontal_increment (q v : Fin 9 → ℝ) :
    (psi (signaturePhaseBlock (q + sideHorizontal v))).im =
      (psi (signaturePhaseBlock (q + v))).im := by
  rw [signature_fourier, signature_fourier]
  change (∑ i, (signatureCoefficient i : ℝ) *
    (Complex.exp (signatureDot i (q + sideHorizontal v) * I)).im) =
      ∑ i, (signatureCoefficient i : ℝ) * (Complex.exp (signatureDot i (q + v) * I)).im
  simp only [signatureDot_add, signatureDot_horizontal]

/-- Z (14), with the projected side increment used in `A_s`. -/
theorem signature_variation_projected (q v : Fin 9 → ℝ) :
    |(psi (signaturePhaseBlock (q + v))).im - (psi (signaturePhaseBlock q)).im| ≤
      |∑ j, signatureGradient q j * sideHorizontal v j| +
        36 * ∑ j, (sideHorizontal v j) ^ 2 := by
  rw [← signature_horizontal_increment]
  exact signature_variation q (sideHorizontal v)

end NoFourMUBs.SeedAtlas.Method.WholeBall
