import FourierPilotCircleTree000476
import FourierPilotCircleTree000539
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000475
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![3, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000476.state FourierPilotCircleTree000539.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000476.covered FourierPilotCircleTree000539.covered
#print axioms covered
end FourierPilotCircleTree000475
