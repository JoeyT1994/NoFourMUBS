import FourierPilotCircleTree000068
import FourierPilotCircleTree000069
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000067
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![5, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000068.state FourierPilotCircleTree000069.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000068.covered FourierPilotCircleTree000069.covered
#print axioms covered
end FourierPilotCircleTree000067
