import PhysicalPSDPencils

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.PhysicalPSD20261006
open scoped ComplexConjugate BigOperators
noncomputable section

def nativePencil (d : ℝ) (s t r : ℂ) : ThreeMatrix :=
  ![![(d:ℂ),conj s,conj t],![s,(d:ℂ),conj r],![t,r,(d:ℂ)]]

theorem nativePencil_diagonal_nonneg (d : ℝ) (s t r : ℂ)
    (h : PSD (nativePencil d s t r)) : 0 ≤ d := by
  have hv := h.2 ![1,0,0]
  simpa [nativePencil,Fin.sum_univ_succ] using hv

theorem quadratic_test_s (d : ℝ) (s t r : ℂ) :
    quadratic (nativePencil d s t r) ![(d:ℂ),-s,0] = d*(d^2-Complex.normSq s) := by
  simp [quadratic,nativePencil,Fin.sum_univ_succ,Complex.normSq_apply,
    Complex.mul_re,Complex.mul_im,Complex.add_re,Complex.add_im]
  ring

theorem quadratic_zero_test_s (s t r : ℂ) :
    quadratic (nativePencil 0 s t r) ![1,-s,0] = -2*Complex.normSq s := by
  simp [quadratic,nativePencil,Fin.sum_univ_succ,Complex.normSq_apply,
    Complex.mul_re,Complex.mul_im,Complex.add_re,Complex.add_im]
  ring

theorem nativePencil_minor_s (d : ℝ) (s t r : ℂ)
    (h : PSD (nativePencil d s t r)) : 0 ≤ d^2-Complex.normSq s := by
  have hd := nativePencil_diagonal_nonneg d s t r h
  by_cases hzero : d=0
  · subst d
    have hv := h.2 ![1,-s,0]
    change 0 ≤ quadratic (nativePencil 0 s t r) ![1,-s,0] at hv
    rw [quadratic_zero_test_s] at hv
    nlinarith
  · have hp : 0<d := lt_of_le_of_ne hd (Ne.symm hzero)
    have hv := h.2 ![(d:ℂ),-s,0]
    change 0 ≤ quadratic (nativePencil d s t r) ![(d:ℂ),-s,0] at hv
    rw [quadratic_test_s] at hv
    exact nonneg_of_mul_nonneg_left hv hp

theorem quadratic_test_t (d : ℝ) (s t r : ℂ) :
    quadratic (nativePencil d s t r) ![(d:ℂ),0,-t] = d*(d^2-Complex.normSq t) := by
  simp [quadratic,nativePencil,Fin.sum_univ_succ,Complex.normSq_apply,
    Complex.mul_re,Complex.mul_im,Complex.add_re,Complex.add_im]
  ring

theorem quadratic_zero_test_t (s t r : ℂ) :
    quadratic (nativePencil 0 s t r) ![1,0,-t] = -2*Complex.normSq t := by
  simp [quadratic,nativePencil,Fin.sum_univ_succ,Complex.normSq_apply,
    Complex.mul_re,Complex.mul_im,Complex.add_re,Complex.add_im]
  ring

theorem nativePencil_minor_t (d : ℝ) (s t r : ℂ)
    (h : PSD (nativePencil d s t r)) : 0 ≤ d^2-Complex.normSq t := by
  have hd := nativePencil_diagonal_nonneg d s t r h
  by_cases hzero : d=0
  · subst d
    have hv := h.2 ![1,0,-t]
    change 0 ≤ quadratic (nativePencil 0 s t r) ![1,0,-t] at hv
    rw [quadratic_zero_test_t] at hv
    nlinarith
  · have hp : 0<d := lt_of_le_of_ne hd (Ne.symm hzero)
    have hv := h.2 ![(d:ℂ),0,-t]
    change 0 ≤ quadratic (nativePencil d s t r) ![(d:ℂ),0,-t] at hv
    rw [quadratic_test_t] at hv
    exact nonneg_of_mul_nonneg_left hv hp

theorem quadratic_test_r (d : ℝ) (s t r : ℂ) :
    quadratic (nativePencil d s t r) ![0,(d:ℂ),-r] = d*(d^2-Complex.normSq r) := by
  simp [quadratic,nativePencil,Fin.sum_univ_succ,Complex.normSq_apply,
    Complex.mul_re,Complex.mul_im,Complex.add_re,Complex.add_im]
  ring

theorem quadratic_zero_test_r (s t r : ℂ) :
    quadratic (nativePencil 0 s t r) ![0,1,-r] = -2*Complex.normSq r := by
  simp [quadratic,nativePencil,Fin.sum_univ_succ,Complex.normSq_apply,
    Complex.mul_re,Complex.mul_im,Complex.add_re,Complex.add_im]
  ring

theorem nativePencil_minor_r (d : ℝ) (s t r : ℂ)
    (h : PSD (nativePencil d s t r)) : 0 ≤ d^2-Complex.normSq r := by
  have hd := nativePencil_diagonal_nonneg d s t r h
  by_cases hzero : d=0
  · subst d
    have hv := h.2 ![0,1,-r]
    change 0 ≤ quadratic (nativePencil 0 s t r) ![0,1,-r] at hv
    rw [quadratic_zero_test_r] at hv
    nlinarith
  · have hp : 0<d := lt_of_le_of_ne hd (Ne.symm hzero)
    have hv := h.2 ![0,(d:ℂ),-r]
    change 0 ≤ quadratic (nativePencil d s t r) ![0,(d:ℂ),-r] at hv
    rw [quadratic_test_r] at hv
    exact nonneg_of_mul_nonneg_left hv hp

