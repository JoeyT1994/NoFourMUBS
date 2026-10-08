import FourierPilotCircleTree000401
import FourierPilotCircleTree000402
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000400
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![4, 4, 4, 13, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000401.state FourierPilotCircleTree000402.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000401.covered FourierPilotCircleTree000402.covered
#print axioms covered
end FourierPilotCircleTree000400
