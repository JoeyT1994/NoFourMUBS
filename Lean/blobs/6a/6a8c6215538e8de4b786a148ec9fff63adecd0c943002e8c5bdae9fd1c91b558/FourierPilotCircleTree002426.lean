import FourierPilotCircleTree002427
import FourierPilotCircleTree002474
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002426
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 5, 6, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002427.state FourierPilotCircleTree002474.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002427.covered FourierPilotCircleTree002474.covered
#print axioms covered
end FourierPilotCircleTree002426
