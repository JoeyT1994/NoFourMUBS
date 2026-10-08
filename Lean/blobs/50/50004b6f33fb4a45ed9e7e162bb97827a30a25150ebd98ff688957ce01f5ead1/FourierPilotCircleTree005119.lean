import FourierPilotCircleTree005120
import FourierPilotCircleTree005169
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005119
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![7, 7, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005120.state FourierPilotCircleTree005169.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005120.covered FourierPilotCircleTree005169.covered
#print axioms covered
end FourierPilotCircleTree005119
