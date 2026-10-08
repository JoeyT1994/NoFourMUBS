import FourierPilotCircleTree003263
import FourierPilotCircleTree003264
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003262
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![14, 11, 7, 10, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003263.state FourierPilotCircleTree003264.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003263.covered FourierPilotCircleTree003264.covered
#print axioms covered
end FourierPilotCircleTree003262
