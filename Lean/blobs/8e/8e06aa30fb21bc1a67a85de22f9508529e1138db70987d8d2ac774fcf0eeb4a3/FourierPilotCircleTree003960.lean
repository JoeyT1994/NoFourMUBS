import FourierPilotCircleTree003961
import FourierPilotCircleTree003962
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003960
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![14, 9, 8, 12, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003961.state FourierPilotCircleTree003962.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003961.covered FourierPilotCircleTree003962.covered
#print axioms covered
end FourierPilotCircleTree003960
