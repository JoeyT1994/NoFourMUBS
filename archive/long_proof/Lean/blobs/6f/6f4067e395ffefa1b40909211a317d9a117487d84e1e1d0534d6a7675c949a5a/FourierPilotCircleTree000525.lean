import FourierPilotCircleTree000526
import FourierPilotCircleTree000531
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000525
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![114, 57, 63, 87, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000526.state FourierPilotCircleTree000531.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000526.covered FourierPilotCircleTree000531.covered
#print axioms covered
end FourierPilotCircleTree000525
