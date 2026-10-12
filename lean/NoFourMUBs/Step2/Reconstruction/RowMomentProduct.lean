import NoFourMUBs.Reuse.Archive.SideIntrinsicUnitBindings

set_option autoImplicit false
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

/-- The product of a linear combination of the three side rows, expressed
using their existing moments. No determinant or denominator guard is needed. -/
theorem row_linear_product (a : Rows ℂ) (ha : UnitRows a) (A B C : ℂ) :
    (A + B*a.x0 + C*a.y0) * (A + B*a.x1 + C*a.y1) *
        (A + B*a.x2 + C*a.y2) =
      A^3 + rowS a*A^2*B + rowT a*A^2*C +
      (rowU a*conj (rowS a))*A*B^2 + rowPerm a*A*B*C +
      (rowV a*conj (rowT a))*A*C^2 + rowU a*B^3 +
      (rowU a*rowR a)*B^2*C + (rowV a*conj (rowR a))*B*C^2 +
      rowV a*C^3 := by
  obtain ⟨hS,hT,hR,hQ⟩ := row_sum_conjugate_bindings a ha
  rw [hS,hT,hR,hQ]
  simp only [rowS,rowT,rowU,rowV,rowPerm,sumXbarN,sumYbarN,rowRN,rowQbarN]
  ring

end
end StrictReconstruction20261007.SideIntrinsic
