import KarlssonEnclosureProvider
import KarlssonCellb6116a518f4c75eb
set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace Mub6.Classification.KarlssonCompiler.Controls
open Complex Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.Numerical.CircleCharts
noncomputable section

def seamX : Fin 2 → ℝ := ![0,1/4]
theorem seam_physical : IsHadamard (seamMatrix KarlssonCellb6116a518f4c75eb.input.label seamX) := by
  exact affineFourierMatrix_isHadamard standardOmega_isPrimitiveCubicPhase
    (signedCircle_normSq _ _) (signedCircle_normSq _ _)
theorem seam_parameters : ∀ i, Mem (KarlssonCellb6116a518f4c75eb.input.parameters i) (seamX i) := by
  intro i
  fin_cases i <;> norm_num [KarlssonCellb6116a518f4c75eb.input,seamX,Mem]
theorem seam_nonempty : ∃ H : Mat6, IsHadamard H ∧
    CarrierBox KarlssonCellb6116a518f4c75eb.carrier (ClassificationCover.toNumerical H) :=
  ⟨_,seam_physical,KarlssonCellb6116a518f4c75eb.physical_enclosure seam_parameters seam_physical⟩

def z : Fin 4 → ℂ := ![1,1,Complex.I,Complex.I]
def rawH : Mat6 := karlssonRawMatrix 1 Complex.I (z 0) (z 1) (z 2) (z 3)
def swap24 : Equiv.Perm I6 := Equiv.swap (Sum.inl 2) (Sum.inr 1)
theorem coreA_control : karlssonCoreA 1 Complex.I =
    !![((Real.sqrt 3 : ℂ)-1)/2,-((Real.sqrt 3 : ℂ)+1)/2;
      -((Real.sqrt 3 : ℂ)+1)/2,(1-(Real.sqrt 3 : ℂ))/2] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [karlssonCoreA,karlssonF2,karlssonLambda,karlssonHalfAngleU,karlssonHalfAngleV,
      Matrix.mul_apply,Matrix.vecMul,dotProduct,Fin.sum_univ_two] <;> ring

theorem coreB_control : karlssonCoreB 1 Complex.I =
    !![-((Real.sqrt 3 : ℂ)+1)/2,((Real.sqrt 3 : ℂ)-1)/2;
      ((Real.sqrt 3 : ℂ)-1)/2,((Real.sqrt 3 : ℂ)+1)/2] := by
  rw [karlssonCoreB,coreA_control]
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [karlssonF2] <;> ring


@[simp] theorem idx0 : (finSumFinEquiv.symm (0 : Fin 6) : I6)=Sum.inl 0 := rfl
@[simp] theorem idx1 : (finSumFinEquiv.symm (1 : Fin 6) : I6)=Sum.inl 1 := rfl
@[simp] theorem idx2 : (finSumFinEquiv.symm (2 : Fin 6) : I6)=Sum.inl 2 := rfl
@[simp] theorem idx3 : (finSumFinEquiv.symm (3 : Fin 6) : I6)=Sum.inr 0 := rfl
@[simp] theorem idx4 : (finSumFinEquiv.symm (4 : Fin 6) : I6)=Sum.inr 1 := rfl
@[simp] theorem idx5 : (finSumFinEquiv.symm (5 : Fin 6) : I6)=Sum.inr 2 := rfl

theorem raw_fourier_binding : rawH = reindexMatrix swap24 (Equiv.refl I6)
    (affineFourierMatrix standardOmega Complex.I Complex.I).transpose := by
  have hs : (Real.sqrt 3)^2=3 := Real.sq_sqrt (by norm_num)
  have hn : ClassificationCover.toNumerical rawH =
      ClassificationCover.toNumerical (reindexMatrix swap24 (Equiv.refl I6)
        (affineFourierMatrix standardOmega Complex.I Complex.I).transpose) := by
    rw [rawH,raw_to_literal,coreA_control,coreB_control]
    funext i j
    fin_cases i <;> fin_cases j <;>
      apply Complex.ext <;>
      norm_num [rawLiteral,z,karlssonBlockProduct,karlssonZLeft,karlssonZRight,
        Matrix.mul_apply,Matrix.vecMul,dotProduct,Fin.sum_univ_two,Matrix.fromBlocks,Matrix.cons_val_three,
        ClassificationCover.toNumerical,ClassificationCover.indexEquiv,
        reindexMatrix,swap24,Equiv.swap_apply_def,affineFourierMatrix,standardOmega,
        Complex.mul_re,Complex.mul_im,Complex.div_re,Complex.div_im] <;> nlinarith
  simpa only [ClassificationCover.roundtrip_public] using congrArg ClassificationCover.toPublic hn
theorem raw_physical : IsHadamard rawH := by
  rw [raw_fourier_binding]
  apply reindexMatrix_isHadamard
  apply transpose_isHadamard
  exact affineFourierMatrix_isHadamard standardOmega_isPrimitiveCubicPhase (by norm_num) (by norm_num)

#print axioms seam_nonempty
#print axioms raw_fourier_binding
#print axioms raw_physical
end
end Mub6.Classification.KarlssonCompiler.Controls
