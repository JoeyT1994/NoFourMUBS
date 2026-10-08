import FourierPilotCircleTree003174
import FourierPilotCircleTree003175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003173
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![17, 55, 40, 43, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003174.state FourierPilotCircleTree003175.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003174.covered FourierPilotCircleTree003175.covered
#print axioms covered
end FourierPilotCircleTree003173
