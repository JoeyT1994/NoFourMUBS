import RankOneMetric
import Mathlib.Analysis.InnerProductSpace.PiL2

/- Plain Fin 6 functions have the sup norm.  This file explicitly inserts
them into EuclideanSpace before taking any vector or operator norm. -/
noncomputable section
open ComplexConjugate
open scoped BigOperators

namespace Seed0024ProjectorMetric20261007

abbrev ColumnSpace := EuclideanSpace ℂ (Fin 6)

def columnL2 (u : Fin 6 → ℂ) : ColumnSpace := WithLp.toLp 2 u

def columnProjector (u : Fin 6 → ℂ) : ColumnSpace →L[ℂ] ColumnSpace :=
  projector (columnL2 u)

theorem columnL2_norm_sq (u : Fin 6 → ℂ) :
    ‖columnL2 u‖ ^ 2 = ∑ i : Fin 6, Complex.normSq (u i) := by
  rw [EuclideanSpace.norm_sq_eq]
  simp only [columnL2, PiLp.toLp_apply, Complex.sq_norm]

theorem columnL2_inner (u v : Fin 6 → ℂ) :
    inner ℂ (columnL2 u) (columnL2 v) = ∑ i : Fin 6, conj (u i)*v i := by
  rw [PiLp.inner_apply]
  simp only [columnL2, PiLp.toLp_apply, RCLike.inner_apply']

theorem columnL2_unit (u : Fin 6 → ℂ)
    (hu : (∑ i : Fin 6, Complex.normSq (u i)) = 1) : ‖columnL2 u‖ = 1 := by
  have h := columnL2_norm_sq u
  rw [hu] at h
  nlinarith [norm_nonneg (columnL2 u)]

theorem columnProjector_apply (u z : Fin 6 → ℂ) (i : Fin 6) :
    (columnProjector u (columnL2 z)) i = u i*(∑ j : Fin 6, conj (u j)*z j) := by
  change (inner ℂ (columnL2 u) (columnL2 z))*u i = _
  rw [columnL2_inner, mul_comm]

theorem columnProjector_matrix_entry (u : Fin 6 → ℂ) (i j : Fin 6) :
    (columnProjector u (columnL2 (Pi.single j 1))) i = u i*conj (u j) := by
  rw [columnProjector_apply]
  simp

theorem columnProjector_sub_norm_sq (u v : Fin 6 → ℂ)
    (hu : (∑ i : Fin 6, Complex.normSq (u i)) = 1)
    (hv : (∑ i : Fin 6, Complex.normSq (v i)) = 1) :
    ‖columnProjector u-columnProjector v‖ ^ 2 =
      1-Complex.normSq (∑ i : Fin 6, conj (u i)*v i) := by
  rw [columnProjector, columnProjector,
    projector_sub_norm_sq _ _ (columnL2_unit u hu) (columnL2_unit v hv),
    columnL2_inner, Complex.sq_norm]

theorem columnProjector_triangle (u v w : Fin 6 → ℂ) :
    ‖columnProjector u-columnProjector w‖ ≤
      ‖columnProjector u-columnProjector v‖+‖columnProjector v-columnProjector w‖ :=
  projector_triangle _ _ _

theorem columnL2_sub_norm_sq (u v : Fin 6 → ℂ) :
    ‖columnL2 u-columnL2 v‖ ^ 2 = ∑ i : Fin 6, Complex.normSq (u i-v i) := by
  rw [EuclideanSpace.norm_sq_eq]
  simp only [PiLp.sub_apply, columnL2, PiLp.toLp_apply, Complex.sq_norm]

theorem columnProjector_lipschitz_sq (u v : Fin 6 → ℂ)
    (hu : (∑ i : Fin 6, Complex.normSq (u i)) = 1)
    (hv : (∑ i : Fin 6, Complex.normSq (v i)) = 1) :
    ‖columnProjector u-columnProjector v‖ ^ 2 ≤
      ∑ i : Fin 6, Complex.normSq (u i-v i) := by
  rw [← columnL2_sub_norm_sq]
  apply (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).2
  exact projector_lipschitz _ _ (columnL2_unit u hu) (columnL2_unit v hv)

end Seed0024ProjectorMetric20261007

#print axioms Seed0024ProjectorMetric20261007.columnL2_norm_sq
#print axioms Seed0024ProjectorMetric20261007.columnL2_inner
#print axioms Seed0024ProjectorMetric20261007.columnL2_unit
#print axioms Seed0024ProjectorMetric20261007.columnProjector_apply
#print axioms Seed0024ProjectorMetric20261007.columnProjector_matrix_entry
#print axioms Seed0024ProjectorMetric20261007.columnProjector_sub_norm_sq
#print axioms Seed0024ProjectorMetric20261007.columnProjector_triangle
#print axioms Seed0024ProjectorMetric20261007.columnL2_sub_norm_sq
#print axioms Seed0024ProjectorMetric20261007.columnProjector_lipschitz_sq
