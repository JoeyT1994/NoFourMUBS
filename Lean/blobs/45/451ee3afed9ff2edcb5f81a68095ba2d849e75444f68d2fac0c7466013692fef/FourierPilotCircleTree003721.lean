import FourierPilotCircleTree003722
import FourierPilotCircleTree003725
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003721
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![6, 3, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003722.state FourierPilotCircleTree003725.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003722.covered FourierPilotCircleTree003725.covered
#print axioms covered
end FourierPilotCircleTree003721
