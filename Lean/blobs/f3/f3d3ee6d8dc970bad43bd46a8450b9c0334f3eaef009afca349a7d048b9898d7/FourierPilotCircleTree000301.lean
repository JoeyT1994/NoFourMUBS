import FourierPilotCircleTree000302
import FourierPilotCircleTree000331
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000301
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![6, 4, 4, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000302.state FourierPilotCircleTree000331.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000302.covered FourierPilotCircleTree000331.covered
#print axioms covered
end FourierPilotCircleTree000301
