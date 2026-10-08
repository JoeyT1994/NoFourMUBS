import FourierPilotCircleTree000481
import FourierPilotCircleTree000482
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000480
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![6, 6, 7, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000481.state FourierPilotCircleTree000482.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000481.covered FourierPilotCircleTree000482.covered
#print axioms covered
end FourierPilotCircleTree000480
