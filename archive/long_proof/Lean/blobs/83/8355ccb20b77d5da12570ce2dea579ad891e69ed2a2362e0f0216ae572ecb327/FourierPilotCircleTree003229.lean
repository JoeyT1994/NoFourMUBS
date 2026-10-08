import FourierPilotCircleTree003230
import FourierPilotCircleTree003235
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003229
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![9, 24, 8, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003230.state FourierPilotCircleTree003235.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003230.covered FourierPilotCircleTree003235.covered
#print axioms covered
end FourierPilotCircleTree003229
