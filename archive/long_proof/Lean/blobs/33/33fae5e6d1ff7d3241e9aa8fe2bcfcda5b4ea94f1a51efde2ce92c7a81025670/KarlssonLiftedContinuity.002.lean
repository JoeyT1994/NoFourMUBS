import KarlssonLiftedPhases
import Mathlib.Topology.UniformSpace.HeineCantor
import Mathlib.Topology.Instances.Real.Lemmas
import Mathlib.Tactic.FunProp
set_option autoImplicit false

namespace Mub6.Classification.KarlssonLifted
open Complex Hadamard6 Mub6 Mub6.Numerical
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonCompiler
open Mub6.Numerical.CircleCharts
noncomputable section
set_option maxHeartbeats 3000000

def compactLambda (s : ℝ) (p : ℂ) : Mat2 :=
  !![(coreU s : ℂ),p*(coreV s : ℂ);
     (coreV s : ℂ)*star p,-(coreU s : ℂ)]
def compactA (s : ℝ) (p : ℂ) : Mat2 :=
  karlssonF2 * (((-1/2 : ℂ) • (1 : Mat2)) +
    (Complex.I * (Real.sqrt 3 : ℂ)/2) • compactLambda s p)
def compactB (s : ℝ) (p : ℂ) : Mat2 := -karlssonF2 - compactA s p

def compactLiteral (negative : Bool) (x : Fin 6 → ℝ) : BasisMatrix :=
  rawLiteral (compactA (x 0) (signedCircle negative (x 1)))
    (compactB (x 0) (signedCircle negative (x 1)))
    (fun i => signedCircle false (![x 2,x 3,x 4,x 5] i))

theorem compactLambda_binding {s : ℝ} {p : ℂ} (h0 : 0<s) (h1 : s<1)
    (hp : normSq p=1) :
    compactLambda s p=karlssonLambda (uncompactT s) p := by
  have huv := compactUV_uncompact h0 h1
  have hinv : p⁻¹=star p := by
    apply inv_eq_of_mul_eq_one_right
    simpa [mul_comm] using star_mul_self_of_normSq_one hp
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [compactLambda,karlssonLambda,←huv.1,←huv.2,div_eq_mul_inv,hinv]

theorem compactA_binding {s : ℝ} {p : ℂ} (h0 : 0<s) (h1 : s<1)
    (hp : normSq p=1) : compactA s p=karlssonCoreA (uncompactT s) p := by
  rw [compactA,compactLambda_binding h0 h1 hp]
  simp [karlssonCoreA]

theorem compactB_binding {s : ℝ} {p : ℂ} (h0 : 0<s) (h1 : s<1)
    (hp : normSq p=1) : compactB s p=karlssonCoreB (uncompactT s) p := by
  rw [compactB,compactA_binding h0 h1 hp]
  rfl

theorem compactLiteral_binding (b : Bool) (x : Fin 6 → ℝ) (h0 : 0<x 0) (h1 : x 0<1) :
    compactLiteral b x=ClassificationCover.toNumerical
      (liftedMatrix b (x 0) (x 1) ![x 2,x 3,x 4,x 5]) := by
  rw [compactLiteral,compactA_binding h0 h1 (signedCircle_normSq _ _),
    compactB_binding h0 h1 (signedCircle_normSq _ _)]
  exact (raw_to_literal _ _ (fun i => signedCircle false (![x 2,x 3,x 4,x 5] i))).symm

theorem coreDen_ne_zero (s : ℝ) : coreDen s≠0 :=
  ne_of_gt (lt_of_lt_of_le (by norm_num) (coreDen_lower s))

@[fun_prop] theorem continuous_coreDen : Continuous coreDen := by unfold coreDen; fun_prop
@[fun_prop] theorem continuous_coreU : Continuous coreU := by
  unfold coreU
  exact Continuous.div (by fun_prop) continuous_coreDen coreDen_ne_zero
@[fun_prop] theorem continuous_coreV : Continuous coreV := by
  unfold coreV
  exact Continuous.div (by fun_prop) continuous_coreDen coreDen_ne_zero

@[fun_prop] theorem continuous_signedCircle (b : Bool) : Continuous (signedCircle b) := by
  have hd (t : ℝ) : 1+t^2≠0 := by positivity
  have he : signedCircle b = fun t : ℝ => (signValue b : ℂ) *
      (((1-t^2)/(1+t^2) : ℝ) + (2*t/(1+t^2) : ℝ)*Complex.I) := by
    funext t
    apply Complex.ext <;> simp [signedCircle,circlePoint]
  rw [he]
  fun_prop (disch := exact hd _)

/-- The reconstructed matrix is continuous even on the common degeneracy
and at the compact core endpoints. It has no square-root branch cut. -/
theorem continuous_compactLiteral (b : Bool) : Continuous (compactLiteral b) := by
  apply continuous_pi
  intro i
  apply continuous_pi
  intro j
  fin_cases i <;> fin_cases j <;>
    simp only [compactLiteral,rawLiteral,karlssonBlockProduct,karlssonZLeft,karlssonZRight,
      compactA,compactB,compactLambda,karlssonF2,Matrix.mul_apply,Fin.sum_univ_two,
      Matrix.smul_apply,Matrix.add_apply,Matrix.sub_apply,Matrix.neg_apply,
      Matrix.one_apply,Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,
      Matrix.cons_val_three,Matrix.cons_val_four] <;> dsimp <;> fun_prop

def compactDomain : Set (Fin 6 → ℝ) :=
  Set.Icc (![0,-1,-1,-1,-1,-1] : Fin 6 → ℝ) ![1,1,1,1,1,1]

/-- Qualitative conditioning of the entire matrix, not merely one phase.
This is not an assertion that a fixed-precision interval algorithm has zero
limiting width: its rounding precision must also be refined. -/
theorem uniformContinuousOn_compactLiteral (b : Bool) :
    UniformContinuousOn (compactLiteral b) compactDomain :=
  isCompact_Icc.uniformContinuousOn_of_continuous (continuous_compactLiteral b).continuousOn

#print axioms compactLambda_binding
#print axioms compactLiteral_binding
#print axioms continuous_compactLiteral
#print axioms uniformContinuousOn_compactLiteral
end
end Mub6.Classification.KarlssonLifted

