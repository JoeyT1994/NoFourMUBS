import FourierPilotCircleTree003825
import FourierPilotCircleTree003826
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003824
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![10, 13, 15, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003825.state FourierPilotCircleTree003826.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003825.covered FourierPilotCircleTree003826.covered
#print axioms covered
end FourierPilotCircleTree003824
