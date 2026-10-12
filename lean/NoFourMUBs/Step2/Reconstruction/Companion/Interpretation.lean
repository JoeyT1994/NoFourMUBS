import NoFourMUBs.Step2.Reconstruction.Companion.Model
import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.Eliminants
import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.VerticalProduct
import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.Discriminant
import NoFourMUBs.Step2.Reconstruction.EntryCompanion

set_option autoImplicit false
set_option maxHeartbeats 1500000
open scoped ComplexConjugate
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.Companion
open BaseCoefficients CriticalMomentQuad20261003
open StrictReconstruction20261007.SideIntrinsic Hadamard6 Matrix

/-- Interpret the literal cubic reduction with the existing evaluators. -/
theorem eval_reducePoly {A B : ℂ} (u z : ℂ) (hu : u^2 = A+B*u)
    (m : CubicEvaluation.Cubic A B)
    (hz : z^3 = CubicEvaluation.cubicEval u z m) (c0 c1 c2 c3 : ℂ) :
    CubicEvaluation.cubicEval u z (reducePoly m c0 c1 c2 c3) =
      c0+c1*z+c2*z^2+c3*z^3 := by
  dsimp only [reducePoly,CubicEvaluation.cubicEval]
  simp only [eval_add,eval_mul u hu,eval_scalar]
  dsimp only [CubicEvaluation.cubicEval] at hz
  linear_combination -c3*hz

theorem eval_reducedA (a b c d u z : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0)
    (hu : u^2 = -cachedV a b c d + cachedU a b c d*u)
    (hz : z^3 = CubicEvaluation.cubicEval u z (modulus a b c d)) :
    CubicEvaluation.cubicEval u z (reducedA a b c d) =
      cachedEliminantA a c b d z := by
  dsimp only [reducedA]
  rw [eval_reducePoly u z hu (modulus a b c d) hz,
    cached_eliminantA_eq a c b d z ha hc hb hd,eliminantA_factorization]
  ring

theorem eval_reducedB (a b c d u z : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0)
    (hu : u^2 = -cachedV a b c d + cachedU a b c d*u)
    (hz : z^3 = CubicEvaluation.cubicEval u z (modulus a b c d)) :
    CubicEvaluation.cubicEval u z (reducedB a b c d) =
      cachedEliminantB a c b d z := by
  dsimp only [reducedB]
  rw [eval_reducePoly u z hu (modulus a b c d) hz,
    cached_eliminantB_eq a c b d z ha hc hb hd,eliminantB_coefficients]

theorem candidate_vertical_product (p : StrictSeed) {B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1))
    (hC : C ∈ invertibleVerticalCandidates (seedCorner p.1)) (w : ℂ)
    (hsB : 2*sideSignature B = (seedChi p.1 : ℂ)+w)
    (hsC : 2*sideSignature C = (seedChi p.1 : ℂ)-w)
    (hd : cachedDelta (p.1 0) (p.1 1) (p.1 2) (p.1 3) ≠ 0) :
    eval (rowU (rowsOfSide B))
      (verticalProduct (p.1 0) (p.1 1) (p.1 2) (p.1 3)) =
      rowU (rowsOfSide Cᵀ) := by
  rw [matched_product_affine p hB hC w hsB hsC hd]
  dsimp only [verticalProduct,eval,kappa]
  ring

