import FourierPilotCircleTree004019
import FourierPilotCircleTree004022
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004018
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![4, 11, 7, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004019.state FourierPilotCircleTree004022.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004019.covered FourierPilotCircleTree004022.covered
#print axioms covered
end FourierPilotCircleTree004018
