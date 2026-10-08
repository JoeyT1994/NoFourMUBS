import FourierPilotCircleTree003497
import FourierPilotCircleTree003498
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003496
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![14, 20, 27, 22, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003497.state FourierPilotCircleTree003498.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003497.covered FourierPilotCircleTree003498.covered
#print axioms covered
end FourierPilotCircleTree003496
