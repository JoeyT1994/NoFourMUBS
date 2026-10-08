import KarlssonLedgerCellff856ed4f3b750c1
import KarlssonLiftedDegenerateControl
set_option autoImplicit false
namespace KarlssonLiftedControl6
open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonLifted Mub6.Classification.KarlssonCompiler
noncomputable section
theorem coordinate_width (i j : Fin 6) :
    (KarlssonLedgerCellff856ed4f3b750c1.carrier i j).reHi-(KarlssonLedgerCellff856ed4f3b750c1.carrier i j).reLo ≤ ((7664381/16777216) : ℚ) ∧
    (KarlssonLedgerCellff856ed4f3b750c1.carrier i j).imHi-(KarlssonLedgerCellff856ed4f3b750c1.carrier i j).imLo ≤ ((7664381/16777216) : ℚ) := by
  fin_cases i <;> fin_cases j <;> decide +kernel
theorem actual_matrix_enclosed : CarrierBox KarlssonLedgerCellff856ed4f3b750c1.carrier
    (ClassificationCover.toNumerical DegenerateControl.H) := by
  rw [←DegenerateControl.lifted_binding]
  have hb := lifted_compiler_sound KarlssonLedgerCellff856ed4f3b750c1.input KarlssonLedgerCellff856ed4f3b750c1.sqrt_valid
    (s := (1/2)) (q := 0) (y := fun _ => 0)
    (by norm_num [Mem,KarlssonLedgerCellff856ed4f3b750c1.input]) (by norm_num [Mem,KarlssonLedgerCellff856ed4f3b750c1.input])
    (by intro i; fin_cases i <;> norm_num [Mem,KarlssonLedgerCellff856ed4f3b750c1.input])
    (by norm_num) (by norm_num) DegenerateControl.lifted_physical
  exact fun i j => rectangle_includes_sound (KarlssonLedgerCellff856ed4f3b750c1.output_valid i j) (hb i j)
#print axioms actual_matrix_enclosed
#print axioms coordinate_width
end
end KarlssonLiftedControl6
