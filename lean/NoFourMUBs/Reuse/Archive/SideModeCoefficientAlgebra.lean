import Hadamard6.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.LinearCombination

/-! Small exact quotient identities used by the final inverse reconstruction.
Only the chosen nonzero Fourier coefficient A is divided by. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

theorem mode_q_quotient (A B : ℂ) (hA : A ≠ 0) :
    A*B / (Complex.normSq A : ℂ) = B / conj A := by
  have hAc : conj A ≠ 0 := by simpa using hA
  rw [← Complex.mul_conj]
  field_simp [hA,hAc]
  <;> ring

theorem mode_sigma_quotient (mu u A B : ℂ) (hA : A ≠ 0)
    (hcubic : A^3 = u*(Complex.normSq A : ℂ)+mu*A*B) :
    u+mu*(B/conj A) = A^2/conj A := by
  have hAc : conj A ≠ 0 := by simpa using hA
  have hsmall : u*conj A+mu*B=A^2 := by
    apply mul_left_cancel₀ hA
    rw [← Complex.mul_conj] at hcubic
    linear_combination -hcubic
  apply (eq_div_iff hAc).2
  calc
    _ = u*conj A+mu*B := by field_simp [hAc] <;> ring
    _ = A^2 := hsmall

theorem mode_cplus_quotient (A B C D : ℂ) (hA : A ≠ 0) :
    ((C*conj A+D*conj B) - (A*D-B*C)*conj (B/conj A)) /
      ((Complex.normSq A+Complex.normSq B : ℝ) : ℂ) = C/A := by
  have hn : 0 < Complex.normSq A+Complex.normSq B :=
    add_pos_of_pos_of_nonneg (Complex.normSq_pos.mpr hA) (Complex.normSq_nonneg _)
  have hnC : ((Complex.normSq A+Complex.normSq B : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hn)
  apply (div_eq_iff hnC).2
  simp only [map_div₀,show conj (conj A)=A from by simp,Complex.ofReal_add,← Complex.mul_conj]
  field_simp [hA]
  <;> ring

theorem mode_cminus_quotient (A B C D : ℂ) (hA : A ≠ 0) :
    ((C*conj A+D*conj B)*(B/conj A)+(A*D-B*C)) /
      ((Complex.normSq A+Complex.normSq B : ℝ) : ℂ) = D/conj A := by
  have hAc : conj A ≠ 0 := by simpa using hA
  have hn : 0 < Complex.normSq A+Complex.normSq B :=
    add_pos_of_pos_of_nonneg (Complex.normSq_pos.mpr hA) (Complex.normSq_nonneg _)
  have hnC : ((Complex.normSq A+Complex.normSq B : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hn)
  apply (div_eq_iff hnC).2
  simp only [Complex.ofReal_add,← Complex.mul_conj]
  field_simp [hAc]
  <;> ring

theorem mode_phase_cube (A : ℂ) (hA : A ≠ 0) :
    (A/conj A)^3 = (A^2/conj A)^2/(Complex.normSq A : ℂ) := by
  have hAc : conj A ≠ 0 := by simpa using hA
  rw [← Complex.mul_conj]
  field_simp [hA,hAc]
  <;> ring

theorem mode_phase_entries (A B C D : ℂ) (hA : A ≠ 0) :
    (A^2/conj A)*conj (A/conj A) = A ∧
    (B/conj A)*conj (A^2/conj A)*(A/conj A) = B ∧
    (C/A)*(A^2/conj A)*conj (A/conj A) = C ∧
    (D/conj A)*conj (A^2/conj A)*(A/conj A) = D := by
  have hAc : conj A ≠ 0 := by simpa using hA
  refine ⟨?_,?_,?_,?_⟩ <;>
    simp only [map_div₀,map_pow,show conj (conj A)=A from by simp] <;>
    field_simp [hA,hAc] <;> ring

#print axioms mode_q_quotient
#print axioms mode_sigma_quotient
#print axioms mode_cplus_quotient
#print axioms mode_cminus_quotient
#print axioms mode_phase_cube
#print axioms mode_phase_entries
end
end StrictReconstruction20261007.SideIntrinsic
