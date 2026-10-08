import FourierPilotCircleTree000318
import FourierPilotCircleTree000321
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000317
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![48, 19, 16, 16, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000318.state FourierPilotCircleTree000321.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000318.covered FourierPilotCircleTree000321.covered
#print axioms covered
end FourierPilotCircleTree000317
