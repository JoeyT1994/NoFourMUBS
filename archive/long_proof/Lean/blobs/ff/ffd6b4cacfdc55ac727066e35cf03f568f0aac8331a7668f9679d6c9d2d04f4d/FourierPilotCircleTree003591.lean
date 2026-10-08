import FourierPilotCircleTree003592
import FourierPilotCircleTree003593
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003591
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![5, 2, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003592.state FourierPilotCircleTree003593.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003592.covered FourierPilotCircleTree003593.covered
#print axioms covered
end FourierPilotCircleTree003591
