import FourierPilotCircleTree004023
import FourierPilotCircleTree004024
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004022
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![4, 11, 7, 13, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004023.state FourierPilotCircleTree004024.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004023.covered FourierPilotCircleTree004024.covered
#print axioms covered
end FourierPilotCircleTree004022
