import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FinCases

/-! Quantitative choice of a 3 by 3 minor of a 3 by 6 row frame. -/
namespace Mub6.Classification.GoodMinor
open scoped BigOperators
open Matrix
noncomputable section

/-- The twenty increasing triples of columns, in lexicographic order. -/
def columns : Fin 20 → Fin 3 → Fin 6 :=
  ![![0,1,2], ![0,1,3], ![0,1,4], ![0,1,5],
    ![0,2,3], ![0,2,4], ![0,2,5], ![0,3,4], ![0,3,5], ![0,4,5],
    ![1,2,3], ![1,2,4], ![1,2,5], ![1,3,4], ![1,3,5], ![1,4,5],
    ![2,3,4], ![2,3,5], ![2,4,5], ![3,4,5]]

theorem columns_injective (k : Fin 20) : Function.Injective (columns k) := by
  fin_cases k <;> decide

/-- The selected 3 by 3 column minor. -/
def minor {R : Type*} (A : Matrix (Fin 3) (Fin 6) R) (k : Fin 20) :
    Matrix (Fin 3) (Fin 3) R :=
  A.submatrix id (columns k)

set_option maxHeartbeats 0 in
/-- A concrete Cauchy--Binet identity, valid over every commutative ring. -/
theorem cauchyBinet_three_six {R : Type*} [CommRing R]
    (A : Matrix (Fin 3) (Fin 6) R) (B : Matrix (Fin 6) (Fin 3) R) :
    (A * B).det = ∑ k : Fin 20,
      (minor A k).det * (B.submatrix (columns k) id).det := by
  simp [Matrix.det_fin_three, Matrix.mul_apply, Fin.sum_univ_succ,
    minor, Matrix.submatrix, columns]
  ring

end
end Mub6.Classification.GoodMinor

#print axioms Mub6.Classification.GoodMinor.columns_injective
#print axioms Mub6.Classification.GoodMinor.cauchyBinet_three_six
