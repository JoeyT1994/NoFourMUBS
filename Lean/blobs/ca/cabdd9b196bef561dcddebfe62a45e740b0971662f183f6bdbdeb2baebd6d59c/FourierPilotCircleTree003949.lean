import FourierPilotCircleTree003950
import FourierPilotCircleTree003985
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003949
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![7, 4, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003950.state FourierPilotCircleTree003985.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003950.covered FourierPilotCircleTree003985.covered
#print axioms covered
end FourierPilotCircleTree003949
