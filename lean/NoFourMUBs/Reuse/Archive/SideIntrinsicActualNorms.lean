import NoFourMUBs.Reuse.Archive.SideIntrinsicActualBindings
import NoFourMUBs.Reuse.Archive.SideIntrinsicPolynomialNorms

/-! The actual intrinsic determinant and permanent norms for every unit side. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

theorem actual_gramG_norm_det (a : Rows ℂ) (ha : UnitRows a) :
    gramG (rowS a) (rowT a) (rowR a) = Complex.normSq (rowDet a) := by
  obtain ⟨_,_,hu,hv⟩ := row_product_units a ha
  have huv : rowU a * rowV a ≠ 0 := mul_ne_zero hu hv
  have hG := (actual_scalar_numerators a ha).1
  have hb := (row_det_perm_conjugate_bindings a ha).1
  apply Complex.ofReal_injective
  apply mul_right_cancel₀ huv
  calc
    _ = gramGN a := hG
    _ = rowDet a * detBarN a := gramG_numerator a
    _ = rowDet a * ((rowU a * rowV a) * conj (rowDet a)) := by rw [hb]
    _ = (rowDet a * conj (rowDet a)) * (rowU a * rowV a) := by ring
    _ = _ := by rw [Complex.mul_conj]

theorem actual_gramEta_norm_perm (a : Rows ℂ) (ha : UnitRows a) :
    gramEta (rowS a) (rowT a) (rowR a) = Complex.normSq (rowPerm a) := by
  obtain ⟨_,_,hu,hv⟩ := row_product_units a ha
  have huv : rowU a * rowV a ≠ 0 := mul_ne_zero hu hv
  have he := (actual_scalar_numerators a ha).2.1
  have hb := (row_det_perm_conjugate_bindings a ha).2
  apply Complex.ofReal_injective
  apply mul_right_cancel₀ huv
  calc
    _ = gramEtaN a := he
    _ = rowPerm a * permBarN a := gramEta_numerator a
    _ = rowPerm a * ((rowU a * rowV a) * conj (rowPerm a)) := by rw [hb]
    _ = (rowPerm a * conj (rowPerm a)) * (rowU a * rowV a) := by ring
    _ = _ := by rw [Complex.mul_conj]

#print axioms actual_gramG_norm_det
#print axioms actual_gramEta_norm_perm
end
end StrictReconstruction20261007.SideIntrinsic
