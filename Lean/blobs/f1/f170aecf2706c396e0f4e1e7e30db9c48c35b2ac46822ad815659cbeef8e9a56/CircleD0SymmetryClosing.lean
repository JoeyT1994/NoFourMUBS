import CircleD0SymmetryDataFast
import D0ForestRepresentatives

/-! Final application. Its imported representative theorems are generated
from the eight complete chart-root trees; this module is not valid until
those 81 modules have been kernel checked. -/
set_option autoImplicit false
namespace Mub6.Numerical.CircleFullD0.D0SymmetryClosing
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleFullD0
open Mub6.Numerical.CircleFullD0.D0Symmetry
open Mub6.Numerical.CircleArc.D0Soundness

theorem routed_representative_roots : ∀ i : Fin 32,
    CoveredState d0Tables (toCarrier R carrier) T R targets
      (signsOf (chosenRepresentative i)) rootState := by
  intro i
  fin_cases i
  · exact Forest.representative_root_0
  · exact Forest.representative_root_16
  · exact Forest.representative_root_16
  · exact Forest.representative_root_12
  · exact Forest.representative_root_16
  · exact Forest.representative_root_18
  · exact Forest.representative_root_12
  · exact Forest.representative_root_19
  · exact Forest.representative_root_16
  · exact Forest.representative_root_18
  · exact Forest.representative_root_18
  · exact Forest.representative_root_26
  · exact Forest.representative_root_12
  · exact Forest.representative_root_26
  · exact Forest.representative_root_19
  · exact Forest.representative_root_30
  · exact Forest.representative_root_16
  · exact Forest.representative_root_12
  · exact Forest.representative_root_18
  · exact Forest.representative_root_19
  · exact Forest.representative_root_18
  · exact Forest.representative_root_26
  · exact Forest.representative_root_26
  · exact Forest.representative_root_30
  · exact Forest.representative_root_12
  · exact Forest.representative_root_19
  · exact Forest.representative_root_26
  · exact Forest.representative_root_30
  · exact Forest.representative_root_19
  · exact Forest.representative_root_30
  · exact Forest.representative_root_30
  · exact Forest.representative_root_31

theorem all_32_roots : ∀ i : Fin 32,
    CoveredState d0Tables (toCarrier R carrier) T R targets (signsOf i) rootState :=
  all_roots_from_routed routed_representative_roots

theorem complete_circle_cover : chartCoverObligation :=
  complete_from_32 all_32_roots

#print axioms routed_representative_roots
#print axioms all_32_roots
#print axioms complete_circle_cover
end Mub6.Numerical.CircleFullD0.D0SymmetryClosing
