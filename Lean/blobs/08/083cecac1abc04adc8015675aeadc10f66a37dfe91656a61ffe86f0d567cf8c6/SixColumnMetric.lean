import RankOneMetric
import Mathlib.Analysis.Normed.Lp.PiLp

/- Plain Fin 6 functions have the sup norm.  This file explicitly inserts
them into Mathlib's PiLp 2 before taking any vector or operator norm.
The standard sum inner-product instance below is the construction in
Mathlib.Analysis.InnerProductSpace.PiL2, lines 83--105 at the pinned revision,
specialized to six complex coordinates.  It is rechecked here to avoid that
file's unrelated finite-dimensional and unitary-group import closure.
Upstream construction: copyright Joseph Myers, Sebastien Gouezel,
Heather Macbeth; Apache-2.0. -/
noncomputable section
open ComplexConjugate
open scoped BigOperators

namespace Seed0024ProjectorMetric20261007

abbrev ColumnSpace := PiLp 2 (fun _ : Fin 6 => ℂ)

instance columnInnerProductSpace : InnerProductSpace ℂ ColumnSpace where
  inner x y := ∑ i, inner ℂ (x i) (y i)
  norm_sq_eq_re_inner x := by
    simp only [PiLp.norm_sq_eq_of_L2, map_sum, ← norm_sq_eq_re_inner]
  conj_inner_symm := by
    intro x y
    unfold inner
    rw [map_sum]
    apply Finset.sum_congr rfl
    rintro z -
    apply inner_conj_symm
  add_left x y z :=
    show (∑ i, inner ℂ (x i+y i) (z i)) =
        (∑ i, inner ℂ (x i) (z i))+(∑ i, inner ℂ (y i) (z i)) by
      simp only [inner_add_left, Finset.sum_add_distrib]
  smul_left x y r :=
    show (∑ i, inner ℂ (r • x i) (y i))=conj r*(∑ i, inner ℂ (x i) (y i)) by
      simp only [Finset.mul_sum, inner_smul_left]

def columnL2 (u : Fin 6 → ℂ) : ColumnSpace := WithLp.toLp 2 u

def columnProjector (u : Fin 6 → ℂ) : ColumnSpace →L[ℂ] ColumnSpace :=
  projector (columnL2 u)

theorem columnL2_norm_sq (u : Fin 6 → ℂ) :
    ‖columnL2 u‖ ^ 2 = ∑ i : Fin 6, Complex.normSq (u i) := by
  rw [PiLp.norm_sq_eq_of_L2]
  simp only [columnL2, PiLp.toLp_apply, Complex.sq_norm]

theorem columnL2_inner (u v : Fin 6 → ℂ) :
    inner ℂ (columnL2 u) (columnL2 v) = ∑ i : Fin 6, conj (u i)*v i := by
  change (∑ i : Fin 6, inner ℂ (u i) (v i)) = _
  simp only [RCLike.inner_apply']

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
  rw [PiLp.norm_sq_eq_of_L2]
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
#print axioms Seed0024ProjectorMetric20261007.columnInnerProductSpace
#print axioms Seed0024ProjectorMetric20261007.columnL2_inner
#print axioms Seed0024ProjectorMetric20261007.columnL2_unit
#print axioms Seed0024ProjectorMetric20261007.columnProjector_apply
#print axioms Seed0024ProjectorMetric20261007.columnProjector_matrix_entry
#print axioms Seed0024ProjectorMetric20261007.columnProjector_sub_norm_sq
#print axioms Seed0024ProjectorMetric20261007.columnProjector_triangle
#print axioms Seed0024ProjectorMetric20261007.columnL2_sub_norm_sq
#print axioms Seed0024ProjectorMetric20261007.columnProjector_lipschitz_sq
