import FourierPilotCircleTree003094
import FourierPilotCircleTree003095
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003093
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![14, 9, 7, 12, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003094.state FourierPilotCircleTree003095.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003094.covered FourierPilotCircleTree003095.covered
#print axioms covered
end FourierPilotCircleTree003093
