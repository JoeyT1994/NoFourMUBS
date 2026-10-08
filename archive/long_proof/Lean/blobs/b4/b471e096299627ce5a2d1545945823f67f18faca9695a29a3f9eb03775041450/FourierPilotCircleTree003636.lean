import FourierPilotCircleTree003637
import FourierPilotCircleTree003646
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003636
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![93, 49, 63, 53, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003637.state FourierPilotCircleTree003646.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003637.covered FourierPilotCircleTree003646.covered
#print axioms covered
end FourierPilotCircleTree003636
