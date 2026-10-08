import KarlssonLedgerCell29adf8ec04475234
import KarlssonLiftedDegenerateControl
set_option autoImplicit false
namespace KarlssonLiftedControl8
open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonLifted Mub6.Classification.KarlssonCompiler
noncomputable section
theorem coordinate_width (i j : Fin 6) :
    (KarlssonLedgerCell29adf8ec04475234.carrier i j).reHi-(KarlssonLedgerCell29adf8ec04475234.carrier i j).reLo ≤ ((2525929/16777216) : ℚ) ∧
    (KarlssonLedgerCell29adf8ec04475234.carrier i j).imHi-(KarlssonLedgerCell29adf8ec04475234.carrier i j).imLo ≤ ((2525929/16777216) : ℚ) := by
  fin_cases i <;> fin_cases j <;> decide +kernel
theorem actual_matrix_enclosed : CarrierBox KarlssonLedgerCell29adf8ec04475234.carrier
    (ClassificationCover.toNumerical DegenerateControl.H) := by
  rw [←DegenerateControl.lifted_binding]
  have hb := lifted_compiler_sound KarlssonLedgerCell29adf8ec04475234.input KarlssonLedgerCell29adf8ec04475234.sqrt_valid
    (s := (1/2)) (q := 0) (y := fun _ => 0)
    (by norm_num [Mem,KarlssonLedgerCell29adf8ec04475234.input]) (by norm_num [Mem,KarlssonLedgerCell29adf8ec04475234.input])
    (by intro i; fin_cases i <;> norm_num [Mem,KarlssonLedgerCell29adf8ec04475234.input])
    (by norm_num) (by norm_num) DegenerateControl.lifted_physical
  exact fun i j => rectangle_includes_sound (KarlssonLedgerCell29adf8ec04475234.output_valid i j) (hb i j)
#print axioms actual_matrix_enclosed
#print axioms coordinate_width
end
end KarlssonLiftedControl8
