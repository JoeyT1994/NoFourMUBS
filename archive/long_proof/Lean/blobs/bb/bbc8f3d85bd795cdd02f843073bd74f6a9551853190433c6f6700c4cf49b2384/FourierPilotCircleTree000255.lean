import FourierPilotCircleTree000256
import FourierPilotCircleTree000259
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000255
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![5, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000256.state FourierPilotCircleTree000259.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000256.covered FourierPilotCircleTree000259.covered
#print axioms covered
end FourierPilotCircleTree000255
