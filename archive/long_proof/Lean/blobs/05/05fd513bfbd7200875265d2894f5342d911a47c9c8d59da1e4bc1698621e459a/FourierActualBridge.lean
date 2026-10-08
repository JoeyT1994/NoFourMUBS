import FourierScalarBridge

/-! Necessary reconstruction covers for actual invertible phase sides. -/
namespace Hadamard6Extensions.FourPhaseFourierBridge
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourierConditioning
noncomputable section

/-- All displayed two-orientation equations, with denominators and cube-root
existence retained. The pivot and radicand remain explicit scalar functions. -/
structure SideOrientationData (s t u v r W delta h T : ℂ) : Prop where
  delta_square : delta^2 = (sideGamma s t W)^2 - 4*(sideAlpha s u)*(sideAlpha t v)
  delta_ne_zero : delta ≠ 0
  h_eq : h = sidePivot s t W delta
  h_ne_zero : h ≠ 0
  T_eq : T = sideRadicand s t u v r W delta
  T_ne_zero : T ≠ 0
  root_exists : ∃ tau : ℂ, tau^3=T

theorem orientationData_of_root (s t u v r W delta h T tau : ℂ)
    (hh : h = sidePivot s t W delta) (hT : tau^3=T)
    (hd : SideReconstructionData s t u v r W delta tau) :
    SideOrientationData s t u v r W delta h T := by
  refine ⟨hd.delta_square, hd.delta_ne_zero, hh, ?_, hT.symm.trans hd.cube_eq, ?_,
    ⟨tau,hT⟩⟩
  · rwa [hh]
  · rw [← hT]
    exact pow_ne_zero 3 hd.tau_ne_zero

theorem SideOrientationData.to_reconstruction {s t u v r W delta h T : ℂ}
    (hd : SideOrientationData s t u v r W delta h T) (tau : ℂ) (hroot : tau^3=T) :
    SideReconstructionData s t u v r W delta tau := by
  refine ⟨hd.delta_square, hd.delta_ne_zero, ?_, hroot.trans hd.T_eq, ?_⟩
  · rwa [← hd.h_eq]
  · intro hz
    apply hd.T_ne_zero
    rw [← hroot, hz]
    simp

theorem affine_invertible_side_explicit_reconstruction (s t A B C D w : ℂ)
    (hw : w^2+w+1=0) (hdet : A*D-B*C≠0)
    (hx : IsPhase3 (fourierRow s A B w))
    (hy : IsPhase3 (fourierRow t C D w)) :
    ∃ delta h T : ℂ,
      SideOrientationData s t (prod3 (fourierRow s A B w))
        (prod3 (fourierRow t C D w))
        (cross3 (fourierRow s A B w) (fourierRow t C D w))
        (permanentSide (fourierRow s A B w) (fourierRow t C D w)) delta h T ∧
      ∀ tau : ℂ, tau^3=T →
        SideReconstructionData s t (prod3 (fourierRow s A B w))
          (prod3 (fourierRow t C D w))
          (cross3 (fourierRow s A B w) (fourierRow t C D w))
          (permanentSide (fourierRow s A B w) (fourierRow t C D w)) delta tau ∧
        ∃ p : Equiv.Perm (Fin 3),
          reconstructedSide s t (prod3 (fourierRow s A B w))
            (prod3 (fourierRow t C D w))
            (cross3 (fourierRow s A B w) (fourierRow t C D w))
            (permanentSide (fourierRow s A B w) (fourierRow t C D w)) delta tau w =
          fun i j => affineSide s t A B C D w i (p j) := by
  rcases one_orientation_nonzero hdet with had | hbc
  · have hrec := affine_phase_first_orientation s t A B C D w hw hdet
      (left_ne_zero_of_mul had) (right_ne_zero_of_mul had) hx hy
    refine ⟨9*(A*D-B*C), 9*A*D, A^3, ?_, hrec⟩
    exact orientationData_of_root _ _ _ _ _ _ _ _ _ A
      (affine_phase_pivot s t A B C D w hw).symm rfl (hrec A rfl).1
  · have hrec := affine_phase_second_orientation s t A B C D w hw hdet
      (left_ne_zero_of_mul hbc) (right_ne_zero_of_mul hbc) hx hy
    refine ⟨9*(B*C-A*D), 9*B*C, B^3, ?_, hrec⟩
    exact orientationData_of_root _ _ _ _ _ _ _ _ _ B
      (affine_phase_opposite_pivot s t A B C D w hw).symm rfl (hrec B rfl).1

theorem actual_invertible_side_explicit_reconstruction (x y : Fin 3 → ℂ) (w : ℂ)
    (hw : w^2+w+1=0) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hinv : (actualSide x y).det ≠ 0) :
    ∃ delta h T : ℂ,
      SideOrientationData (sum3 x) (sum3 y) (prod3 x) (prod3 y)
        (cross3 x y) (permanentSide x y) delta h T ∧
      ∀ tau : ℂ, tau^3=T →
        SideReconstructionData (sum3 x) (sum3 y) (prod3 x) (prod3 y)
          (cross3 x y) (permanentSide x y) delta tau ∧
        ∃ p : Equiv.Perm (Fin 3),
          reconstructedSide (sum3 x) (sum3 y) (prod3 x) (prod3 y)
            (cross3 x y) (permanentSide x y) delta tau w =
          fun i j => actualSide x y i (p j) := by
  have hside := actual_side_fourier x y w hw
  have hxr := actual_row_fourier x w hw
  have hyr := actual_row_fourier y w hw
  have hdn := invertible_side_has_nonzero_discriminant (sum3 x) (sum3 y)
    (firstMode x w) (secondMode x w) (firstMode y w) (secondMode y w) w hw
    (by rwa [hside])
  have hdet : firstMode x w*secondMode y w-secondMode x w*firstMode y w≠0 := by
    intro hz
    apply hdn
    rw [hz,mul_zero]
  have h := affine_invertible_side_explicit_reconstruction (sum3 x) (sum3 y)
    (firstMode x w) (secondMode x w) (firstMode y w) (secondMode y w) w hw hdet
    (by rwa [hxr]) (by rwa [hyr])
  simpa only [hxr, hyr, hside] using h

#print axioms orientationData_of_root
#print axioms SideOrientationData.to_reconstruction
#print axioms affine_invertible_side_explicit_reconstruction
#print axioms actual_invertible_side_explicit_reconstruction

end
end Hadamard6Extensions.FourPhaseFourierBridge
