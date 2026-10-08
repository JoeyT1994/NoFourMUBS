import FourierGoodBridge

/-! The physical discriminant has a uniform norm bound for either square-root
sign. This justifies a fixed rational floor in interval division by delta^3. -/
namespace Hadamard6Extensions.FourPhaseFourierBridge
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourierConditioning
noncomputable section

theorem normSq_eq_of_square_eq {z a : ℂ} (h : z^2=a^2) :
    Complex.normSq z=Complex.normSq a := by
  have hn := congrArg Complex.normSq h
  simp only [map_pow] at hn
  exact (pow_left_inj₀ (Complex.normSq_nonneg z)
    (Complex.normSq_nonneg a) (by decide : (2 : ℕ)≠0)).mp hn

theorem affine_phase_delta_normSq (s t A B C D w delta : ℂ)
    (hw : w^2+w+1=0)
    (hx : IsPhase3 (fourierRow s A B w))
    (hy : IsPhase3 (fourierRow t C D w))
    (hd : delta^2=(sideGamma s t
      (permanentSide (fourierRow s A B w) (fourierRow t C D w)))^2-
      4*sideAlpha s (prod3 (fourierRow s A B w))*
        sideAlpha t (prod3 (fourierRow t C D w))) :
    Complex.normSq delta=3*Complex.normSq (affineSide s t A B C D w).det := by
  simp only [sideGamma,sideAlpha,phase_alpha s A B w hw hx,
    phase_alpha t C D w hw hy,phase_gamma s t A B C D w hw] at hd
  rw [discriminant_factor] at hd
  exact (normSq_eq_of_square_eq hd).trans (discriminant_normSq s t A B C D w hw)

theorem actual_phase_delta_normSq (x y : Fin 3 → ℂ) (w delta : ℂ)
    (hw : w^2+w+1=0) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hd : delta^2=(sideGamma (sum3 x) (sum3 y) (permanentSide x y))^2-
      4*sideAlpha (sum3 x) (prod3 x)*sideAlpha (sum3 y) (prod3 y)) :
    Complex.normSq delta=3*Complex.normSq (actualSide x y).det := by
  have hxr := actual_row_fourier x w hw
  have hyr := actual_row_fourier y w hw
  have h := affine_phase_delta_normSq (sum3 x) (sum3 y)
    (firstMode x w) (secondMode x w) (firstMode y w) (secondMode y w) w delta hw
    (by rwa [hxr]) (by rwa [hyr]) (by simpa only [hxr,hyr] using hd)
  simpa only [actual_side_fourier x y w hw] using h

theorem actual_good_delta_guard (x y : Fin 3 → ℂ) (w delta : ℂ)
    (hw : w^2+w+1=0) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (actualSide x y).det)
    (hd : delta^2=(sideGamma (sum3 x) (sum3 y) (permanentSide x y))^2-
      4*sideAlpha (sum3 x) (prod3 x)*sideAlpha (sum3 y) (prod3 y)) :
    (162/5 : ℝ) ≤ Complex.normSq delta := by
  rw [actual_phase_delta_normSq x y w delta hw hx hy hd]
  linarith

#check normSq_eq_of_square_eq
#print axioms normSq_eq_of_square_eq
#check affine_phase_delta_normSq
#print axioms affine_phase_delta_normSq
#check actual_phase_delta_normSq
#print axioms actual_phase_delta_normSq
#check actual_good_delta_guard
#print axioms actual_good_delta_guard
end
end Hadamard6Extensions.FourPhaseFourierBridge
