import FourierPilotCircleTree003594
import FourierPilotCircleTree003595
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003593
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![5, 5, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003594.state FourierPilotCircleTree003595.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003594.covered FourierPilotCircleTree003595.covered
#print axioms covered
end FourierPilotCircleTree003593
