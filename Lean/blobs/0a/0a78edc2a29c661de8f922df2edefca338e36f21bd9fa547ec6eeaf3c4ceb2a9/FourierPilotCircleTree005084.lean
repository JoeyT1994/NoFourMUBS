import FourierPilotCircleTree005085
import FourierPilotCircleTree005086
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005084
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![38, 38, 31, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005085.state FourierPilotCircleTree005086.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005085.covered FourierPilotCircleTree005086.covered
#print axioms covered
end FourierPilotCircleTree005084
