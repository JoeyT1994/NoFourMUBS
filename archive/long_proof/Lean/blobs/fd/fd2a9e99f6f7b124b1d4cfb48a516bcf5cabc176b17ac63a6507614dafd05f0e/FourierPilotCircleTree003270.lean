import FourierPilotCircleTree003271
import FourierPilotCircleTree003272
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003270
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![28, 23, 15, 21, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003271.state FourierPilotCircleTree003272.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003271.covered FourierPilotCircleTree003272.covered
#print axioms covered
end FourierPilotCircleTree003270
