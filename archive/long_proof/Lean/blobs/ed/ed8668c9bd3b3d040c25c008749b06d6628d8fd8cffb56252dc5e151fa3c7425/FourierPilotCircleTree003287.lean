import FourierPilotCircleTree003288
import FourierPilotCircleTree003289
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003287
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 4, 6, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003288.state FourierPilotCircleTree003289.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003288.covered FourierPilotCircleTree003289.covered
#print axioms covered
end FourierPilotCircleTree003287
