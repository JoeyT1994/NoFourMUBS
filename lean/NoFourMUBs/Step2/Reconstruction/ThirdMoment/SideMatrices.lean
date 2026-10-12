import NoFourMUBs.Reuse.Archive.SideIntrinsicMatrixBindings

set_option autoImplicit false
open Matrix Hadamard6
open StrictReconstruction20261007.SideIntrinsic
open scoped BigOperators ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment

def thirdMoment (A : Mat3) (p : Fin 3) : Mat3 :=
  fun i k => ∑ j, A i j * conj (A k j * A p j)

private theorem conjugate_square_sum (a : Rows ℂ) (ha : UnitRows a) :
    conj a.x0 ^ 2 + conj a.x1 ^ 2 + conj a.x2 ^ 2 =
      conj (rowS a) ^ 2 - 2 * rowS a * conj (rowU a) := by
  have h := congrArg (fun z : ℂ => conj z) (row_sum_conjugate_bindings a ha).1
  simp only [map_mul, starRingEnd_self_apply] at h
  simp only [rowS, sumXbarN, map_add, map_mul] at h ⊢
  linear_combination 2 * h

private theorem conjugate_mixed_sum (a : Rows ℂ) (ha : UnitRows a) :
    a.y0 * conj a.x0 ^ 2 + a.y1 * conj a.x1 ^ 2 + a.y2 * conj a.x2 ^ 2 =
      conj (rowS a) * rowR a - conj (rowU a) * rowPerm a := by
  obtain ⟨h0,h1,h2,_,_,_⟩ := row_pair_bindings a ha
  have e0 := congrArg (fun z : ℂ => conj z) h0
  have e1 := congrArg (fun z : ℂ => conj z) h1
  have e2 := congrArg (fun z : ℂ => conj z) h2
  simp only [map_mul, starRingEnd_self_apply] at e0 e1 e2
  simp only [rowS, rowR, rowPerm, map_add]
  linear_combination (a.y1 + a.y2) * e0 + (a.y0 + a.y2) * e1 + (a.y0 + a.y1) * e2

/-- The first universal third-moment matrix from the repository's direct proof. -/
theorem thirdMoment_phase_one (a : Rows ℂ) (ha : UnitRows a) :
    thirdMoment (phaseSide a) 1 =
      !![conj (rowS a), conj (rowS a)^2 - 2*rowS a*conj (rowU a),
          conj (rowS a)*conj (rowT a) - conj (rowPerm a);
        3, conj (rowS a), conj (rowT a);
        rowR a, conj (rowS a)*rowR a - conj (rowU a)*rowPerm a, conj (rowS a)] := by
  have hs := conjugate_square_sum a ha
  have hm := conjugate_mixed_sum a ha
  obtain ⟨hx0,hx1,hx2,hy0,hy1,hy2⟩ := ha
  ext i k
  fin_cases i <;> fin_cases k <;>
    simp only [thirdMoment, phaseSide, Fin.sum_univ_three, Matrix.of_apply,
      Matrix.cons_val_zero', Matrix.cons_val_succ', Matrix.cons_val_zero,
      Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons,
      map_one, one_mul, mul_one, map_mul]
  · simp [rowS]
  · simpa [pow_two] using hs
  · simp only [rowS, rowT, rowPerm, map_add, map_mul]; ring
  · norm_num [Complex.mul_conj, hx0, hx1, hx2]
  · simp [← mul_assoc, Complex.mul_conj, hx0, hx1, hx2, rowS]
  · simp only [mul_comm (conj a.y0) (conj a.x0),
      mul_comm (conj a.y1) (conj a.x1), mul_comm (conj a.y2) (conj a.x2)]
    simp [← mul_assoc, Complex.mul_conj, hx0, hx1, hx2, rowT]
  · rfl
  · simpa [pow_two, mul_assoc] using hm
  · simp [← mul_assoc, Complex.mul_conj, hy0, hy1, hy2, rowS]

/-- Swapping the two nonconstant rows supplies the second matrix. -/
theorem thirdMoment_phase_two (a : Rows ℂ) (ha : UnitRows a) :
    thirdMoment (phaseSide a) 2 =
      !![conj (rowT a), conj (rowS a)*conj (rowT a) - conj (rowPerm a),
          conj (rowT a)^2 - 2*rowT a*conj (rowV a);
        conj (rowR a), conj (rowT a),
          conj (rowT a)*conj (rowR a) - conj (rowV a)*rowPerm a;
        3, conj (rowS a), conj (rowT a)] := by
  let b : Rows ℂ := ⟨a.y0,a.y1,a.y2,a.x0,a.x1,a.x2⟩
  have hb : UnitRows b := ⟨ha.2.2.2.1,ha.2.2.2.2.1,ha.2.2.2.2.2,ha.1,ha.2.1,ha.2.2.1⟩
  have hs := conjugate_square_sum b hb
  have hm := conjugate_mixed_sum b hb
  have hr : rowR b = conj (rowR a) := by
    simp only [b, rowR, map_add, map_mul, starRingEnd_self_apply]; ring
  have hp : rowPerm b = rowPerm a := by simp only [b, rowPerm]; ring
  rw [hr, hp] at hm
  obtain ⟨hx0,hx1,hx2,hy0,hy1,hy2⟩ := ha
  ext i k
  fin_cases i <;> fin_cases k <;>
    simp only [thirdMoment, phaseSide, Fin.sum_univ_three, Matrix.of_apply,
      Matrix.cons_val_zero', Matrix.cons_val_succ', Matrix.cons_val_zero,
      Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons,
      map_one, one_mul, mul_one, map_mul]
  · simp [rowT]
  · simp only [rowS, rowT, rowPerm, map_add, map_mul]; ring
  · simpa [b, rowS, rowU, rowT, rowV, pow_two] using hs
  · simp only [rowR, map_add, map_mul, starRingEnd_self_apply]; ring
  · simp [← mul_assoc, Complex.mul_conj, hx0, hx1, hx2, rowT]
  · simpa [b, rowS, rowT, rowU, rowV, pow_two, mul_assoc] using hm
  · norm_num [Complex.mul_conj, hy0, hy1, hy2]
  · simp only [mul_comm (conj a.x0) (conj a.y0),
      mul_comm (conj a.x1) (conj a.y1), mul_comm (conj a.x2) (conj a.y2)]
    simp [← mul_assoc, Complex.mul_conj, hy0, hy1, hy2, rowS]
  · simp [← mul_assoc, Complex.mul_conj, hy0, hy1, hy2, rowT]

end NoFourMUBs.Step2.Reconstruction.ThirdMoment
