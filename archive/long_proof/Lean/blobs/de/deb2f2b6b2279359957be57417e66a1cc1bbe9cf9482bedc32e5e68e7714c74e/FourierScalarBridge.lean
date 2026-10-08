import ConditionedFourierChart

/-! Necessary scalar reconstruction of actual phase sides, with all orientation
and denominator equations retained. No scalar sufficiency claim is made. -/
namespace Hadamard6Extensions.FourPhaseFourierBridge
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourierConditioning
noncomputable section

def sideAlpha (s u : ℂ) : ℂ := s^2 - 3*u*star s

def sideGamma (s t W : ℂ) : ℂ := 2*s*t - 3*W

def sidePivot (s t W delta : ℂ) : ℂ := (sideGamma s t W + delta)/2

def sideRadicand (s t u v r W delta : ℂ) : ℂ :=
  phaseRadicand s t u v r (sidePivot s t W delta) (sideAlpha s u) delta

/-- Scalar equations and nonzero guards for one radical reconstruction. These
conditions are necessary here; they are not asserted to imply physical flatness. -/
structure SideReconstructionData (s t u v r W delta tau : ℂ) : Prop where
  delta_square : delta^2 = (sideGamma s t W)^2 - 4*(sideAlpha s u)*(sideAlpha t v)
  delta_ne_zero : delta ≠ 0
  pivot_ne_zero : sidePivot s t W delta ≠ 0
  cube_eq : tau^3 = sideRadicand s t u v r W delta
  tau_ne_zero : tau ≠ 0

/-- The scalar reconstruction function, retaining the chosen orientation and
cube root. Its row order is (ones, x, y). -/
def reconstructedSide (s t u v r W delta tau w : ℂ) : Matrix (Fin 3) (Fin 3) ℂ :=
  radicalSide s t (sideAlpha s u) (sideAlpha t v) (sidePivot s t W delta) tau w

def reverseRow (x : Fin 3 → ℂ) : Fin 3 → ℂ := fun j => x (Equiv.swap 1 2 j)

theorem reverseRow_phase {x : Fin 3 → ℂ} (hx : IsPhase3 x) :
    IsPhase3 (reverseRow x) := by
  intro j
  exact hx _

theorem reverseRow_sum (x : Fin 3 → ℂ) : sum3 (reverseRow x) = sum3 x := by
  simp [sum3, reverseRow, Equiv.swap_apply_def]
  ring

theorem reverseRow_product (x : Fin 3 → ℂ) : prod3 (reverseRow x) = prod3 x := by
  simp [prod3, reverseRow, Equiv.swap_apply_def]
  ring

theorem reverseRow_cross (x y : Fin 3 → ℂ) :
    cross3 (reverseRow x) (reverseRow y) = cross3 x y := by
  simp [cross3, reverseRow, Equiv.swap_apply_def]
  ring

theorem reverseRow_permanent (x y : Fin 3 → ℂ) :
    permanentSide (reverseRow x) (reverseRow y) = permanentSide x y := by
  simp [permanentSide, reverseRow, Equiv.swap_apply_def]
  ring

theorem actual_row_fourier (x : Fin 3 → ℂ) (w : ℂ) (hw : w^2+w+1=0) :
    fourierRow (sum3 x) (firstMode x w) (secondMode x w) w = x := by
  have h := fourier_inverse (x 0) (x 1) (x 2) w hw
  simpa only [sum3, firstMode, secondMode,
    show (![x 0,x 1,x 2] : Fin 3 → ℂ) = x from by ext j; fin_cases j <;> rfl] using h

theorem affine_phase_pivot (s t A B C D w : ℂ) (hw : w^2+w+1=0) :
    sidePivot s t (permanentSide (fourierRow s A B w) (fourierRow t C D w))
      (9*(A*D-B*C)) = 9*A*D := by
  rw [sidePivot, sideGamma, phase_gamma s t A B C D w hw]
  exact oriented_pivot A B C D

theorem affine_phase_radicand (s t A B C D w : ℂ)
    (hw : w^2+w+1=0) (hdet : A*D-B*C≠0)
    (hx : IsPhase3 (fourierRow s A B w))
    (hy : IsPhase3 (fourierRow t C D w)) :
    sideRadicand s t (prod3 (fourierRow s A B w)) (prod3 (fourierRow t C D w))
      (cross3 (fourierRow s A B w) (fourierRow t C D w))
      (permanentSide (fourierRow s A B w) (fourierRow t C D w))
      (9*(A*D-B*C)) = A^3 := by
  rw [sideRadicand, affine_phase_pivot s t A B C D w hw, sideAlpha,
    phase_alpha s A B w hw hx]
  exact physical_phase_radicand_correct s t A B C D w hw hdet hx hy

theorem affine_phase_first_orientation (s t A B C D w : ℂ)
    (hw : w^2+w+1=0) (hdet : A*D-B*C≠0) (hA : A≠0) (hD : D≠0)
    (hx : IsPhase3 (fourierRow s A B w))
    (hy : IsPhase3 (fourierRow t C D w)) :
    ∀ tau : ℂ, tau^3=A^3 →
      SideReconstructionData s t (prod3 (fourierRow s A B w))
        (prod3 (fourierRow t C D w))
        (cross3 (fourierRow s A B w) (fourierRow t C D w))
        (permanentSide (fourierRow s A B w) (fourierRow t C D w))
        (9*(A*D-B*C)) tau ∧
      ∃ p : Equiv.Perm (Fin 3),
        reconstructedSide s t (prod3 (fourierRow s A B w))
          (prod3 (fourierRow t C D w))
          (cross3 (fourierRow s A B w) (fourierRow t C D w))
          (permanentSide (fourierRow s A B w) (fourierRow t C D w))
          (9*(A*D-B*C)) tau w =
        fun i j => affineSide s t A B C D w i (p j) := by
  intro tau htau
  have hp := affine_phase_pivot s t A B C D w hw
  have hT := affine_phase_radicand s t A B C D w hw hdet hx hy
  have hAn : A^3 ≠ 0 := pow_ne_zero 3 hA
  have htaun : tau ≠ 0 := by intro hz; apply hAn; rw [← htau, hz]; simp
  constructor
  · refine ⟨?_, mul_ne_zero (by norm_num) hdet, ?_, htau.trans hT.symm, htaun⟩
    · simp only [sideGamma, sideAlpha, phase_alpha s A B w hw hx,
        phase_alpha t C D w hw hy, phase_gamma s t A B C D w hw]
      exact (discriminant_factor A B C D).symm
    · rw [hp]
      exact mul_ne_zero (mul_ne_zero (by norm_num) hA) hD
  · simp only [reconstructedSide, hp, sideAlpha, phase_alpha s A B w hw hx,
      phase_alpha t C D w hw hy]
    exact cube_choice_only_permutes s t A B C D w tau hw hA hD htau

#print axioms reverseRow_phase
#print axioms reverseRow_sum
#print axioms reverseRow_product
#print axioms reverseRow_cross
#print axioms reverseRow_permanent
#print axioms actual_row_fourier
#print axioms affine_phase_pivot
#print axioms affine_phase_radicand
#print axioms affine_phase_first_orientation

end
end Hadamard6Extensions.FourPhaseFourierBridge
