import FourierPilotCircleTree003334
import FourierPilotCircleTree003337
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003333
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![30, 40, 55, 52, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003334.state FourierPilotCircleTree003337.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003334.covered FourierPilotCircleTree003337.covered
#print axioms covered
end FourierPilotCircleTree003333
