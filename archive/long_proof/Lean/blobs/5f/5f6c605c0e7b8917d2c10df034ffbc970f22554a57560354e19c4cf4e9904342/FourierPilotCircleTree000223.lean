import FourierPilotCircleTree000224
import FourierPilotCircleTree000245
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000223
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![4, 13, 10, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000224.state FourierPilotCircleTree000245.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000224.covered FourierPilotCircleTree000245.covered
#print axioms covered
end FourierPilotCircleTree000223
