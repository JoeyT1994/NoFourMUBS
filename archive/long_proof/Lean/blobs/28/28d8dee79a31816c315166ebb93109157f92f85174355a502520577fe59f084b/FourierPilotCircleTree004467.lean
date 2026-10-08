import FourierPilotCircleTree004468
import FourierPilotCircleTree004469
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004467
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![2, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004468.state FourierPilotCircleTree004469.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004468.covered FourierPilotCircleTree004469.covered
#print axioms covered
end FourierPilotCircleTree004467
