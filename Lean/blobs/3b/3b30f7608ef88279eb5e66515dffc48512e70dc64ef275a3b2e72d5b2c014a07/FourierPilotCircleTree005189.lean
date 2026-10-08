import FourierPilotCircleTree005190
import FourierPilotCircleTree005235
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005189
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005190.state FourierPilotCircleTree005235.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005190.covered FourierPilotCircleTree005235.covered
#print axioms covered
end FourierPilotCircleTree005189
