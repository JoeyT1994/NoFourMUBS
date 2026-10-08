import FourierPilotCircleTree003401
import FourierPilotCircleTree003402
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003400
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![47, 38, 63, 63, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003401.state FourierPilotCircleTree003402.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003401.covered FourierPilotCircleTree003402.covered
#print axioms covered
end FourierPilotCircleTree003400
