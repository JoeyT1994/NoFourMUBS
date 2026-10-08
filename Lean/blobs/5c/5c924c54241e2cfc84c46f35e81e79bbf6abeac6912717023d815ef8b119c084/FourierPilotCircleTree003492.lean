import FourierPilotCircleTree003493
import FourierPilotCircleTree003518
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003492
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![14, 10, 13, 11, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003493.state FourierPilotCircleTree003518.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003493.covered FourierPilotCircleTree003518.covered
#print axioms covered
end FourierPilotCircleTree003492
