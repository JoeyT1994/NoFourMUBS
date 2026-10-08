import FourierPilotCircleTree000403
import FourierPilotCircleTree000404
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000402
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![4, 4, 4, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000403.state FourierPilotCircleTree000404.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000403.covered FourierPilotCircleTree000404.covered
#print axioms covered
end FourierPilotCircleTree000402
