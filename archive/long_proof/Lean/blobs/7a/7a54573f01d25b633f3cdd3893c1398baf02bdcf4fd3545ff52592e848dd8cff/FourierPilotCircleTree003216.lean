import FourierPilotCircleTree003217
import FourierPilotCircleTree003240
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003216
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 6, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003217.state FourierPilotCircleTree003240.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003217.covered FourierPilotCircleTree003240.covered
#print axioms covered
end FourierPilotCircleTree003216
