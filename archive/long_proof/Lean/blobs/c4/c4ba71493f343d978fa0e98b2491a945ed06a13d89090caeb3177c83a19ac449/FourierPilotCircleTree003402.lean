import FourierPilotCircleTree003403
import FourierPilotCircleTree003406
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003402
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![95, 38, 63, 63, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003403.state FourierPilotCircleTree003406.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003403.covered FourierPilotCircleTree003406.covered
#print axioms covered
end FourierPilotCircleTree003402
