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
theorem raw_fourier_binding : rawH = reindexMatrix swap24 (Equiv.refl I6)
    (affineFourierMatrix standardOmega Complex.I Complex.I).transpose := by
  have hs : (Real.sqrt 3)^2=3 := Real.sq_sqrt (by norm_num)
  ext i j
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;>
    apply Complex.ext <;>
    norm_num [rawH,z,swap24,reindexMatrix,karlssonRawMatrix,karlssonMixedChartMatrix,
      karlssonMixedE,karlssonMixedB,karlssonMixedC,karlssonMixedD,mixedLeadingBlock,mixedHorizontalBlock,
      karlssonBlockProduct,karlssonZLeft,karlssonZRight,karlssonCoreA,karlssonCoreB,karlssonF2,
      karlssonLambda,karlssonHalfAngleU,karlssonHalfAngleV,Matrix.mul_apply,Fin.sum_univ_two,
      affineFourierMatrix,standardOmega,Complex.mul_re,Complex.mul_im,Complex.div_re,Complex.div_im] <;>
    nlinarith
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
