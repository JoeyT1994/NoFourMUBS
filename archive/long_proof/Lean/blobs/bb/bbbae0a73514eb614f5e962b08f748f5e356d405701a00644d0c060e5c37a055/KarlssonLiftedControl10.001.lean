import KarlssonLedgerCell05f4b9f94297527a
import KarlssonLiftedDegenerateControl
set_option autoImplicit false
namespace KarlssonLiftedControl10
open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonLifted Mub6.Classification.KarlssonCompiler
noncomputable section
theorem coordinate_width (i j : Fin 6) :
    (KarlssonLedgerCell05f4b9f94297527a.carrier i j).reHi-(KarlssonLedgerCell05f4b9f94297527a.carrier i j).reLo ≤ ((158171/4194304) : ℚ) ∧
    (KarlssonLedgerCell05f4b9f94297527a.carrier i j).imHi-(KarlssonLedgerCell05f4b9f94297527a.carrier i j).imLo ≤ ((158171/4194304) : ℚ) := by
  fin_cases i <;> fin_cases j <;> decide +kernel
theorem actual_matrix_enclosed : CarrierBox KarlssonLedgerCell05f4b9f94297527a.carrier
    (ClassificationCover.toNumerical DegenerateControl.H) := by
  rw [←DegenerateControl.lifted_binding]
  have hb := lifted_compiler_sound KarlssonLedgerCell05f4b9f94297527a.input KarlssonLedgerCell05f4b9f94297527a.sqrt_valid
    (s := (1/2)) (q := 0) (y := fun _ => 0)
    (by norm_num [Mem,KarlssonLedgerCell05f4b9f94297527a.input]) (by norm_num [Mem,KarlssonLedgerCell05f4b9f94297527a.input])
    (by intro i; fin_cases i <;> norm_num [Mem,KarlssonLedgerCell05f4b9f94297527a.input])
    (by norm_num) (by norm_num) DegenerateControl.lifted_physical
  exact fun i j => rectangle_includes_sound (KarlssonLedgerCell05f4b9f94297527a.output_valid i j) (hb i j)
#print axioms actual_matrix_enclosed
#print axioms coordinate_width
end
end KarlssonLiftedControl10
