import KarlssonLedgerConsumers
import Worker12.BoundaryTargets
set_option autoImplicit false

namespace Mub6.Classification.KarlssonFourierImport
open Complex Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonCompiler
open Mub6.Classification.KarlssonLedger Mub6.Numerical.CircleCharts
noncomputable section
set_option maxHeartbeats 3000000

def undoInterleave : Equiv.Perm (Fin 6) where
  toFun := ![0,2,4,1,3,5]
  invFun := ![0,3,1,4,2,5]
  left_inv := by intro i; fin_cases i <;> rfl
  right_inv := by intro i; fin_cases i <;> rfl

/-- Exact normalization, permutation, and transpose binding to the inherited
Fourier obligation. This identity assumes no nonextension result. -/
theorem source_binding (w p q : ℂ) :
    monomialEdge undoInterleave undoInterleave (fun _ => 1) (fun _ => 1)
      (normalized (affineFourierMatrix w p q)) =
    transposeEdge (Worker12.physicalNormalize (Worker12.fourierPhase w p q)) := by
  funext i j
  fin_cases i <;> fin_cases j <;>
    simp [monomialEdge,undoInterleave,normalized,phaseScale,transposeEdge,
      ClassificationCover.toNumerical,ClassificationCover.indexEquiv,finSumFinEquiv,Fin.addCases,
      Worker12.physicalNormalize,Worker12.fourierPhase,Worker12.fourier3,
      Worker12.phaseVector,Worker12.unsplitMatrix,Worker12.splitIndex,
      affineFourierMatrix,Matrix.fromBlocks,Pi.neg_apply] <;> ring

/-- Conditional consumer only: the Fourier exclusion is still an argument. -/
theorem affine_excluded (hF : Worker12.FourierQuartetExclusion)
    (w p q : ℂ) (hw : IsPrimitiveCubicPhase w) (hp : normSq p=1) (hq : normSq q=1) :
    ¬ OccursAsQuartetEdge (normalized (affineFourierMatrix w p q)) := by
  intro h
  have hm := occursAsQuartetEdge_monomial h undoInterleave undoInterleave
    (fun _ => 1) (fun _ => 1) (by intro i; norm_num) (by intro i; norm_num)
  rw [source_binding] at hm
  exact hF w p q hw hp hq ((occursAsQuartetEdge_transpose_iff _).mp hm)

theorem standard_sq_primitive : IsPrimitiveCubicPhase (standardOmega^2) := by
  have hw := standardOmega_isPrimitiveCubicPhase
  refine ⟨by simp [map_pow,hw.1],?_⟩
  linear_combination (standardOmega^2-standardOmega+1)*hw.2

/-- One correctly proved inherited Fourier exclusion discharges all sixteen
seam labels, including both roots, phase signs, and transpose. -/
theorem all_sixteen_seams_excluded (hF : Worker12.FourierQuartetExclusion)
    (label : SeamLabel) (x : Fin 2 → ℝ) :
    ¬ OccursAsQuartetEdge (normalized (seamMatrix label x)) := by
  rcases label with ⟨tr,os,ps,zs⟩
  have hw : IsPrimitiveCubicPhase (if os then standardOmega^2 else standardOmega) := by
    cases os
    · exact standardOmega_isPrimitiveCubicPhase
    · exact standard_sq_primitive
  have he := affine_excluded hF _ (signedCircle ps (x 0)) (signedCircle zs (x 1))
    hw (signedCircle_normSq _ _) (signedCircle_normSq _ _)
  cases tr
  · exact he
  · exact quartet_exclusion_transpose he

theorem seam_job_excluded (hF : Worker12.FourierQuartetExclusion) (d : SeamDescriptor) :
    ¬ Live (ofSeam d) := by
  rintro ⟨x,_,_,h⟩
  exact all_sixteen_seams_excluded hF d.1 x h

#print axioms source_binding
#print axioms affine_excluded
#print axioms all_sixteen_seams_excluded
#print axioms seam_job_excluded
end
end Mub6.Classification.KarlssonFourierImport