def columnMatrix (V : Fin 3 → Fin 3 → ℂ) : ThreeMatrix := fun i l => V l i

theorem weighted_rankOne_matrix (w : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ) :
    (∑ l, w l • rankOne (V l)) = columnMatrix V *
      Matrix.diagonal (fun l => (w l:ℂ)) * (columnMatrix V).conjTranspose := by
  ext i j
  simp [columnMatrix,rankOne,Matrix.vecMulVec,Matrix.mul_apply,Matrix.diagonal,
    Matrix.conjTranspose_apply,Matrix.sum_apply,Complex.real_smul,Fin.sum_univ_succ]
  ring

theorem weighted_rankOne_det (w : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ) :
    Matrix.det (∑ l, w l • rankOne (V l)) =
      (((∏ l, w l)*Complex.normSq (Matrix.det (columnMatrix V)) : ℝ) : ℂ) := by
  rw [weighted_rankOne_matrix,Matrix.det_mul,Matrix.det_mul,
    Matrix.det_diagonal,Matrix.det_conjTranspose]
  calc
    _ = (∏ l, (w l:ℂ)) * (Matrix.det (columnMatrix V) * conj (Matrix.det (columnMatrix V))) := by ring
    _ = _ := by simp [Complex.mul_conj]

theorem weighted_rankOne_det_nonneg (w : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ)
    (hw : ∀ l,0≤w l) : 0 ≤ (Matrix.det (∑ l, w l • rankOne (V l))).re := by
  rw [weighted_rankOne_det]
  change 0 ≤ (∏ l,w l)*Complex.normSq (Matrix.det (columnMatrix V))
  exact mul_nonneg (Finset.prod_nonneg (fun l _ => hw l)) (Complex.normSq_nonneg _)

theorem nativePencil_det (d : ℝ) (s t r : ℂ) :
    (Matrix.det (nativePencil d s t r)).re =
      d^3 + 2*(s*r*conj t).re-d*(Complex.normSq s+Complex.normSq t+Complex.normSq r) := by
  simp [nativePencil,Matrix.det_fin_three,Complex.normSq_apply,
    Complex.mul_re,Complex.mul_im,Complex.add_re,Complex.add_im]
  ring

/-- Every one of the native five principal-minor predicates is necessary
for an exactly represented nonnegative weighted Gram matrix. -/
theorem native_principal_tests_nonneg (d : ℝ) (s t r : ℂ)
    (w : Fin 3 → ℝ) (V : Fin 3 → Fin 3 → ℂ) (hw : ∀ l,0≤w l)
    (heq : nativePencil d s t r = ∑ l,w l • rankOne (V l)) :
    0≤d ∧ 0≤d^2-Complex.normSq s ∧ 0≤d^2-Complex.normSq t ∧
    0≤d^2-Complex.normSq r ∧
    0≤d^3+2*(s*r*conj t).re-d*(Complex.normSq s+Complex.normSq t+Complex.normSq r) := by
  have hp : PSD (nativePencil d s t r) := heq.symm ▸ weighted_rankOne_psd w V hw
  refine ⟨nativePencil_diagonal_nonneg d s t r hp,nativePencil_minor_s d s t r hp,
    nativePencil_minor_t d s t r hp,nativePencil_minor_r d s t r hp,?_⟩
  rw [← nativePencil_det,heq]
  exact weighted_rankOne_det_nonneg w V hw

end
end Centiradian20261006.PhysicalPSD20261006
#print axioms Centiradian20261006.PhysicalPSD20261006.nativePencil_diagonal_nonneg
#print axioms Centiradian20261006.PhysicalPSD20261006.quadratic_test_s
#print axioms Centiradian20261006.PhysicalPSD20261006.quadratic_zero_test_s
#print axioms Centiradian20261006.PhysicalPSD20261006.nativePencil_minor_s
#print axioms Centiradian20261006.PhysicalPSD20261006.quadratic_test_t
#print axioms Centiradian20261006.PhysicalPSD20261006.quadratic_zero_test_t
#print axioms Centiradian20261006.PhysicalPSD20261006.nativePencil_minor_t
#print axioms Centiradian20261006.PhysicalPSD20261006.quadratic_test_r
#print axioms Centiradian20261006.PhysicalPSD20261006.quadratic_zero_test_r
#print axioms Centiradian20261006.PhysicalPSD20261006.nativePencil_minor_r
#print axioms Centiradian20261006.PhysicalPSD20261006.weighted_rankOne_matrix
#print axioms Centiradian20261006.PhysicalPSD20261006.weighted_rankOne_det
#print axioms Centiradian20261006.PhysicalPSD20261006.weighted_rankOne_det_nonneg
#print axioms Centiradian20261006.PhysicalPSD20261006.nativePencil_det
#print axioms Centiradian20261006.PhysicalPSD20261006.native_principal_tests_nonneg