/-- The formal product and entry roots are the actual signed-side values. -/
theorem candidate_root_relations (p : StrictSeed) {B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1))
    (hC : C ∈ invertibleVerticalCandidates (seedCorner p.1)) (w : ℂ)
    (hsB : 2*sideSignature B = (seedChi p.1 : ℂ)+w)
    (hsC : 2*sideSignature C = (seedChi p.1 : ℂ)-w)
    (hd : cachedDelta (p.1 0) (p.1 1) (p.1 2) (p.1 3) ≠ 0) (j : Fin 3) :
    rowU (rowsOfSide B)^2 = -cachedV (p.1 0) (p.1 1) (p.1 2) (p.1 3) +
      cachedU (p.1 0) (p.1 1) (p.1 2) (p.1 3)*rowU (rowsOfSide B) ∧
    (C j 1)^3 = CubicEvaluation.cubicEval (rowU (rowsOfSide B)) (C j 1)
      (modulus (p.1 0) (p.1 1) (p.1 2) (p.1 3)) := by
  have hu := candidate_product_quadratic p hB
  have hu' : rowU (rowsOfSide B)^2 =
      -cachedV (p.1 0) (p.1 1) (p.1 2) (p.1 3) +
      cachedU (p.1 0) (p.1 1) (p.1 2) (p.1 3)*rowU (rowsOfSide B) := by
    linear_combination hu
  refine ⟨hu',?_⟩
  have hm := candidate_vertical_product p hB hC w hsB hsC hd
  have hs := (candidate_intrinsic_correlations (transposedSeed p.1)
    (vertical_candidate_transposed p.1 hC)).1
  change NoFourMUBs.Side.sS (fun i => C i 1) = seedS (transposedSeed p.1) at hs
  have he := side_entry_cubic (x := fun i => C i 1) (fun i => hC.1.1 i 1) j
  rw [hs] at he
  change (C j 1)^3 - seedS (transposedSeed p.1)*(C j 1)^2 +
    rowU (rowsOfSide Cᵀ)*conj (seedS (transposedSeed p.1))*C j 1 -
    rowU (rowsOfSide Cᵀ) = 0 at he
  dsimp only [modulus,CubicEvaluation.cubicEval]
  rw [eval_neg,eval_mul _ hu',eval_scalar,hm,eval_scalar]
  simp only [seedS,transposedSeed,Matrix.cons_val_zero,Matrix.cons_val_one,
    map_neg,map_add,map_one,NoFourMUBs.Step1Geo.conj_circle] at he
  linear_combination he

/-- The companion is the actual paired entry once the residual and the
entry's nonzero eliminant denominator have been supplied. Both remain explicit. -/
theorem candidate_entry_companion (p : StrictSeed) {B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1))
    (hC : C ∈ invertibleVerticalCandidates (seedCorner p.1)) (w : ℂ)
    (hsB : 2*sideSignature B = (seedChi p.1 : ℂ)+w)
    (hsC : 2*sideSignature C = (seedChi p.1 : ℂ)-w)
    (hd : cachedDelta (p.1 0) (p.1 1) (p.1 2) (p.1 3) ≠ 0) (j : Fin 3)
    (hres : CubicEvaluation.cubicEval (rowU (rowsOfSide B)) (C j 1)
      (residual (p.1 0) (p.1 1) (p.1 2) (p.1 3)) = 0)
    (hden : eliminantB (seedS (transposedSeed p.1)) (conj (seedS (transposedSeed p.1)))
      (seedT (transposedSeed p.1)) (conj (seedT (transposedSeed p.1)))
      (seedRho (transposedSeed p.1)) (conj (seedRho (transposedSeed p.1))) (C j 1) ≠ 0) :
    C j 2 = CubicEvaluation.cubicEval (rowU (rowsOfSide B)) (C j 1)
      (companion (p.1 0) (p.1 1) (p.1 2) (p.1 3)) := by
  obtain ⟨hu,hz⟩ := candidate_root_relations p hB hC w hsB hsC hd j
  have hh := hres
  dsimp only [residual] at hh
  rw [CubicEvaluation.cubicEval_add,CubicEvaluation.cubicEval_mul _ _ hu _ _ _ hz,
    eval_reducedA _ _ _ _ _ _ (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
      (Circle.coe_ne_zero _) (Circle.coe_ne_zero _) hu hz,
    eval_reducedB _ _ _ _ _ _ (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
      (Circle.coe_ne_zero _) (Circle.coe_ne_zero _) hu hz] at hh
  change cachedEliminantA ((transposedSeed p.1) 0) ((transposedSeed p.1) 1)
      ((transposedSeed p.1) 2) ((transposedSeed p.1) 3) (C j 1) +
    cachedEliminantB ((transposedSeed p.1) 0) ((transposedSeed p.1) 1)
      ((transposedSeed p.1) 2) ((transposedSeed p.1) 3) (C j 1)*
      CubicEvaluation.cubicEval (rowU (rowsOfSide B)) (C j 1)
        (companion (p.1 0) (p.1 1) (p.1 2) (p.1 3)) = 0 at hh
  rw [cached_eliminantA_seed,cached_eliminantB_seed] at hh
  obtain ⟨hs,ht,hr⟩ := candidate_intrinsic_correlations (transposedSeed p.1)
    (vertical_candidate_transposed p.1 hC)
  change NoFourMUBs.Side.sS (fun i => C i 1) = _ at hs
  change NoFourMUBs.Side.sS (fun i => C i 2) = _ at ht
  change NoFourMUBs.Side.rS (fun i => C i 1) (fun i => C i 2) = _ at hr
  have he := side_entry_eliminant (x := fun i => C i 1) (y := fun i => C i 2)
    (fun i => hC.1.1 i 1) (fun i => hC.1.1 i 2) j
  rw [hs,ht,hr] at he
  apply mul_left_cancel₀ hden
  linear_combination he-hh

end NoFourMUBs.Step2.Reconstruction.Companion
