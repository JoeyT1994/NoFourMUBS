import FourierPilotCircleTree005573
import FourierPilotCircleTree005574
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005572
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![4, 4, 4, 13, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005573.state FourierPilotCircleTree005574.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005573.covered FourierPilotCircleTree005574.covered
#print axioms covered
end FourierPilotCircleTree005572
