import FourierPilotCircleTree003004
import FourierPilotCircleTree003077
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003003
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![3, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003004.state FourierPilotCircleTree003077.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003004.covered FourierPilotCircleTree003077.covered
#print axioms covered
end FourierPilotCircleTree003003
