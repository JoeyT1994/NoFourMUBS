import FourierPilotCircleTree000483
import FourierPilotCircleTree000484
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000482
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![6, 6, 7, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000483.state FourierPilotCircleTree000484.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000483.covered FourierPilotCircleTree000484.covered
#print axioms covered
end FourierPilotCircleTree000482
