import D0FullInterface
import D0ForestAssembly0001
import D0ForestAssembly0005
import D0ForestAssembly0008
import D0ForestAssembly0013
import D0ForestAssembly0017
import D0ForestAssembly0022
import D0ForestAssembly0026
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
theorem representative_root_0 : CoveredState d0Tables
    (toCarrier R carrier) T R targets (signsOf (⟨0, by decide⟩ : Fin 32)) rootState :=
  cover_15
#print axioms representative_root_0

theorem representative_root_12 : CoveredState d0Tables
    (toCarrier R carrier) T R targets (signsOf (⟨12, by decide⟩ : Fin 32)) rootState :=
  cover_939523
#print axioms representative_root_12

theorem representative_root_16 : CoveredState d0Tables
    (toCarrier R carrier) T R targets (signsOf (⟨16, by decide⟩ : Fin 32)) rootState :=
  cover_1301977
#print axioms representative_root_16

theorem representative_root_18 : CoveredState d0Tables
    (toCarrier R carrier) T R targets (signsOf (⟨18, by decide⟩ : Fin 32)) rootState :=
  cover_1458683
#print axioms representative_root_18

theorem representative_root_19 : CoveredState d0Tables
    (toCarrier R carrier) T R targets (signsOf (⟨19, by decide⟩ : Fin 32)) rootState :=
  cover_1570132
#print axioms representative_root_19

theorem representative_root_26 : CoveredState d0Tables
    (toCarrier R carrier) T R targets (signsOf (⟨26, by decide⟩ : Fin 32)) rootState :=
  cover_2240851
#print axioms representative_root_26

theorem representative_root_30 : CoveredState d0Tables
    (toCarrier R carrier) T R targets (signsOf (⟨30, by decide⟩ : Fin 32)) rootState :=
  cover_2546291
#print axioms representative_root_30

theorem representative_root_31 : CoveredState d0Tables
    (toCarrier R carrier) T R targets (signsOf (⟨31, by decide⟩ : Fin 32)) rootState :=
  cover_2600940
#print axioms representative_root_31
end Mub6.Numerical.CircleFullD0.Forest
