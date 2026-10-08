import SideIntrinsicActualBindings
import SideIntrinsicPolynomialChi

/-! The exact complex chi identity for every unit side, including all singular
and zero-permanent cases; only unit row products are inverted. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

def intrinsicTerm (a : Rows ℂ) : ℂ := rowPerm a * rowDet a ^ 2 / (rowU a * rowV a)

theorem actual_chi_identity (a : Rows ℂ) (ha : UnitRows a) :
    (gramChi (rowS a) (rowT a) (rowR a) : ℂ) + intrinsicTerm a + conj (intrinsicTerm a) = 0 := by
  obtain ⟨hu1,hv1,hu,hv⟩ := row_product_units a ha
  let m := rowU a * rowV a
  have hm : m ≠ 0 := mul_ne_zero hu hv
  have hm1 : m * conj m = 1 := by
    rw [Complex.mul_conj]
    simp only [m, map_mul, hu1, hv1, mul_one, Complex.ofReal_one]
  have ht : m * intrinsicTerm a = rowPerm a * rowDet a ^ 2 := by
    unfold intrinsicTerm
    change m * (_ / m) = _
    field_simp [hm]
  have hct := congrArg (fun z : ℂ => conj z) ht
  simp only [map_mul, map_pow] at hct
  have hct' : conj (intrinsicTerm a) = m * conj (rowPerm a) * conj (rowDet a)^2 := by
    calc
      _ = (m * conj m) * conj (intrinsicTerm a) := by rw [hm1, one_mul]
      _ = m * (conj m * conj (intrinsicTerm a)) := by ring
      _ = m * (conj (rowPerm a) * conj (rowDet a)^2) := by rw [hct]
      _ = _ := by ring
  have hc := (actual_scalar_numerators a ha).2.2
  obtain ⟨hdet,hperm⟩ := row_det_perm_conjugate_bindings a ha
  have hp := gramChi_numerator a
  rw [← hc, ← hdet, ← hperm] at hp
  have hz : m^2 * ((gramChi (rowS a) (rowT a) (rowR a) : ℂ) +
      intrinsicTerm a + conj (intrinsicTerm a)) = 0 := by
    rw [hct']
    calc
      _ = (gramChi (rowS a) (rowT a) (rowR a) : ℂ) * m^2 +
          m * rowPerm a * rowDet a^2 +
          (m * conj (rowPerm a)) * (m * conj (rowDet a))^2 := by
        linear_combination m * ht
      _ = 0 := hp
  exact (mul_eq_zero.mp hz).resolve_left (pow_ne_zero _ hm)

#print axioms actual_chi_identity
end
end StrictReconstruction20261007.SideIntrinsic
