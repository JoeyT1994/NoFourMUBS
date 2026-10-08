import FourierPilotCircleTree000563
import FourierPilotCircleTree000564
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000562
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, false]
def state : State := ![2, 3, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000563.state FourierPilotCircleTree000564.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000563.covered FourierPilotCircleTree000564.covered
#print axioms covered
end FourierPilotCircleTree000562
