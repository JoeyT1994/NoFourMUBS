import SupplierScalarArithmetic
import ScopedSupplierLeafEntries
import SupplierCellGeometry
import PhaseCellRejection

/-! The actual midpoint rejection branch. Accepted checks enforce level≤4,
so accuracy is required only at120-divisible table indices. -/
set_option autoImplicit false
open scoped BigOperators
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
namespace Seed0024ClusterTube20261007

theorem midpointRejectCheck_sound (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (theta : Turns) (htheta : MemCell s theta)
    (hcheck : midpointRejectCheck table s k=true) :
    ¬ |‖phaseSum (fourierTarget theta k)‖-Real.sqrt 6|≤(1 : ℝ)/5 := by
  have hreject : leafMidpointError s+leafTolerance+10 <
      |leafMidpointNorm table s k-164382474| :=
    of_decide_eq_true (Bool.and_eq_true.mp hcheck).2
  have hs4 : s.level≤4 := of_decide_eq_true (Bool.and_eq_true.mp hcheck).1
  have hrejectR : (leafMidpointError s : ℝ)+(leafTolerance : ℝ)+10 <
      |(leafMidpointNorm table s k : ℝ)-164382474| := by exact_mod_cast hreject
  exact phase_midpoint_rejection (fourierTarget theta k)
    (fourierTarget (cellMidpoint s) k) (fun _ => Real.pi/(denominator s : ℝ))
    (fun i => integerPairComplex (leafMidpointEntry table s k i))
    67108864 (leafMidpointNorm table s k : ℝ) 164382474 (Real.sqrt 6) (1/5)
    (leafTolerance : ℝ) (leafMidpointError s : ℝ) (by norm_num)
    (memCell_fourier_midpoint_error s theta htheta k)
    (fun i => (scoped_leaf_midpoint_entry_errors table hTable s hs4 k i).1)
    (fun i => (scoped_leaf_midpoint_entry_errors table hTable s hs4 k i).2)
    (leaf_midpoint_floor_error table s k) leaf_target_error leaf_tolerance_bound
    (leaf_midpoint_error_bound s hs) hrejectR

#print axioms midpointRejectCheck_sound
end Seed0024ClusterTube20261007
