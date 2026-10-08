import FourierPilotCircleTree000594
import FourierPilotCircleTree000595
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000593
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![2, 2, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000594.state FourierPilotCircleTree000595.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000594.covered FourierPilotCircleTree000595.covered
#print axioms covered
end FourierPilotCircleTree000593
