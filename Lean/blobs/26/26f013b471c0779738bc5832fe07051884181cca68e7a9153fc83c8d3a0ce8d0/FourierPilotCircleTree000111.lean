import FourierPilotCircleTree000112
import FourierPilotCircleTree000145
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000111
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![6, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000112.state FourierPilotCircleTree000145.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000112.covered FourierPilotCircleTree000145.covered
#print axioms covered
end FourierPilotCircleTree000111
