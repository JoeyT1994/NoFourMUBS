import NativeSignedPhysical
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse

/-! Exact getres dispatch of the pinned radius-1/40 interval_model.hpp.
These are necessary inequalities of actual matrices. Completeness of the
eight-angle completion model and Taylor enclosure semantics are separate. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.Ball40Residual20261008
open scoped ComplexConjugate BigOperators
open SignedDeterminant NativeSigned20261006
noncomputable section

def lowerFlat (H : Mat6) (k : Fin 9) : ℝ :=
  Complex.normSq (H ⟨3+k.val/3, by omega⟩ ⟨3+k.val%3, by omega⟩)-1
def row21 (H : Mat6) : ℂ := ∑ k : Fin 6, H 2 k*conj (H 1 k)
def col21 (H : Mat6) : ℂ := ∑ k : Fin 6, H k 2*conj (H k 1)

def cornerRowPair (k : Fin 81) : Fin 3 := ⟨k.val/27, by omega⟩
def cornerColPair (k : Fin 81) : Fin 3 := ⟨(k.val/9)%3, by omega⟩
def cornerBottom (k : Fin 81) : Fin 3 := ⟨(k.val/3)%3, by omega⟩
def cornerRight (k : Fin 81) : Fin 3 := ⟨k.val%3, by omega⟩
def cornerOrdinal (rp cp br rc : Fin 3) : Fin 81 :=
  ⟨27*rp.val+9*cp.val+3*br.val+rc.val, by omega⟩

/-- Row-pair, column-pair, bottom-row, right-column are the four native
nested loops. The exact ordinal map covers every combination. -/
theorem corner_ordinal_decode (rp cp br rc : Fin 3) :
    cornerRowPair (cornerOrdinal rp cp br rc)=rp ∧
    cornerColPair (cornerOrdinal rp cp br rc)=cp ∧
    cornerBottom (cornerOrdinal rp cp br rc)=br ∧
    cornerRight (cornerOrdinal rp cp br rc)=rc := by
  constructor
  · apply Fin.ext; simp only [cornerRowPair, cornerOrdinal]; omega
  constructor
  · apply Fin.ext; simp only [cornerColPair, cornerOrdinal]; omega
  constructor
  · apply Fin.ext; simp only [cornerBottom, cornerOrdinal]; omega
  · apply Fin.ext; simp only [cornerRight, cornerOrdinal]; omega

theorem corner_decode_ordinal (k : Fin 81) :
    cornerOrdinal (cornerRowPair k) (cornerColPair k) (cornerBottom k) (cornerRight k)=k := by
  apply Fin.ext
  simp only [cornerOrdinal, cornerRowPair, cornerColPair, cornerBottom, cornerRight]
  omega

/-- The fast signed polynomial actually called by getres, including on a
nonflat lower-right block. No inverse replaces its conjugates. -/
def fastResidual (H : Mat6) (k : Fin 81) : ℝ :=
  cornerSigned H (topFirst (cornerRowPair k)) (topSecond (cornerRowPair k))
    (bottomIndex (cornerBottom k)) (topFirst (cornerColPair k))
    (topSecond (cornerColPair k)) (bottomIndex (cornerRight k))

theorem fastResidual_eq_literal_off_locus {H : Mat6} (hu : UnitOutsideLowerBlock H)
    (k : Fin 81) : fastResidual H k =
      mixedSigned H (cornerRowPair k) (cornerColPair k) (cornerBottom k) (cornerRight k) :=
  (mixedSigned_eq_fast_off_locus hu _ _ _ _).symm

def residual94 (H : Mat6) (k : Fin 94) : ℝ :=
  if h9 : k.val<9 then lowerFlat H ⟨k.val,h9⟩
  else if k.val<13 then
    let v := if k.val<11 then row21 H else col21 H
    if k.val%2=1 then v.re else v.im
  else fastResidual H ⟨k.val-13,by omega⟩

theorem physical_lowerFlat_zero {H : Mat6} (hH : Physical H) (k : Fin 9) :
    lowerFlat H k=0 := by simp [lowerFlat,hH.1]

theorem physical_row21_zero {H : Mat6} (hH : Physical H) : row21 H=0 := by
  simpa [row21] using hH.2 2 1

