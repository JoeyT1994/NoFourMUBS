import NoFourMUBs.Reuse.Archive.SideIntrinsicPolynomialDefs
import Hadamard6.Basic
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.NormNum

/-! Bind the six indeterminates to arbitrary unit complex row entries.
No first-column normalization, nonzero determinant, or orientation is assumed. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

def UnitRows (a : Rows ℂ) : Prop :=
  Complex.normSq a.x0 = 1 ∧ Complex.normSq a.x1 = 1 ∧ Complex.normSq a.x2 = 1 ∧
  Complex.normSq a.y0 = 1 ∧ Complex.normSq a.y1 = 1 ∧ Complex.normSq a.y2 = 1

def rowR (a : Rows ℂ) : ℂ := a.y0 * conj a.x0 + a.y1 * conj a.x1 + a.y2 * conj a.x2

def phaseSide (a : Rows ℂ) : Hadamard6.Mat3 :=
  !![1, 1, 1; a.x0, a.x1, a.x2; a.y0, a.y1, a.y2]

theorem triple_conj_first (x y z : ℂ) (hx : Complex.normSq x = 1) :
    (x*y*z) * conj x = y*z := by
  have h : x * conj x = 1 := by rw [Complex.mul_conj, hx]; rfl
  linear_combination (y*z)*h

theorem triple_conj_second (x y z : ℂ) (hy : Complex.normSq y = 1) :
    (x*y*z) * conj y = x*z := by
  have h : y * conj y = 1 := by rw [Complex.mul_conj, hy]; rfl
  linear_combination (x*z)*h

theorem triple_conj_third (x y z : ℂ) (hz : Complex.normSq z = 1) :
    (x*y*z) * conj z = x*y := by
  have h : z * conj z = 1 := by rw [Complex.mul_conj, hz]; rfl
  linear_combination (x*y)*h

theorem row_pair_bindings (a : Rows ℂ) (ha : UnitRows a) :
    rowU a * conj a.x0 = a.x1*a.x2 ∧
    rowU a * conj a.x1 = a.x0*a.x2 ∧
    rowU a * conj a.x2 = a.x0*a.x1 ∧
    rowV a * conj a.y0 = a.y1*a.y2 ∧
    rowV a * conj a.y1 = a.y0*a.y2 ∧
    rowV a * conj a.y2 = a.y0*a.y1 := by
  obtain ⟨hx0,hx1,hx2,hy0,hy1,hy2⟩ := ha
  exact ⟨triple_conj_first _ _ _ hx0, triple_conj_second _ _ _ hx1,
    triple_conj_third _ _ _ hx2, triple_conj_first _ _ _ hy0,
    triple_conj_second _ _ _ hy1, triple_conj_third _ _ _ hy2⟩

#print axioms row_pair_bindings

theorem row_product_units (a : Rows ℂ) (ha : UnitRows a) :
    Complex.normSq (rowU a) = 1 ∧ Complex.normSq (rowV a) = 1 ∧
      rowU a ≠ 0 ∧ rowV a ≠ 0 := by
  obtain ⟨hx0,hx1,hx2,hy0,hy1,hy2⟩ := ha
  have hu : Complex.normSq (rowU a) = 1 := by simp [rowU, map_mul, hx0,hx1,hx2]
  have hv : Complex.normSq (rowV a) = 1 := by simp [rowV, map_mul, hy0,hy1,hy2]
  refine ⟨hu,hv,?_,?_⟩
  · apply Complex.normSq_pos.mp; rw [hu]; norm_num
  · apply Complex.normSq_pos.mp; rw [hv]; norm_num

#print axioms row_product_units

theorem row_sum_conjugate_bindings (a : Rows ℂ) (ha : UnitRows a) :
    rowU a * conj (rowS a) = sumXbarN a ∧
    rowV a * conj (rowT a) = sumYbarN a ∧
    rowU a * rowR a = rowRN a ∧
    rowV a * conj (rowR a) = rowQbarN a := by
  obtain ⟨hx0,hx1,hx2,hy0,hy1,hy2⟩ := row_pair_bindings a ha
  refine ⟨?_,?_,?_,?_⟩
  · simp only [rowS, map_add, mul_add, hx0,hx1,hx2, sumXbarN]
  · simp only [rowT, map_add, mul_add, hy0,hy1,hy2, sumYbarN]
  · calc
      _ = a.y0*(rowU a*conj a.x0) + a.y1*(rowU a*conj a.x1) +
        a.y2*(rowU a*conj a.x2) := by unfold rowR; ring
      _ = rowRN a := by rw [hx0,hx1,hx2]; unfold rowRN; ring
  · simp only [rowR, map_add, map_mul, show conj (conj a.x0) = a.x0 from by simp,
      show conj (conj a.x1) = a.x1 from by simp, show conj (conj a.x2) = a.x2 from by simp]
    calc
      _ = a.x0*(rowV a*conj a.y0) + a.x1*(rowV a*conj a.y1) +
        a.x2*(rowV a*conj a.y2) := by ring
      _ = rowQbarN a := by rw [hy0,hy1,hy2]; unfold rowQbarN; ring

#print axioms row_sum_conjugate_bindings

theorem row_det_perm_conjugate_bindings (a : Rows ℂ) (ha : UnitRows a) :
    (rowU a * rowV a) * conj (rowDet a) = detBarN a ∧
    (rowU a * rowV a) * conj (rowPerm a) = permBarN a := by
  obtain ⟨hx0,hx1,hx2,hy0,hy1,hy2⟩ := row_pair_bindings a ha
  constructor
  · simp only [detBarN, rowDet, pairRows]
    rw [← hx0, ← hx1, ← hx2, ← hy0, ← hy1, ← hy2]
    simp only [map_add, map_sub, map_mul]
    ring
  · simp only [permBarN, rowPerm, pairRows]
    rw [← hx0, ← hx1, ← hx2, ← hy0, ← hy1, ← hy2]
    simp only [map_add, map_mul]
    ring

#print axioms row_det_perm_conjugate_bindings

theorem row_fraction_bindings (a : Rows ℂ) (ha : UnitRows a) :
    conj (rowS a) = sumXbarN a / rowU a ∧
    conj (rowT a) = sumYbarN a / rowV a ∧
    rowR a = rowRN a / rowU a ∧
    conj (rowR a) = rowQbarN a / rowV a := by
  obtain ⟨_,_,hu,hv⟩ := row_product_units a ha
  obtain ⟨hS,hT,hr,hQ⟩ := row_sum_conjugate_bindings a ha
  refine ⟨?_,?_,?_,?_⟩
  · apply (eq_div_iff hu).2; simpa only [mul_comm] using hS
  · apply (eq_div_iff hv).2; simpa only [mul_comm] using hT
  · apply (eq_div_iff hu).2; simpa only [mul_comm] using hr
  · apply (eq_div_iff hv).2; simpa only [mul_comm] using hQ

#print axioms row_fraction_bindings
end
end StrictReconstruction20261007.SideIntrinsic
