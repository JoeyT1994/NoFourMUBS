import NoFourMUBs.Step2.SOS.SignatureLaurent
import NoFourMUBs.Step2.SOS.ComplementaryFrames

/-! The complementary-Psi rows are averages of the same pointwise signature
equality, multiplied by a unit monomial. The sampling and conjugation rules
are those of the existing Fourier library. -/

noncomputable section
open scoped BigOperators ComplexConjugate
open Hadamard6 OAI.MUB6
namespace NoFourMUBs.Step2.SOS

theorem exponentMonomial_block (H : CMatrix) (A : Matrix (Fin 3) (Fin 3) ℤ)
    (ρ κ : Coord ↪ Coord) (b : Bool) :
    exponentMonomial H (blockExponent A b) ρ κ =
      ∏ i, ∏ j, sampledBlock H ρ κ b i j ^ A i j := by
  unfold exponentMonomial
  rw [← FourierBridge.coordinates.prod_comp]
  simp_rw [← FourierBridge.coordinates.prod_comp]
  cases b <;> simp [blockExponent, FourierBridge.coordinates, sampledBlock, firstHalf, secondHalf,
    Fintype.prod_sum_type]

theorem exponentMonomial_add_six {H : CMatrix}
    (hH : ∀ i j, Complex.normSq (H i j) = 1)
    (A T : Matrix Coord Coord ℤ) (ρ κ : Coord ↪ Coord) :
    exponentMonomial H (A + T) ρ κ =
      exponentMonomial H A ρ κ * exponentMonomial H T ρ κ := by
  change (∏ i, character (fun j => H (ρ i) (κ j)) (A i + T i)) =
    (∏ i, character (fun j => H (ρ i) (κ j)) (A i)) *
    (∏ i, character (fun j => H (ρ i) (κ j)) (T i))
  simp only [character_add _ (fun j => unit_ne_zero (hH _ _)),
    Finset.prod_mul_distrib]

theorem complementary_monomials {H : CMatrix}
    (hH : ∀ i j, Complex.normSq (H i j) = 1) (hC : ComplementarySignatures H)
    (T : Matrix Coord Coord ℤ) (ρ κ : Coord ↪ Coord) :
    (∑ k : Fin 55, (psiCoefficient k : ℂ) *
      (exponentMonomial H (blockExponent (psiExponent k) false - T) ρ κ -
       exponentMonomial H (blockExponent (psiExponent k) true - T) ρ κ)) = 0 := by
  have he := hC ρ κ
  rw [sideSignature_laurent (sampledBlock H ρ κ false) (fun i j => hH _ _),
    sideSignature_laurent (sampledBlock H ρ κ true) (fun i j => hH _ _), neg_inj] at he
  simp only [sub_eq_add_neg, exponentMonomial_add_six hH,
    exponentMonomial_neg H hH, exponentMonomial_block]
  simp only [← sub_eq_add_neg, mul_sub, Finset.sum_sub_distrib,
    ← mul_assoc, ← Finset.sum_mul]
  rw [he]
  simp

theorem complementary_real_monomials {H : CMatrix}
    (hH : ∀ i j, Complex.normSq (H i j) = 1) (hC : ComplementarySignatures H)
    (T : Matrix Coord Coord ℤ) (ρ κ : Coord ↪ Coord) :
    (∑ k : Fin 55, (psiCoefficient k : ℝ) *
      ((exponentMonomial H (blockExponent (psiExponent k) false - T) ρ κ).re -
       (exponentMonomial H (blockExponent (psiExponent k) true - T) ρ κ).re)) = 0 := by
  simpa only [Complex.re_sum, Complex.mul_re, Complex.intCast_re,
    Complex.intCast_im, zero_mul, sub_zero, Complex.sub_re, Complex.zero_re] using
    congrArg Complex.re (complementary_monomials hH hC T ρ κ)

theorem complementary_moments {H : CMatrix} (hH : IsHadamard H)
    (hC : ComplementarySignatures H) (T : Matrix Coord Coord ℤ) :
    (∑ k : Fin 55, (psiCoefficient k : ℝ) *
      (injectiveMoment H (blockExponent (psiExponent k) false - T) -
       injectiveMoment H (blockExponent (psiExponent k) true - T))) = 0 := by
  have hz (s : (Coord ↪ Coord) × (Coord ↪ Coord)) :
      (∑ k : Fin 55, (psiCoefficient k : ℝ) *
        (((exponentMonomial H (blockExponent (psiExponent k) false - T) s.1 s.2).re +
          (exponentMonomial H.transpose (blockExponent (psiExponent k) false - T) s.1 s.2).re) / 2 -
         ((exponentMonomial H (blockExponent (psiExponent k) true - T) s.1 s.2).re +
          (exponentMonomial H.transpose (blockExponent (psiExponent k) true - T) s.1 s.2).re) / 2)) = 0 := by
    have h1 := complementary_real_monomials hH.1 hC T s.1 s.2
    have h2 := complementary_real_monomials hH.transpose.1 hC.transpose T s.1 s.2
    calc
      _ = ((∑ k : Fin 55, (psiCoefficient k : ℝ) *
          ((exponentMonomial H (blockExponent (psiExponent k) false - T) s.1 s.2).re -
           (exponentMonomial H (blockExponent (psiExponent k) true - T) s.1 s.2).re)) +
          (∑ k : Fin 55, (psiCoefficient k : ℝ) *
          ((exponentMonomial H.transpose (blockExponent (psiExponent k) false - T) s.1 s.2).re -
           (exponentMonomial H.transpose (blockExponent (psiExponent k) true - T) s.1 s.2).re))) / 2 := by
        rw [← Finset.sum_add_distrib, Finset.sum_div]
        apply Finset.sum_congr rfl
        intro k _
        ring
      _ = 0 := by rw [h1, h2]; norm_num
  have ha := average_congr hz
  rw [average_zero] at ha
  rw [average_sum] at ha
  simp_rw [average_mul] at ha
  convert ha using 1
  apply Finset.sum_congr rfl
  intro k _
  congr 1
  simp only [injectiveMoment, average, Finset.sum_sub_distrib, mul_sub]

end NoFourMUBs.Step2.SOS
