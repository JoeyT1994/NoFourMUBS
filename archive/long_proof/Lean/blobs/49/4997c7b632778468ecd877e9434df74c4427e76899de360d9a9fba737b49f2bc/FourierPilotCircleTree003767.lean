import FourierPilotCircleTree003768
import FourierPilotCircleTree003769
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003767
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![18, 14, 15, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003768.state FourierPilotCircleTree003769.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003768.covered FourierPilotCircleTree003769.covered
#print axioms covered
end FourierPilotCircleTree003767