/-- The source's column residual is a consequence of its row-based physical
definition: for a finite square matrix, a right inverse is a left inverse. -/
theorem physical_col21_zero {H : Mat6} (hH : Physical H) : col21 H=0 := by
  let B : Matrix (Fin 6) (Fin 6) ℂ := fun i j => (1/6:ℂ)*conj (H j i)
  have hright : (H : Matrix (Fin 6) (Fin 6) ℂ)*B=1 := by
    ext i j
    change (∑ k : Fin 6, H i k*((1/6:ℂ)*conj (H j k))) = _
    have he : (∑ k : Fin 6, H i k*((1/6:ℂ)*conj (H j k))) =
        (1/6:ℂ)*(∑ k : Fin 6, H i k*conj (H j k)) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k _
      ring
    rw [he,hH.2]
    by_cases hij : i=j <;> simp [hij,Matrix.one_apply]
  have hleft : B*(H : Matrix (Fin 6) (Fin 6) ℂ)=1 := Matrix.mul_eq_one_comm.mp hright
  have hentry : (∑ k : Fin 6, ((1/6:ℂ)*conj (H k 1))*H k 2)=0 := by
    simpa [Matrix.mul_apply,B,Matrix.one_apply] using
      congrArg (fun A : Matrix (Fin 6) (Fin 6) ℂ => A 1 2) hleft
  have he : (∑ k : Fin 6, ((1/6:ℂ)*conj (H k 1))*H k 2)=(1/6:ℂ)*col21 H := by
    unfold col21
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [he] at hentry
  exact (mul_eq_zero.mp hentry).resolve_left (by norm_num)

theorem physical_first13_zero {H : Mat6} (hH : Physical H) (k : Fin 94)
    (hk : k.val<13) : residual94 H k=0 := by
  by_cases h9 : k.val<9
  · simp only [residual94,dif_pos h9]
    exact physical_lowerFlat_zero hH _
  · have hrow := physical_row21_zero hH
    have hcol := physical_col21_zero hH
    simp [residual94,h9,hk,hrow,hcol]

/-- All 81 necessary bounds include the zero-invariant boundary. Maximality
ties are retained; nonnegativity of leadingR follows from a signed square. -/
theorem physical_fastResidual_bound_closed {H : Mat6} (hH : Physical H)
    (hm : Maximal H) (k : Fin 81) : |fastResidual H k| ≤ Real.sqrt (leadingR H) := by
  have hs : (fastResidual H k)^2 ≤ leadingR H :=
    physical_maximal_signed_square_bound hH hm _ _ _ _ _ _
      (topFirst_lt_topSecond _) (topSecond_lt_bottom _ _)
      (topFirst_lt_topSecond _) (topSecond_lt_bottom _ _)
  have hR : 0 ≤ leadingR H := le_trans (sq_nonneg _) hs
  have hsq := Real.sq_sqrt hR
  have habs := sq_abs (fastResidual H k)
  nlinarith [abs_nonneg (fastResidual H k),Real.sqrt_nonneg (leadingR H)]

theorem physical_residual94_necessary {H : Mat6} (hH : Physical H)
    (hm : Maximal H) (k : Fin 94) :
    if k.val<13 then residual94 H k=0
    else |residual94 H k| ≤ Real.sqrt (leadingR H) := by
  by_cases h13 : k.val<13
  · simp only [if_pos h13]
    exact physical_first13_zero hH k h13
  · have h9 : ¬ k.val<9 := by omega
    simp only [if_neg h13,residual94,dif_neg h9]
    exact physical_fastResidual_bound_closed hH hm _

end
end Centiradian20261006.Ball40Residual20261008

#print axioms Centiradian20261006.Ball40Residual20261008.corner_ordinal_decode
#print axioms Centiradian20261006.Ball40Residual20261008.corner_decode_ordinal
#print axioms Centiradian20261006.Ball40Residual20261008.fastResidual_eq_literal_off_locus
#print axioms Centiradian20261006.Ball40Residual20261008.physical_lowerFlat_zero
#print axioms Centiradian20261006.Ball40Residual20261008.physical_row21_zero
#print axioms Centiradian20261006.Ball40Residual20261008.physical_col21_zero
#print axioms Centiradian20261006.Ball40Residual20261008.physical_first13_zero
#print axioms Centiradian20261006.Ball40Residual20261008.physical_fastResidual_bound_closed
#print axioms Centiradian20261006.Ball40Residual20261008.physical_residual94_necessary
