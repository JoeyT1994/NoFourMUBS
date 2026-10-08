import FourierPilotCircleTree003895
import FourierPilotCircleTree003912
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003894
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![55, 40, 16, 17, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003895.state FourierPilotCircleTree003912.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003895.covered FourierPilotCircleTree003912.covered
#print axioms covered
end FourierPilotCircleTree003894
