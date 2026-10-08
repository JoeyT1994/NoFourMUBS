import FourierPilotCircleTree003186
import FourierPilotCircleTree003189
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003185
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![35, 111, 41, 87, 84]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003186.state FourierPilotCircleTree003189.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003186.covered FourierPilotCircleTree003189.covered
#print axioms covered
end FourierPilotCircleTree003185
