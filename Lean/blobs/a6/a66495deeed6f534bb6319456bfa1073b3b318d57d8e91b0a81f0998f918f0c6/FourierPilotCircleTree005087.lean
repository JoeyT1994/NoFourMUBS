import FourierPilotCircleTree005088
import FourierPilotCircleTree005097
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005087
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![38, 38, 63, 104, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005088.state FourierPilotCircleTree005097.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005088.covered FourierPilotCircleTree005097.covered
#print axioms covered
end FourierPilotCircleTree005087
