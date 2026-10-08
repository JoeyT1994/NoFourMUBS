import KarlssonLiftedContinuity
set_option autoImplicit false

namespace Mub6.Classification.KarlssonLifted.DegenerateControl
open Complex Hadamard6 Mub6
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonCompiler
open Mub6.Numerical.CircleCharts
noncomputable section
set_option maxHeartbeats 3000000

def H : Mat6 := karlssonRawMatrix 1 1 1 1 1 1
def columnSwap : Equiv.Perm I6 := Equiv.swap (Sum.inr 0) (Sum.inr 2)

theorem coreA_exact : karlssonCoreA 1 1 =
    !![standardOmega,standardOmega;standardOmega^2,-standardOmega^2] := by
  have hs : (Real.sqrt 3)^2=3 := Real.sq_sqrt (by norm_num)
  ext i j
  fin_cases i <;> fin_cases j <;>
    apply Complex.ext <;>
    norm_num [karlssonCoreA,karlssonF2,karlssonLambda,karlssonHalfAngleU,karlssonHalfAngleV,
      Matrix.mul_apply,Fin.sum_univ_two,standardOmega,
      Complex.mul_re,Complex.mul_im,Complex.div_re,Complex.div_im,pow_two] <;> nlinarith

theorem coreB_exact : karlssonCoreB 1 1 =
    !![standardOmega^2,standardOmega^2;standardOmega,-standardOmega] := by
  have hw := standardOmega_isPrimitiveCubicPhase.2
  rw [karlssonCoreB,coreA_exact]
  ext i j
  fin_cases i <;> fin_cases j <;> simp [karlssonF2]
  all_goals first | linear_combination hw | linear_combination -hw

theorem fourier_binding :
    H = reindexMatrix (Equiv.refl I6) columnSwap (affineFourierMatrix standardOmega 1 1) := by
  have hw := standardOmega_isPrimitiveCubicPhase.2
  have hn : ClassificationCover.toNumerical H =
      ClassificationCover.toNumerical
        (reindexMatrix (Equiv.refl I6) columnSwap (affineFourierMatrix standardOmega 1 1)) := by
    rw [H,raw_to_literal _ _ (fun _ => 1),coreA_exact,coreB_exact]
    funext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [rawLiteral,karlssonBlockProduct,karlssonZLeft,karlssonZRight,
        Matrix.mul_apply,Fin.sum_univ_two,ClassificationCover.toNumerical,
        ClassificationCover.indexEquiv,finSumFinEquiv,Fin.addCases,reindexMatrix,columnSwap,Equiv.swap_apply_def,
        affineFourierMatrix,Matrix.fromBlocks]
    all_goals first | ring | linear_combination hw | linear_combination -hw
  simpa only [ClassificationCover.roundtrip_public] using congrArg ClassificationCover.toPublic hn

theorem physical : IsHadamard H := by
  rw [fourier_binding]
  apply reindexMatrix_isHadamard
  exact affineFourierMatrix_isHadamard standardOmega_isPrimitiveCubicPhase (by norm_num) (by norm_num)

theorem both_mobius_degenerate :
    normSq (coeffA 1 1)=normSq (coeffB 1 1) ∧
    normSq (coeffC 1 1)=normSq (coeffD 1 1) := by
  simp [coeffA,coeffB,coeffC,coeffD,coreA_exact,coreB_exact]

theorem lifted_binding : liftedMatrix false (1/2) 0 (fun _ => 0)=H := by
  norm_num [liftedMatrix,H,uncompactT,signedCircle,circlePoint,signValue] <;> rfl

theorem lifted_physical : IsHadamard (liftedMatrix false (1/2) 0 (fun _ => 0)) := by
  rw [lifted_binding]
  exact physical

#print axioms fourier_binding
#print axioms physical
#print axioms both_mobius_degenerate
#print axioms lifted_binding
#print axioms lifted_physical
end
end Mub6.Classification.KarlssonLifted.DegenerateControl
