import FourierPilotCircleTree003218
import FourierPilotCircleTree003239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003217
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 6, 4, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003218.state FourierPilotCircleTree003239.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003218.covered FourierPilotCircleTree003239.covered
#print axioms covered
end FourierPilotCircleTree003217
