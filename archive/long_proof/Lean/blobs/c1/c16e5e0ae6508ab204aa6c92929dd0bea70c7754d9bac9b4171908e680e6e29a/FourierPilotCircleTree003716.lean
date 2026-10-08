import FourierPilotCircleTree003717
import FourierPilotCircleTree003728
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003716
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003717.state FourierPilotCircleTree003728.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003717.covered FourierPilotCircleTree003728.covered
#print axioms covered
end FourierPilotCircleTree003716
